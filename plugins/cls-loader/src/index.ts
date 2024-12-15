/* eslint-disable no-console, sort-keys */

import fs from "fs";
import path from "path";
import type {
  PropVersionDocs,
  PropVersionMetadata,
} from "@docusaurus/plugin-content-docs";
import { CURRENT_VERSION_NAME } from "@docusaurus/plugin-content-docs/server";
import type { LoadContext, Plugin, PluginContentLoadedActions, RouteConfig } from "@docusaurus/types";
import { DEFAULT_PLUGIN_ID, normalizeUrl } from "@docusaurus/utils";
import { generateJson } from "./plugin/data";
import { extractSidebar } from "./plugin/sidebar";
import {
  getVersionedDocsDirPath,
  readVersionsMetadata,
} from "./plugin/version";
import type {
  CLSOptions,
  CLSLoaderOptions,
  LoadedContent,
  PackageReflectionGroup,
  CLSDeclarationReflection,
  VersionMetadata,
  ClassReflection,
} from "./types";
import { getClassesFromFolder, generateClassDocs } from "./plugin/classes";

const DEFAULT_OPTIONS: Required<CLSLoaderOptions> = {
  banner: "",
  breadcrumbs: true,
  disableVersioning: false,
  debug: false,
  exclude: [],
  id: DEFAULT_PLUGIN_ID,
  includeCurrentVersion: true,
  lastVersion: "",
  onlyIncludeVersions: [],
  packages: [],
  projectRoot: "ref",
  sortPackages: (a, d) => a.packageName.localeCompare(d.packageName),
  sortSidebar: (a, d) => a.localeCompare(d),
  routeBasePath: "ref",
  remarkPlugins: [],
  rehypePlugins: [],
  versions: {},
};

async function importFile<T>(file: string): Promise<T> {
  const data = await fs.promises.readFile(file, "utf8");

  if (file.endsWith(".json")) {
    return JSON.parse(data) as T;
  }

  return data as unknown as T;
}

export default function clsLoaderPlugin(
  context: LoadContext,
  pluginOptions: CLSLoaderOptions
): Plugin<LoadedContent> {
  const options: Required<CLSLoaderOptions> = {
    ...DEFAULT_OPTIONS,
    ...pluginOptions,
  };
  const { banner, breadcrumbs, id: pluginId, projectRoot } = options;
  const versionsMetadata = readVersionsMetadata(context, options);
  const versionsDocsDir = getVersionedDocsDirPath(context.siteDir, pluginId);

  return {
    name: "cls-loader",

    async loadContent() {
      const versionsMetadataList = await versionsMetadata;

      return {
        loadedVersions: await Promise.all(
          versionsMetadataList.map(async (metadata: VersionMetadata) => {
            const classes = await getClassesFromFolder(
              path.join(options.projectRoot, metadata.versionLabel),
              metadata.versionPath + "/",
              context.generatedFilesDir,
            );

            // Generate sidebars (this runs before the main sidebar is loaded)
            const sidebars = extractSidebar(
              classes,
              options.sortSidebar
            );

            // await fs.promises.writeFile(
            //   path.join(
            //     context.generatedFilesDir,
            //     `cls-loader-${pluginId}-${metadata.versionName}.js`
            //   ),
            //   `module.exports = ${JSON.stringify(sidebars, null, 2)};`
            // );

            // await fs.promises.writeFile(
            //   path.join(
            //     context.generatedFilesDir,
            //     `cls-loader-${pluginId}-${metadata.versionName}.d.ts`
            //   ),
            //   `import type { SidebarConfig } from '@docusaurus/plugin-content-docs';\nexport = Array<SidebarConfig>;`
            // );

            return {
              ...metadata,
              classes,
              sidebars,
            };
          })
        ),
      };
    },

    async contentLoaded({ content, actions }) {
      if (!content) {
        return;
      }

      const docs: PropVersionDocs = {};

      // Create an index of versions for quick lookups.
      // This is hacky, but it works, so shrug.
      content.loadedVersions.forEach((loadedVersion) => {
        if (loadedVersion.versionName !== CURRENT_VERSION_NAME) {
          docs[loadedVersion.versionName] = {
            id: loadedVersion.versionPath,
            title: loadedVersion.versionLabel,
            description: loadedVersion.versionLabel,
          };
        }
      });

      const rootRoutes = await Promise.all(
        content.loadedVersions.map(async (loadedVersion) => {
          const version = loadedVersion.versionName;
          // console.log(context.generatedFilesDir)
          generateClassDocs(actions, path.join(context.generatedFilesDir, version), loadedVersion.classes);

          // Define version metadata for all pages. We need to use the same structure as
          // "docs" so that we can utilize the same React components.
          // https://github.com/facebook/docusaurus/blob/master/packages/docusaurus-plugin-content-docs/src/index.ts#L337
          const versionMetadata = await actions.createData(
            `version-${version}.json`,
            JSON.stringify({
              badge: loadedVersion.versionBadge,
              banner: loadedVersion.versionBanner,
              className: loadedVersion.versionClassName,
              docs,
              docsSidebars: { ref: loadedVersion.sidebars },
              isLast: loadedVersion.isLast,
              label: loadedVersion.versionLabel,
              noIndex: false,
              pluginId,
              version: loadedVersion.versionName,
            } satisfies PropVersionMetadata)
          );

          const classesData = await actions.createData(
            `classes-${version}.json`,
            JSON.stringify(loadedVersion.classes)
          );
          // console.log('classesData', classesData)

          const optionsData = await actions.createData(
            "options.json",
            JSON.stringify({
              banner,
              breadcrumbs,
              pluginId,
            } satisfies CLSOptions)
          );

          function createRoute(
            info: ClassReflection,
            modules?: Record<string, string>
          ): RouteConfig {
            return {
              path: info.link,
              exact: true,
              component: path.join(__dirname, "./components/RefItem.js"),
              modules,
              sidebar: "ref",
              id: info.id,
            };
          }

          function createRoutes(classes: ClassReflection[]) {
            classes.forEach((item) => {
              // console.log('item.fileContent', item.fileContent)
              if (item.isPackage) {
                createRoutes(item.items);
              } else {
                routes.push(createRoute(item, { readme: item.fileContent }));
              }
            });
          }

          const routes: RouteConfig[] = [];
          createRoutes(loadedVersion.classes);

          const indexPermalink = normalizeUrl([loadedVersion.versionPath]);

          if (loadedVersion.classes.length > 1) {
            // Only write out the ApiIndex only when we have multiple packages
            // otherwise we will have 2 top-level entries in the route entries
            routes.push({
              path: indexPermalink,
              exact: true,
              component: path.join(__dirname, "./components/RefIndex.js"),
              modules: {
                options: optionsData,
                classes: classesData,
                versionMetadata,
              },
              sidebar: "ref",
            });
          }

          // console.log("indexPermalink", indexPermalink);
          // Wrap in the `DocVersionRoot` component:
          // https://github.com/facebook/docusaurus/blob/main/packages/docusaurus-plugin-content-docs/src/routes.ts#L192
          return {
            path: indexPermalink,
            exact: false,
            component: "@theme/DocVersionRoot",
            routes: [
              {
                path: indexPermalink,
                exact: false,
                component: path.join(__dirname, "./components/RefPage.js"),
                routes,
                modules: {
                  options: optionsData,
                  classes: classesData,
                },
              },
            ],
            modules: {
              version: versionMetadata,
            },
            priority: loadedVersion.routePriority,
          };
        })
      );

      actions.addRoute({
        path: normalizeUrl([context.baseUrl, options.routeBasePath ?? "ref"]),
        exact: false,
        component: "@theme/DocsRoot",
        routes: rootRoutes,
      });
    },
  };
}