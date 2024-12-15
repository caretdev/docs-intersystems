/* eslint-disable no-param-reassign */

import "@vscode/codicons/dist/codicon.css";
import { useMemo } from "react";
import DocRoot, { type Props as DocRootProps } from "@theme/DocRoot";
import type {
  CLSOptions,
  PackageReflectionGroup,
  CLSDeclarationReflection,
  CLSDeclarationReflectionMap,
  CLSReflection,
  ClassReflection,
} from "../types";
import { RefDataContext } from "./RefDataContext";

function mapClassesToReflection(
  classes: ClassReflection[]
): CLSDeclarationReflectionMap {
  let map: CLSDeclarationReflectionMap = {};

  classes.forEach((item) => {
    if (item.isPackage) {
      map = {
        ...map,
        ...mapClassesToReflection(item.items),
      };
    } else {
      map[item.id] = item;
    }
  });

  return map;
}

export interface RefPageProps extends DocRootProps {
  options: CLSOptions;
  classes: ClassReflection[];
}

function RefPage({ options, classes, ...props }: RefPageProps) {
  const reflections = mapClassesToReflection(classes);
  const value = useMemo(() => ({ options, reflections }), [options, classes]);

  return (
    <RefDataContext.Provider value={value}>
      <div className="refPage">
        <DocRoot {...props} />
      </div>
    </RefDataContext.Provider>
  );
}

export default RefPage;
