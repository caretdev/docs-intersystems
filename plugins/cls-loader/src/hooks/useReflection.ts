import { useContext } from 'react';
import { RefDataContext } from '../components/RefDataContext';
import type { ClassReflection, CLSDeclarationReflectionMap } from '../types';

export function useReflection<T = ClassReflection>(
	id?: number,
	required?: boolean,
): T | null {
	const { reflections } = useContext(RefDataContext);

	if (id !== undefined && reflections[id]) {
		return reflections[id] as unknown as T;
	}

	throw new Error(`Unable to find declaration with ID ${id}`);
}

export function useRequiredReflection<T = ClassReflection>(id?: number): T {
	return useReflection<T>(id, true) as unknown as T;
}

export function useReflectionMap(): CLSDeclarationReflectionMap {
	return useContext(RefDataContext).reflections;
}

