import { createContext, useMemo, useState } from "react";
import {
  ClassReflection,
  CLSDeclarationReflectionMap,
  CLSOptions,
  TOCItem,
} from "../types";
import DocItem, { type Props as DocItemProps } from "@theme/DocItem";
import { PageMetadata } from "@docusaurus/theme-common";
import { RefDataContext } from "./RefDataContext";
import ApiItemLayout from "./RefItemLayout";
import {
  useReflectionMap,
  useRequiredReflection,
} from "../hooks/useReflection";
import { Reflection } from "./Reflection";

function extractTOC(
  item: ClassReflection,
  map: CLSDeclarationReflectionMap,
  hideInherited: boolean
): TOCItem[] {
  const toc: TOCItem[] = [];
  const mapped = new Set<string>();

  return toc;
}

export interface RefItemProps extends Pick<DocItemProps, "route"> {
  readme?: React.ComponentType;
}

export const RefOptionsContext = createContext({
  hideInherited: false,
  setHideInherited: (hideInherited: boolean) => {},
});

export default function RefItem({ readme: Readme, route }: RefItemProps) {
  // console.log('refItem:readme', Readme);
  const [hideInherited, setHideInherited] = useState(false);
  const refOptions = useMemo(
    () => ({
      hideInherited,
      setHideInherited,
    }),
    [hideInherited, setHideInherited]
  );

  const item = useRequiredReflection((route as unknown as { id: number }).id);
  const reflections = useReflectionMap();
  const toc = useMemo(
    () => extractTOC(item, reflections, hideInherited),
    [item, reflections, hideInherited]
  );

  return (
    <RefOptionsContext.Provider value={refOptions}>
      <ApiItemLayout
        heading={<></>}
        pageMetadata={
          <PageMetadata
            description={"testMetadata"}
            title={`item.name | API`}
          />
        }
        route={route}
        toc={toc}
      >
        {Readme && (
          <section className="tsd-readme">
            <Readme />
          </section>
        )}
        <Reflection reflection={item} />
      </ApiItemLayout>
    </RefOptionsContext.Provider>
  );
}
