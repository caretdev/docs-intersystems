/// SVGImageProvider
/// These utilities are built upon the java .jar libraries in the FOP distribution included
/// with modern releases of InterSystems IRIS
Class %DeepSee.Component.deepseeSvgImageProvider Extends %ZEN.ComponentEx.svgImageProvider [ System = 3 ]
{

///  This is the XML namespace used for library components.
Parameter NAMESPACE = "http://www.intersystems.com/deepsee";

Parameter DOMAIN = "%DeepSee";

Property printParameters;

/// Create a temporary SVG container in the body of the Zen component. This is used to
/// trigger the calcualation of bounding boxes of temporary elements that would not otherwise
/// be committed to the DOM.
ClientMethod createTempSvgContainer() [ Language = javascript ]
{
}

/// Return the current temporary SVG container, if it exists.
ClientMethod getTempSvgContainer() [ Language = javascript ]
{
}

/// Remove the temporary SVG container from the Zen body.
ClientMethod destroyTempSvgContainer() [ Language = javascript ]
{
}

/// Given the ID of a Zen component, attempt to extract the primary html table
/// and convert it to an SVG representation. This also supports 4-quadrant tables used
/// for some DeepSee widgets.
ClientMethod createSVGTableFromZenComponent(componentId) [ Language = javascript ]
{
}

/// - chartDocument is the document obtained using
///    %DeepSee.Component.deepseeSvgImageProvider:getSVGDOMRoot(chartSVGFrameId)
/// - legendSVG is manufactured by
///    %DeepSee.Component.deepseeSvgImageProvider:createSVGTableFromZenComponent(chartLegendId)
ClientMethod addSVGLegendToChart(chartDocument, legendSVG, legendPosition) [ Language = javascript ]
{
}

/// Pull the svg legend from the chart document
ClientMethod removeSVGLegendFromChart(chartDocument, legendGroupId, legendPosition) [ Language = javascript ]
{
}

/// Create an SVG representation of a single HTML table. These could be:<br>
/// - Components of a pivot or listing table<br>
/// - Chart legends
ClientMethod convertHTMLTableToSVG(table, defaultId) [ Language = javascript ]
{
}

/// Create and return an SVG materialization of a DeepSeeResultSet client object. The resultset is required, styling and sizing templates
/// may be included to influence cell sizes, headers, and font styling in the final SVG product.
ClientMethod createSVGTableFromResultSet(jsRS, htmlTemplateId, parms) [ Language = javascript ]
{
}

/// Given an htmlCell representing a cell of an html table, return an equivalent representation as a member of an
/// svg group.
ClientMethod convertHTMLCellToSVGRect(htmlCell, geometry) [ Language = javascript ]
{
}

/// Create a fully styled cell around a particular text. The {x,y,h,w} geometry can be supplied as
/// this is created using <var>geometry</var>.
ClientMethod createSVGTextCell(text, id, geometry, htmlStyle) [ Language = javascript ]
{
}

/// Create the specific text
ClientMethod createSVGTextNode(text, id, geometry, htmlStyle) [ Language = javascript ]
{
}

/// Return an array with the components of wrapped SVG text
ClientMethod wrapSvgText(words, id, geometry, htmlStyle) [ Language = javascript ]
{
}

/// As closely as possible copy an html css style definition to an SVG object.
/// This can sanitize the style input for compatibility printing in Batik or
/// retain more complex styling for browser display.
ClientMethod applyHTMLStyleToSVG(svgNode, htmlStyle, forBatik, suppressPadding) [ Language = javascript ]
{
}

/// Set the print parameters for reference when converting style information.
ClientMethod setPrintParameters(parms) [ Language = javascript ]
{
}

/// Get the print parameters stored in this provider.
ClientMethod getPrintParameters() [ Language = javascript ]
{
}

/// Output a text representation of a DOM subtree showing element nesting and basic
/// goemetry parameters starting from the given root node.  To dump the entire DOM
/// to the error console, pass this function document.body as the root.
ClientMethod dumpDOMTreeGeometry(root, svgGroup) [ Language = javascript ]
{
}

/// Recursive function to dump the nesting structure and base geometry of a tree of DOM nodes
///   node: the root the of the current subtree
///   level: the currnet depth of recursion
///   stem: a string of 0s and 1s used to indicate the location of leaves in the tree already encountered
///   last: a boolean flag used to tell the current node whether or not it is the last child element of its parent
///   pst: parentScrollTop offset
///   psl: parentScrollLeft offset
ClientMethod dumpDOMNodeGeometry(node, level, stem, last, pst, psl, svgGroup) [ Language = javascript ]
{
}

/// This method takes as input the filterNames and filterValues arrays that are commonly built
/// for DeepSee widgets. The array is reshaped into a table that can be digested by
/// the fo conversion utilities.
ClientMethod prepareFilterTable(filterNames, filterValues, parms) [ Language = javascript ]
{
}

/// This interprets the current page margin settings and returns the maximum
/// width available for the svg image. The value is returned in points.
ClientMethod calculateMaxImageWidth(metaDataJS) [ Language = javascript ]
{
}

/// This interprets the current page margin settings and returns the maximum
/// height available for the svg image. The value is returned in points.
ClientMethod calculateMaxImageHeight(metaDataJS) [ Language = javascript ]
{
}

/// Parse a size attribute into its value and units.
ClientMethod parseSize(size) [ Language = javascript ]
{
}

/// Given a size attribute setting, convert it to points. The size is returned in an object:<br>
///   size.value<br>
///   size.units
ClientMethod convertSizeToPoint(sizeStr) [ Language = javascript ]
{
}

/// Parse a bare css style string into an object
ClientMethod parseCssStyleString(cssString) [ Language = javascript ]
{
}

/// Get the pixels per inch
ClientMethod getPPI() [ Language = javascript ]
{
}

/// Do the work of performing the merge of two or more xsl files into a single file <var>pOutfile</var>.
/// All files must be located in the mgr/Temp directory.
/// The <var>pTargetFile</var> is the master file which will provide the page settings.
/// The argument <var>pSourceFiles</var> is a list of file names delimited by "||". The page
/// content of each of these files will be appended to the content of the <var>pTargetFile</var>
/// spearated by a page break.
ClassMethod MergeXSLFiles(pOutFile, pTargetFile, pSourceFiles, pSessionId = "") As %Status [ ZenMethod ]
{
}

/// Print SVG content using the svgImageProvider. Parameters specific to the widget type may be passed in
/// via the parms object, and those parameters will be augmented using settings common to all widgets in
/// this clientMethod.<br>
/// The target content may be looked up in the DOM using a svgFrameId, or printable content can be passed in
/// directly as svgContent.
ClientMethod printSVGContent(svgFrameId, parms, svgContent, filename) [ Internal, Language = javascript ]
{
}

/// Clip svgContent for a particular page in a multi-page pring. This will collect all pages into the
/// <var>tempFiles</var>. Upon completion of the current page this method will advance to the next page
/// and fire the method again to print the next temp document. Once the last page is reached, the method
/// to merge is fired.
/// PAGES 2-N:
/// - Advance the clipY to scroll the content under the clipPath
ClientMethod printSVGFollowingPage(parms, pageNo, clipX, clipY, tempFiles) [ Language = javascript ]
{
}

/// Perform the merge of <var>tempFiles</var> into the <var>fileName</var>. This assumes <var>tempFiles</var>
/// is an array.
ClientMethod mergeTempXSLFiles(parms, targetFileName, tempFiles) [ Language = javascript ]
{
}

/// Convert the complete XSL file to PDF and launch the viewer in a new browser tab.
/// This is a terminal method in an async execution chain.
ClientMethod producePDF(parms, fileName, outName) [ Language = javascript ]
{
}

/// Produce a standard SVG container for the printable tables which can get filled with
/// resultset content.
ClientMethod createSvgTableFrame(refId, height, width) [ Language = javascript ]
{
}

/// Create a clipPath to add to a limited copy of the svgContent that will appropriately size one page of printable content.
/// The function assumes a provided svgcontent which uses absolute positioning relative to the frame and produces a copy of the
/// content visible inside the clip window.
ClientMethod clipSvgContent(svgContent, height, width, clipTargetId, clipX, clipY) [ Language = javascript ]
{
}

}
