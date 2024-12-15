import path from 'path';
import type { ResolvedPackageConfig } from '../types';

export function joinUrl(...paths: string[]): string {
	return path.join(...paths).replace(/\\/g, '/');
}

export function getPackageSlug(
	pkgConfig: ResolvedPackageConfig,
	importPath: string,
	isSinglePackage: boolean,
): string {
	// Monorepo with 1 package has special handling
	if (isSinglePackage && pkgConfig.packageSlug !== '.') {
		return '.';
	}

	// packages/foo -> foo
	const slug = pkgConfig.packageSlug ?? path.basename(pkgConfig.packagePath);

	// bar/baz -> bar-baz
	const importName = importPath.replace(/\\/g, '-');

	if (importName === 'index') {
		return slug;
	}

	return `${slug}-${importName}`;
}
