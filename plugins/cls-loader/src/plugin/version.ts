// BASED ON: https://github.com/facebook/docusaurus/blob/main/packages/docusaurus-plugin-content-docs/src/versions.ts

import { readdir } from 'fs/promises';
import path from 'path';
import type { PluginOptions as DocusaurusNativePluginOptions } from '@docusaurus/plugin-content-docs';
import {
	CURRENT_VERSION_NAME,
	filterVersions,
	getDefaultVersionBanner,
	readVersionNames,
	VERSIONED_DOCS_DIR,
} from '@docusaurus/plugin-content-docs/server';
import type { LoadContext } from '@docusaurus/types';
import { DEFAULT_PLUGIN_ID, normalizeUrl } from '@docusaurus/utils';
import type { CLSLoaderOptions, VersionMetadata } from '../types';

type PluginOptions = CLSLoaderOptions;

export function getVersionedDocsDirPath(siteDir: string, pluginId: string): string {
	return path.join(
		siteDir,
		pluginId === DEFAULT_PLUGIN_ID ? VERSIONED_DOCS_DIR : `${pluginId}_${VERSIONED_DOCS_DIR}`,
	);
}

function getDefaultLastVersionName(versionNames: string[]): string {
	if (versionNames.length === 1) {
		return versionNames[0]!;
	}

	return versionNames.find((versionName) => versionName !== CURRENT_VERSION_NAME) ?? '';
}

function createVersionMetadata({
	versionName,
	versionNames,
	lastVersionName,
	context,
	options,
}: {
	versionName: string;
	versionNames: string[];
	lastVersionName: string;
	context: LoadContext;
	options: PluginOptions;
}): VersionMetadata {
	const isLast = versionName === lastVersionName;
	const versionOptions = options.versions[versionName] ?? {};
	const versionLabel =
		versionOptions.label ?? versionName === CURRENT_VERSION_NAME ? 'Next' : versionName;
	let versionPathPart =
		versionOptions.path ?? versionName === CURRENT_VERSION_NAME ? 'next' : versionName;

	if (isLast) {
		versionPathPart = '';
	}

	const versionPath = normalizeUrl([
		context.siteConfig.baseUrl,
		options.routeBasePath ?? 'ref',
		versionPathPart,
	]);

	return {
		isLast,
		routePriority: versionPathPart === '' ? -1 : undefined,
		versionBadge: versionOptions?.badge ?? versionNames.length !== 1,
		versionBanner: null,
		// versionBanner: getDefaultVersionBanner({
		// 	context,
		// 	lastVersionName,
		// 	// @ts-expect-error Ignore internal options
		// 	options,
		// 	versionName,
		// 	versionNames,
		// }),
		versionClassName: versionOptions?.className ?? `api-version-${versionName}`,
		versionLabel,
		versionName: isLast ? CURRENT_VERSION_NAME : versionName,
		versionPath,
	};
}

const getDirectories = async source =>
	(await readdir(source, { withFileTypes: true }))
		.filter(dirent => dirent.isDirectory())
		.map(dirent => dirent.name)

export async function readVersionsMetadata(
	context: LoadContext,
	options: CLSLoaderOptions,
): Promise<VersionMetadata[]> {

	/**
	 {
    isLast: true,
    routePriority: -1,
    versionBadge: false,
    versionBanner: null,
    versionClassName: 'api-version-current',
    versionLabel: 'Next',
    versionName: 'current',
    versionPath: '/ref'
  }
	 */

	const versionNames = await getDirectories(options.projectRoot);
	const lastVersionName = versionNames[versionNames.length - 1];

	return versionNames.map((versionName) =>
		createVersionMetadata({
			context,
			lastVersionName,
			options,
			versionName,
			versionNames,
		}),
	);
}
