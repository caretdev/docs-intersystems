import { createContext } from 'react';
import type { CLSOptions, CLSDeclarationReflectionMap } from '../types';

export const RefDataContext = createContext<{
	options: CLSOptions;
	reflections: CLSDeclarationReflectionMap;
}>({
	options: {
		banner: '',
		breadcrumbs: false,
		pluginId: 'default',
	},
	reflections: {},
});
