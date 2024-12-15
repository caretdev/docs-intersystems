import { useContext } from 'react';
import { RefDataContext } from '../components/RefDataContext';

export function useBreadcrumbs(): boolean {
	return useContext(RefDataContext).options.breadcrumbs;
}
