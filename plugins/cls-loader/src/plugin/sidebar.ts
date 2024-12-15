import { normalizeUrl } from "@docusaurus/utils";
import type {
  CLSLoaderOptions,
  PackageReflectionGroup,
  SidebarItem,
  CLSDeclarationReflection,
  CLSDeclarationReflectionMap,
  ClassReflection,
} from "../types";

export function extractSidebar(
  classes: ClassReflection[],
  sortSidebar: NonNullable<CLSLoaderOptions["sortSidebar"]>
): SidebarItem[] {
  if (classes.length === 0) {
    return [];
  }
  const items: SidebarItem[] = classes.map((item) => {
    if (!item.isPackage) {
      // console.log(item)
      return {
        type: "link",
        href: item.link,
        label: item.name,
      };
    }

    let subItems: SidebarItem[] = extractSidebar(
      item.items,
      sortSidebar
    );
    // subItems.unshift({
    //   href: "#",
    //   label: "Overview",
    //   type: "link",
    // });
    return {
      collapsed: true,
      collapsible: true,
      items: subItems,
      label: item.name,
      type: "category",
      link: {
        type: 'link',
        href: 'test',
      },
    } as const;
  });

  const sidebar = items.filter((item) => "items" in item && items.length > 0);

  // console.log("sidebar", JSON.stringify(sidebar, null, 2));

  return items;
}
