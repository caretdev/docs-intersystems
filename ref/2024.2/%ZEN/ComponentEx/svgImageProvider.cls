/// SVGImageProvider
/// These utilities are built upon the java .jar libraries in the FOP distribution included
/// with modern releases of InterSystems IRIS
Class %ZEN.ComponentEx.svgImageProvider Extends %ZEN.Component.component [ Deprecated, System = 3 ]
{

Parameter INCLUDEFILES = "zenCSLM.js";

/// This class does not project HTML into its containing document
Method %DrawHTML()
{
}

/// Return the temp directory for this system.
ClassMethod GetSystemTempDir() As %String
{
}

/// Return a random and unique name in the given directory with an 'svg' extention for
/// the creation of temp files during processing
ClassMethod GenerateRootName(dir As %String) As %String [ ZenMethod ]
{
}

/// Given a user specified file name clip it to ensure that it only refers to
/// files in the mgr/temp space
ClassMethod ScopeFileName(rawName As %String) As %String [ ZenMethod ]
{
}

ClassMethod ConvertXSLToPDF(pInFile As %String, pOutFile As %String) [ ZenMethod ]
{
}

/// Mechanism for receiving fragmants of large data streams headed upstream from client
/// to server.  This work in conjunction with the saveToServer() method.
ClassMethod ReceiveFragment(outputFile As %String, src As %ZEN.proxyObject) As %Status [ ZenMethod ]
{
}

/// Remove a file from the mgr/Temp directory
ClassMethod RemoveFile(pFileName) As %Status [ ZenMethod ]
{
}

/// Client-side utility to send large data streams up to the server for external file storage
/// Normally small data streams can simply be sent up to the host using simple POST requests
/// but we have encountered issues with data loss using very large packets.  To avoid
/// this issue, this method breaks large data streams into universally 'safe' packet lengths
/// and streams the parts up to the server where they are reassembled in the external file
/// with the given fileName
ClientMethod saveToServer(src, fileName) [ Language = javascript ]
{
}

/// Given an SVG DOM and (optional) introduction and coda strings containing SVG
/// code snippets, walk the DOM extracting relavent rendering information and
/// store the result in an array of strings
ClientMethod extractSVGSource(svg, intro, coda) [ Language = javascript ]
{
}

/// Given an SVG DOM and (optional) introduction and coda strings containing SVG
/// code snippets, walk the DOM extracting relavent rendering information and
/// store the result in an array of strings
ClientMethod extractXSLFOSource(svg, intro, coda, maxWidth, maxHeight) [ Language = javascript ]
{
}

/// Given an SVG DOM and (optional) introduction and coda strings containing SVG
/// code snippets, walk the DOM extracting relavent rendering information and
/// return the result in one big string.
ClientMethod saveDOMToSVGStream(svg, intro, coda) [ Language = javascript ]
{
}

/// Given an SVG DOM and (optional) introduction and coda strings containing SVG
/// code snippets, walk the DOM extracting FO rendering information and
/// return the result in one big string.
ClientMethod saveDOMToXSLFOStream(svg, intro, coda) [ Language = javascript ]
{
}

/// Given an SVG DOM, the name of a server side file to create/overwrite, and (optional)
/// introduction and coda strings containing SVG code snippets, walk the DOM extracting
/// relavent rendering information and store the result in a stand-alone file on the server.
ClientMethod saveDOMToSVGFile(svg, fileName, intro, coda) [ Language = javascript ]
{
}

/// Given an SVG DOM, the name of a server side file to create/overwrite, and (optional)
/// introduction and coda strings containing SVG code snippets, walk the DOM extracting
/// XSLFO rendering information and store the result in a stand-alone file on the server.
ClientMethod saveDOMToXSLFOFile(svg, fileName, intro, coda) [ Language = javascript ]
{
}

/// Return a javascript object that contains the various default values
/// for page set-up and meta data rendering.  Users can get this object,
/// modify its values as desired and then pass it to the actual renderer
/// methods
ClientMethod getPageSetupDefaults() [ Language = javascript ]
{
}

/// Set up a default page setup object, incorporating user
/// overrides, if defined
ClientMethod reconcileDefaults(metaDataJS) [ Language = javascript ]
{
}

/// Given an SVG DOM, the name of a server side file to create/overwrite, and (optional)
/// introduction and coda strings containing SVG code snippets, walk the DOM extracting
/// XSLFO rendering information and store the result as a full XSL-FO document on the server.
ClientMethod saveDOMToXSLFile(svg, metaDataJS) [ Language = javascript ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod makeSVGFileName(name) [ Language = javascript ]
{
}

/// Given some form of zen SVGComponent, return a pointer to the root of
/// the embedded SVG document model
ClientMethod getSVGDOMRoot(image) [ Language = javascript ]
{
}

ClientMethod saveToSVGFile(image, name, intro, coda) [ Language = javascript ]
{
}

ClientMethod saveToXSLFOSnippet(image, name, intro, coda) [ Language = javascript ]
{
}

ClientMethod saveToXSLFile(image, metaDataJS) [ Language = javascript ]
{
}

/// Quick check to test for embedded whitespace and control characters
ClientMethod isWhiteSpace(str) [ Language = javascript ]
{
}

/// Given an element, an active SVG DOM, a syntax buffer, and optional introduction and coda
/// strings, recursively extract all of the descendant node information from the DOM and copy
/// it to the syntax buffer adding appropriate lexical and syntactic elements as needed.<br/>
/// If intro and coda values have been provided, inject the contents of these strings into the
/// syntax buffer immediately after the opening of the first encountered <svg> tag and immediately
/// before the close of that same tag, respectively.
ClientMethod dumpSVGNode(e, svgDoc, src, intro, coda, NSPrefix, maxWidth, maxHeight) [ Language = javascript ]
{
}

/// Given an active SVG DOM and a syntax buffer, extract all embedded stylesheets and
/// copy them to the buffer adding appropriate lexical and syntactic elements as needed
ClientMethod dumpSVGStyle(svgDoc, src, NSPrefix) [ Language = javascript ]
{
}

ClientMethod buildFOStyleString(jsDesc) [ Language = javascript ]
{
}

ClientMethod buildFOBlock(jsDesc) [ Language = javascript ]
{
}

ClientMethod buildFOTable(jsDesc) [ Language = javascript ]
{
}

}
