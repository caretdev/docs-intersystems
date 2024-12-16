import { useEffect } from 'react';
import Heading from '@theme/Heading';
import Link from '@docusaurus/Link';
import type { PropVersionMetadata } from '@docusaurus/plugin-content-docs';
import type { GlobalVersion } from '@docusaurus/plugin-content-docs/client';
import { useDocsPreferredVersion, useDocsVersion } from '@docusaurus/plugin-content-docs/client';
import { Footer } from './Footer';
import type { Props as DocItemProps } from '@theme/DocItem';
import type { ClassReflection, CLSOptions, PackageReflectionGroup } from '../types';


export interface RefIndexProps extends Pick<DocItemProps, 'route'> {
	history: {
		location: { pathname: string };
		replace: (path: string) => void;
	};
	options: CLSOptions;
	classes: ClassReflection[];
}

function addVersionToUrl(
	url: string,
	latestVersion: PropVersionMetadata,
	preferredVersion: GlobalVersion | null | undefined,
) {
	if (
		!url.match(/api\/([\d.]+)/) &&
		!url.includes('api/next') &&
		preferredVersion &&
		preferredVersion.name !== latestVersion.version
	) {
		const version = preferredVersion.name === 'current' ? 'next' : preferredVersion.name;

		if (url.endsWith('/api')) {
			return `${url}/${version}`;
		}

		return url.replace('/api/', `/api/${version}/`);
	}

	return url;
}


export default function RefIndex({ options, classes, history }: RefIndexProps) {
	const latestVersion = useDocsVersion();
	const { preferredVersion } = useDocsPreferredVersion(latestVersion.pluginId);

	useEffect(() => {
		// // Redirect to package when only 1
		// if (classes.length === 1) {
		// 	history.replace(
		// 		addVersionToUrl(
		// 			classes[0].entryPoints[0].reflection.permalink,
		// 			latestVersion,
		// 			preferredVersion,
		// 		),
		// 	);

		// 	// Redirect to preferred version
		// } else if (preferredVersion) {
		// 	history.replace(addVersionToUrl(history.location.pathname, latestVersion, preferredVersion));
		// }
	}, [classes, history, latestVersion, preferredVersion]);

	return (
		<div className="row">
			<div className="col refItemCol">
				{options.banner && (
					<div className="alert alert--info margin-bottom--md" role="alert">
						{/* eslint-disable-next-line react/no-danger, react-perf/jsx-no-new-object-as-prop */}
						<div dangerouslySetInnerHTML={{ __html: options.banner }} />
					</div>
				)}

				{/* <VersionBanner /> */}

				<div className="refItemContainer">
					<article>
						<div className="markdown">
							<header>
								<Heading as="h1">Welcome to the Class Reference</Heading>
							</header>

							{/* <section className="tsd-panel">
								<h3 className="tsd-panel-header">Packages</h3>
								<div className="tsd-panel-content">
									<ul className="tsd-index-list">
										{classes?.map((item) => (
											<li key={item.name} className="tsd-truncate">
												<Link
													className="tsd-kind-icon"
													to="test"
												>
													<span>{item.name}</span>
												</Link>
											</li>
										))}
									</ul>
								</div>
							</section> */}
						</div>

						<Footer />
					</article>
				</div>
			</div>
		</div>
	);
}
