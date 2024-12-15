import type { MDXPlugin } from "@docusaurus/mdx-loader";
import type {
  PropSidebarItem,
  VersionBanner,
  VersionsOptions,
} from "@docusaurus/plugin-content-docs";

export type { VersionBanner };

export interface CLSLoaderOptions
  extends Omit<VersionsOptions, "disableVersioning" | "includeCurrentVersion"> {
  banner?: string;
  breadcrumbs?: boolean;
  debug?: boolean;
  exclude?: string[];
  id?: string;
  packages: (PackageConfig | string)[];
  projectRoot: string;
  sortPackages?: (
    a: PackageReflectionGroup,
    d: PackageReflectionGroup
  ) => number;
  sortSidebar?: (a: string, d: string) => number;

  remarkPlugins: MDXPlugin[];
  rehypePlugins: MDXPlugin[];

  // Versioning, based on Docusaurus
  disableVersioning?: boolean;
  includeCurrentVersion?: boolean;
  routeBasePath?: string;
}

// CONFIG

export interface PackageEntryConfig {
  label: string;
  path: string;
}

export interface PackageConfig {
  path: string; // Folder relative to project root
  entry?: Record<string, PackageEntryConfig | string> | string;
  slug?: string;
}

export interface ResolvedPackageConfig {
  entryPoints: Record<string, PackageEntryConfig>;
  packageRoot: string;
  packagePath: string;
  packageSlug: string;
  packageName: string;
  packageVersion: string;
}

// VERSIONING

export interface VersionMetadata {
  versionName: string; // 1.0.0
  versionLabel: string; // Version 1.0.0
  versionPath: string; // /baseUrl/api/1.0.0
  versionBadge: boolean;
  versionBanner: VersionBanner | null;
  versionClassName: string;
  isLast: boolean;
  routePriority: number | undefined; // -1 for the latest
}

export interface LoadedVersion extends VersionMetadata {
  // mainDocId: string;
  classes: ClassReflection[];
  sidebars: SidebarItem[];
}

export interface LoadedContent {
  loadedVersions: LoadedVersion[];
}

// SIDEBAR / UI

export type SidebarItem = PropSidebarItem;

export interface CLSOptions {
  banner: string;
  breadcrumbs: boolean;
  pluginId: string;
}

export interface TOCItem {
  readonly value: string;
  readonly id: string;
  readonly level: number;
}

// REFLECTIONS

export interface PackageReflectionGroupEntry {
  index: boolean;
  label: string;
  reflection: CLSDeclarationReflection;
  urlSlug: string;
}

export interface PackageReflectionGroup {
  packageName: string;
}

export interface ApiMetadata {
  id: number;
  name: string;
  permalink: string;
}

export interface CLSReflection extends ApiMetadata {
  parentId?: number;
}

export interface CLSDeclarationReflection extends ApiMetadata {
  children?: CLSDeclarationReflection[];
}

export type CLSDeclarationReflectionMap = Record<
  number,
  CLSDeclarationReflection
>;

export interface ClassReflection {
  id: string;
  name: string;
  fullName: string;
  fullPath: string;
  isPackage: boolean;
  fileContent?: string;
  link?: string;
  items?: ClassReflection[];
}

export type ClassReflectionMap = Record<number, ClassReflection>;