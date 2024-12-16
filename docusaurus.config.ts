import * as path from "path";
import { themes as prismThemes } from "prism-react-renderer";
import type { Config } from "@docusaurus/types";
import type * as Preset from "@docusaurus/preset-classic";
import sidebars from "./sidebars";
import versions from "./versions.json";

// This runs in Node.js - Don't use client-side code here (browser APIs, JSX...)

const config: Config = {
  title: "InterSystems Documentation",
  tagline: "",
  favicon: "img/favicon.ico",

  url: "https://caretdev.github.io",
  // baseUrl: "/docs-intersystems/",
  baseUrl: "/",

  organizationName: "caretdev",
  projectName: "docs-intersystems",

  onBrokenLinks: "throw",
  onBrokenMarkdownLinks: "warn",

  i18n: {
    defaultLocale: "en",
    locales: ["en"],
  },

  plugins: [
    [
      "cls-loader",
      {
        projectRoot: path.join(__dirname, "ref"),
      },
    ],
  ],

  presets: [
    // ["classic", {}],
		[
			'@docusaurus/preset-classic',
			{
				docs: {
					sidebarPath: require.resolve('./sidebars.js'),
				},
				theme: {
					customCss: require.resolve('./src/css/custom.css'),
				},
			},
		],
  ],
  markdown: {
    parseFrontMatter: async (params) => {
      // Reuse the default parser
      const result = await params.defaultParseFrontMatter(params);

      result.frontMatter.pagination_prev = null;
      result.frontMatter.pagination_next = null;

      return result;
    },
  },

  themeConfig: {
    // Replace with your project's social card
    image: "img/docusaurus-social-card.jpg",
    navbar: {
      title: "InterSystems Documentation",
      logo: {
        alt: "InterSystems Docs Logo",
        src: "img/intersystems-docs.svg",
      },
      items: [
        {
          type: 'dropdown',
          to: 'ref',
          label: 'Class Reference',
          position: 'left',
          items: [
            ...versions.map((version, i) => ({
              label: version,
              to: i === 0 ? 'ref' : `ref/${version}`,
            })),
          ],
        },
        {
          href: "https://github.com/caretdev/docs-intersystems",
          label: "GitHub",
          position: "right",
        },
      ],
    },
    prism: {
      theme: prismThemes.github,
      darkTheme: prismThemes.dracula,
    },
  } satisfies Preset.ThemeConfig,
};

export default config;
