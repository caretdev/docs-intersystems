// This file is based on `DocItem` upstream, but since we aren't using markdown,
// we had to duplicate it. Keep this file in sync as much as possible!
// https://github.com/facebook/docusaurus/blob/main/packages/docusaurus-theme-classic/src/theme/DocItem/index.tsx

import type { PropNavigation } from '@docusaurus/plugin-content-docs';
import { ThemeClassNames, useWindowSize } from '@docusaurus/theme-common';
import DocBreadcrumbs from '@theme/DocBreadcrumbs';
import type { Props as DocItemProps } from '@theme/DocItem';
import Heading from '@theme/Heading';
import MDXContent from '@theme/MDXContent';
import TOC from '@theme/TOC';
import TOCCollapsible from '@theme/TOCCollapsible';
import { useBreadcrumbs } from '../hooks/useBreadcrumbs';
import type { TOCItem } from '../types';
import RefOptionsLayout from './RefOptionsLayout'
import { Footer } from './Footer';

export interface RefItemLayoutProps extends Pick<DocItemProps, 'route'> {
	children: React.ReactNode;
	heading: React.ReactNode;
	toc: readonly TOCItem[];
	pageMetadata?: React.ReactNode;
	pagingMetadata?: PropNavigation;
}

export default function RefItemLayout({
	children,
	heading,
	pageMetadata,
	pagingMetadata,
	toc,
}: RefItemLayoutProps) {
	const windowSize = useWindowSize();
	const breadcrumbs = useBreadcrumbs();

	// Table of contents
	const canRenderTOC = toc.length > 0;
	const renderTocDesktop = canRenderTOC && (windowSize === 'desktop' || windowSize === 'ssr');

	return (
		<>
			{pageMetadata}

			<div className="row">
				<div className="col refItemCol">

					<div className="refItemContainer">
						<article>
							{/* {breadcrumbs && <DocBreadcrumbs />} */}

							{canRenderTOC && (
								<>
									{!renderTocDesktop && <RefOptionsLayout className="tsd-ref-options-mobile" />}
									<TOCCollapsible
										className={`${ThemeClassNames.docs.docTocMobile ?? ''} refTocMobile`}
										maxHeadingLevel={6}
										minHeadingLevel={1}
										toc={toc}
									/>
								</>
							)}

							<div className={`${ThemeClassNames.docs.docMarkdown ?? ''} markdown`}>
								<header>
									<Heading as="h1">{heading}</Heading>
								</header>

								<MDXContent>{children}</MDXContent>
							</div>

							<Footer />
						</article>
					</div>
				</div>

				{renderTocDesktop && (
					<div className="col col--3">
						<RefOptionsLayout className="tsd-ref-options" />
						<TOC
							className={ThemeClassNames.docs.docTocDesktop}
							maxHeadingLevel={6}
							minHeadingLevel={1}
							toc={toc}
						/>
					</div>
				)}
			</div>
		</>
	);
}
