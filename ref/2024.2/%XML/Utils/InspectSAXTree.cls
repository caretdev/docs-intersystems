/// Support Utility to review contents of SAXTree independently from XML Writer functionality.<br/>
/// Provides convenience methods ParseFile, ParseString, ParseStream and ParseXData for common support situations.
/// Alternatively the method "OutputTree" can be called directly for additional scenarios.
Class %XML.Utils.InspectSAXTree
{

Parameter Indent = 1;

/// Display name used to indicate an element type
Parameter lblElement = "e";

/// Display name used to indicate an attribute type
Parameter lblAttribute = "a";

/// Display name used to indicate a whitespace node type
Parameter lblWhiteSpaceNode = "wsn";

/// Display name used to indicate a text node type
Parameter lblTextNode = "txt";

/// Display name used to indicate a raw node type
Parameter lblRAWNode = "raw";

Parameter NewLine = {$C(13,10)};

Parameter pad = "                                                                                    ";

/// xmlGbl = %SAX variable passed by reference
/// Support user entry point
/// Parameters:<br/>
/// <ul>
/// <li><var>xmlGbl</var> - Optional. The name of the local global being used to hold a SAX tree.<br/>
/// If not supplied this will default to %SAX global
/// </li>
/// <li><var>docSequence</var> - Optional. The %SAX global (or alternative global) first key is an incrementing sequence for each XML document deserialized into XML Nodes.
/// ie: %SAX(docSequence)<br/>
/// If not supplied the highest document id incremented is assumed to be the current one of interest. </li>
/// <li><var>nodeId</var> - Optional. The starting point in the SAX Tree to start analysis from. Typically would want to walk the whole document tree from 0.</li>
/// <li><var>outstream</var> - Optional. If not supplied when the tool is run it will output to default device, for example the window of an interactive terminal session.
/// Alternatively an open file stream can be passed in and output will be written to the file.
/// </li>
/// <li>dumpBinary - Optional. Some additional presentation of binary SAX tree portion that may be of value.</li>
/// </ul>
/// Example to output to terminal session (or other default device):
/// <example>
///
///
/// do ##class(Util.SAXDebugWriter).OutputTree()
/// </example>
/// Example to output to a file:
/// <example>
/// Set stream=##class(%FileBinaryStream).%New()
/// 	set stream.Filename="c:\tmp\SAXDebug"_msgId_"LoadedSimple.txt"
/// 	do ##class(Util.SAXDebugWriter).OutputTree(,simpleDocId,,.stream)
/// 	do stream.%Save()
/// 	do stream.%Close()
/// </example>
ClassMethod OutputTree(ByRef xmlGbl = "", docSequence = 0, nodeId = 0, outstream As %CharacterStream = {$$$NULLOREF}, dumpBinary = 0) [ PublicList = %SAX ]
{
}

/// Optional binary tree walking
/// Normal operation would be to invoke OutputTree method instead.
/// Parameters:<br/>
/// <ul>
/// <li><var>xmlGbl</var> - Required. Pass local global by reference, being used to hold a SAX tree. eg: .%SAX<br/>
/// </li>
/// <li><var>docId</var> - Required. The %SAX global (or alternative global) first key is an incrementing sequence for each XML document deserialized into XML Nodes.<br/>
/// ie: for %SAX(docId) would pass first key docId</li>
/// <li><var>outstream</var> - Optional. If not supplied when the tool is run it will output to default device, for example the window of an interactive terminal session.
/// Alternatively an open file stream can be passed in and output will be written to the file.</li>
/// </ul>
ClassMethod DumpBinaryTree(ByRef xmlGbl = "", docId = "", outstream As %Stream.Object = {$$$NULLOREF})
{
}

/// Currently only working for %SAX
ClassMethod DumpBinaryNode(ByRef xmlGbl = "", docId = 1, nodeId = 0, outstream As %Stream.Object) [ Internal ]
{
}

ClassMethod PadTxt(val, pad) [ CodeMode = expression, Internal ]
{
}

/// Recursive output nodes
/// Repurpose of %XML.Writer method implementation for TreeInternal
ClassMethod TreeInternal(DocId, NodeId, baseChildlist, indent = -2, outstream As %Stream.Object) [ Internal, PublicList = (xmlGbl, %SAX) ]
{
}

/// Covert non-printable and formating whitespace into ZWRITE style format<br/>
/// Allows some visibility and understanding of non-printing and formatting characters
/// <table>
/// <tr><th>Constant Value</th><th>Prints as</th></tr>
/// <tr><td>"ABC"</td><td>"ABC"</td></tr>
/// <tr><td>$C(10,13)_"ABC"</td><td>$C(10,13)_"ABC"</td></tr>
/// <tr><td>"DEF"_$C(10,13)_"ABC"</td><td>"DEF"_$C(10,13)_"ABC"</td></tr>
/// <tr><td>"DEF"_$C(1,2,3)_"G"_$C(4,5,6,7,8,9)_"ABC"</td><td>"DEF"_$C(1,2,3)_"G"_$C(4,5,6,7,8,9)_"ABC"</td></tr>
/// </table>
ClassMethod FormatText(data, empty = "<<EMPTY STRING>>") [ Internal ]
{
}

/// For a given filepath
/// Read in file as XML and output the corresponding SAX Tree structure
/// Parameters:<br/>
/// <ul>
/// <li><var>inputFilePath</var> - Required. The name of a local file containing XML.</li>
/// <li><var>outputFilePath</var> - Optional. The name of a local file containing XML.</li>
/// <li><var>dumpBinary</var> - Optional. To include additional and alternative view of content.</li>
/// </ul>
/// Example to explore an XML file and print output to default device
/// <example>
/// set tSC=##class(%XML.Utils.InspectSAXTree).ParseFile(inputFilePath)
/// do $SYSTEM.Status.DisplayError(tSC)
/// </example>
/// Example to explore an XML file and print output report to file.
/// <example>
/// set tSC=##class(%XML.Utils.InspectSAXTree).ParseFile(inputFilePath,outputFilePath)
/// do $SYSTEM.Status.DisplayError(tSC)
/// </example>
ClassMethod ParseFile(inputFilePath As %String, outputFilePath As %String = "", dumpBinary = 0) As %Status
{
}

/// For a given string containing XML.
/// Read in XML and output the corresponding SAX Tree structure
/// Parameters:<br/>
/// <ul>
/// <li><var>xmlString</var> - Required. String containing well formed XML data.</li>
/// <li><var>outputFilePath</var> - Optional. The name of a local file containing XML.</li>
/// <li><var>dumpBinary</var> - Optional. To include additional and alternative view of content.</li>
/// </ul>
/// Example to explore a string  of XML content and print output to default device
/// <example>
/// set myxmlstring="<root><test>some data</test></root"
/// set tSC=##class(%XML.Utils.InspectSAXTree).ParseString(myxmlstring)
/// do $SYSTEM.Status.DisplayError(tSC)
/// </example>
/// Example to explore a string  of XML content and print output report to file.
/// <example>
/// set tSC=##class(%XML.Utils.InspectSAXTree).ParseStream(myxmlstream,outputFilePath)
/// do $SYSTEM.Status.DisplayError(tSC)
/// </example>
ClassMethod ParseString(xmlString As %String = "", outputFilePath As %String = "", dumpBinary As %Boolean = 0) As %Status
{
}

/// For a given stream containing XML.
/// Read in XML and output the corresponding SAX Tree structure
/// Parameters:<br/>
/// <ul>
/// <li><var>xmlstream</var> - Required. Stream containing well formed XML data.</li>
/// <li><var>outputFilePath</var> - Optional. The name of a local file containing XML.</li>
/// <li><var>dumpBinary</var> - Optional. To include additional and alternative view of content.</li>
/// </ul>
/// Example to explore a stream  of XML content and print output to default device
/// <example>
/// set tSC=##class(%XML.Utils.InspectSAXTree).ParseStream(myxmlstream)
/// do $SYSTEM.Status.DisplayError(tSC)
/// </example>
/// Example to explore an XData block and print output report to file.
/// <example>
/// set tSC=##class(%XML.Utils.InspectSAXTree).ParseStream(myxmlstream,outputFilePath)
/// do $SYSTEM.Status.DisplayError(tSC)
/// </example>
ClassMethod ParseStream(xmlstream, outputFilePath As %String = "", dumpBinary As %Boolean = 0) As %Status
{
}

/// For a given Class XData Block.
/// Read in XData content as XML and output the corresponding SAX Tree structure
/// Parameters:<br/>
/// <ul>
/// <li><var>xdataclass</var> - Required. Compiled classname with XData to review.</li>
/// <li><var>xdataname</var> - Required. The name of XData block to review.</li>
/// <li><var>outputFilePath</var> - Optional. The name of a local file containing XML.</li>
/// <li><var>dumpBinary</var> - Optional. To include additional and alternative view of content.</li>
/// </ul>
/// Example to explore an XData block and print output to default device
/// <example>
/// set tSC=##class(%XML.Utils.InspectSAXTree).ParseXData(myclassname,xdataname)
/// do $SYSTEM.Status.DisplayError(tSC)
/// </example>
/// Example to explore an XData block and print output report to file.
/// <example>
/// set tSC=##class(%XML.Utils.InspectSAXTree).ParseXData(myclassname,xdataname,outputFilePath)
/// do $SYSTEM.Status.DisplayError(tSC)
/// </example>
ClassMethod ParseXData(xdataclass = "", xdataname = "", outputFilePath As %String = "", dumpBinary As %Boolean = 0) As %Status
{
}

}
