/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25XML.Reader">Importing XML into Objects</a>.</p>
/// <p>The sample class mentioned here (Sample.Person) is part of <a target="_top" href="https://github.com/intersystems/Samples-Data">https://github.com/intersystems/Samples-Data.</a>
/// See <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=landing+githubsamples">Downloading Samples</a>.</p>
/// XML Objects Reader class.
///
/// A usage example follows:
/// <EXAMPLE>
/// #include %occStatus
/// // Create a new XML Reader class
/// Set reader = ##class(%XML.Reader).%New()
///
/// // Begin processing of the XML input
/// Set sc=reader.OpenFile(filename)
/// If $$$ISERR(sc) Do $system.OBJ.DisplayError(sc) Quit
///
/// // Associate a class name with the XML element name
/// Do reader.Correlate("Person","Sample.Person")
///
/// // read Sample.Person objects from xml file
/// Set Count=0
/// While reader.Next(.person,.sc) {
///     Write person.Name_" imported.",!
///     Set Count=Count+1
///     Set sc=person.%Save()
///     If $$$ISERR(sc) Do $system.OBJ.DisplayError(sc) Quit
/// }
///
/// If $$$ISERR(sc) Do $system.OBJ.DisplayError(sc) Quit
///
/// Write Count_" Sample.Person instances found."
///
/// </EXAMPLE>
Class %XML.Reader Extends %RegisteredObject [ System = 2 ]
{

/// The format of the XML document: "literal", "encoded" or "encoded12".
/// This parameter may be overriden by the Open... format parameter.
Property Format As %String;

/// The runtime specification of the XMLIGNORENULL parameter to %XML.Adaptor.
/// <property>IgnoreNull</property> specifies the value of
/// XMLIGNORENULL at runtime as either 0, 1 or inputonly.
/// IgnoreNull="inputonly" is equivalent to IgnoreNull=1.
Property IgnoreNull As %String [ InitialExpression = 0 ];

/// If true (1), then only the summary fields should be imported by the %XML.Adaptor.
Property Summary As %Boolean [ InitialExpression = 0 ];

/// Checking the existence of REQUIRED properties is off by default in %XML.Reader.
/// To turn on REQUIRED property checking. set the CheckRequired property to 1 (default is 0).
Property CheckRequired As %Boolean [ InitialExpression = 0 ];

/// This property should be set to a combination of flags (see %occSAX.inc for details) if
/// the default behavior of the parser is required to be modified
Property SAXFlags As %Integer [ InitialExpression = {$$$SAXFULLDEFAULT} ];

/// The SAXMask property is kept for compatibility only.  The best mask is now computed
/// and this property ignored.
Property SAXMask As %Integer [ InitialExpression = {$$$SAXCONTENTEVENTS} ];

/// This property specifies the schema specifications that should be used when validating the
/// document. See %XML.SAX.Parser for a full description of this property.
Property SAXSchemaSpec As %String;

/// This property should be set to an instance of %XML.SAX.EntityResolver OR a user-defined
/// subclass IF the default EntityResolver is not required
Property EntityResolver As %XML.SAX.EntityResolver;

/// The name of the activated TLS/SSL configuration to use for https requests
/// by the entity resolver.
Property SSLConfiguration As %String;

/// If true (1), then any warnings from the SAX parser will be not be reported and ignored.
Property IgnoreSAXWarnings As %Boolean [ InitialExpression = 0 ];

/// If UsePPGHandler is true (1), then force document parsing to use PPG memory.
/// If UsePPGHandler is false (0), then force document parsing to use local array memory.
/// If UsePPGHandler is not set ( or = ""), then use default memory -- usually local array memory.
Property UsePPGHandler As %Boolean;

/// Current node in tree representation of XML document.
/// Note that 0 means the document itself, i.e. the parent of the root element.
Property Node As %String [ InitialExpression = 0 ];

Method NodeSet(value As %String) As %Status [ Internal ]
{
}

/// Childlist associated with current element node
Property Childlist As %String [ Internal, Private ];

/// Descriptor associated with current node
Property Descriptor As %String [ Internal, Private ];

/// NodeId of parent
Property ParentNodeId As %String [ Internal, Private ];

/// Childlist of parent
Property ParentChildlist As %String [ Internal, Private ];

/// Descriptor of parent
Property ParentDescriptor As %String [ Internal, Private ];

/// NodeisCurrent is true if the current node value has just been
/// set to the next node to process.
Property NodeIsCurrent As %Boolean [ Internal, Private ];

/// The internal format to be used for XMLImport.
/// This property is set during Open.
Property OpenFormat As %String [ Private ];

/// The %XML.Document that holds the parsed XML document.
Property Document As %XML.Document;

Method DocumentSet(document As %XML.Document) As %Status [ Internal ]
{
}

/// Flag to keep whitespace. Used only when HandlerType is set to $$$IntHandler
/// Default is true as required by XMLImport processing.
Property KeepWhitespace As %Boolean [ InitialExpression = 1, Internal ];

/// The list of nodes that have already imported with id attribute.
Property Idlist As %String [ Internal, MultiDimensional, Private ];

/// This is the class to XML element correlation. To correlate a class to an element,
/// call ..Correlate(&lt;elementname&gt;,&lt;classname&gt;). Element names are unique but you
/// can correlate more than one element to the same class. On import, if an element
/// is not correlated to a class then it will be skipped by ..Next().
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.<br><br>
Property CorrelationTable As %String [ Internal, MultiDimensional ];

/// Close and cleanup the %XML.Document.  This method is included for
/// backward compatibility.  The %XML.Document will be cleaned up
/// anyway during object cleanup.
Method Close()
{
}

/// Restart reading at the beginning of the XML document.
/// All correlations are cleared and Correlate must be called again
/// for the required elements.
Method Rewind()
{
}

/// Correlate() defines an XML Element to class correlation. Any
/// elements encountered by Next() that are in the correlation table will
/// cause the correlated class to be instantiated and its XMLImport method
/// to be called with the current XML node passed as a parameter. Further
/// examination of child nodes is skipped for correlated elements.<br><br>
/// Matching of elements is based on the element name that is specified in
/// the <var>element</var> argument.  If the <var>namespace</var> argument
/// is also specified, then the XML namespace of the element must also match.
Method Correlate(element As %String, class As %String, namespace As %String)
{
}

/// CorrelateRoot defines the root element to be correlated to the specified
/// class.  The root element when encountered by Next() will
/// cause the correlated class to be instantiated and its XMLImport method
/// to be called with the root XML node passed as a parameter. Further
/// examination of child nodes is skipped for correlated elements.
Method CorrelateRoot(class As %String)
{
}

/// Get and return the next object.<p>
/// <method>Next</method> returns 1 (true), if the next object matching one of the Correlate criteria
/// is found and successfully imported.<br>
/// <method>Next</method> returns 0 (false) and a %Status of $$$OK in sc
/// after all objects have been imported.<br>
/// <method>Next</method> returns 0 (false) and an error %Status in sc,
/// if an error has occurred importing this object.<p>
/// The <var>namespace</var> argument indicates the default namespace
/// for this XML file.
Method Next(ByRef oref As %ObjectHandle, ByRef sc As %Status, namespace As %String = "") As %Integer
{
}

/// Internal method to get the appropriate document handler base on the UsePPGHandler property.
ClassMethod GetNewDocument(usePPGHandler As %Boolean) As %XML.Document [ Internal ]
{
}

/// Import XML source from a file (method="ParseFile"),
/// stream (method="ParseStream") or string (method="ParseString").
/// Open() invokes the SAX parser to construct the XML tree using the
/// %XML.Document, and initializes the iterator.
/// We assume that elements have been already correlated to class names.
Method Open(xmlsource, method As %String, format As %String, httprequest As %Net.HttpRequest) As %Status [ Internal, Private ]
{
}

/// Import XML source from a file using %XML.Document.
Method OpenFile(xmlsource As %String, format As %String) As %Status
{
}

/// Import XML source from a stream object using %XML.Document.
Method OpenStream(xmlsource As %AbstractStream, format As %String) As %Status
{
}

/// Import XML source from a string using %XML.Document.
Method OpenString(xmlsource As %String, format As %String) As %Status
{
}

/// Import XML source from a URL using %XML.Document.
/// If httprequest argument is specified, then this will be used as the %Net.HttpRequest object to open the URL.
/// <pre>
/// To open https URLs:
/// 		set reader=##class(%XML.Reader).%New()
/// 		set httprequest=##class(%Net.HttpRequest).%New()
/// 		set httprequest.SSLConfiguration="...."
/// 		set status=reader.OpenURL("https://.....",,httprequest)
/// </pre>
Method OpenURL(xmlsource As %String, format As %String, httprequest As %Net.HttpRequest = "") As %Status
{
}

/// NOTE: For InterSystems internal use only!!!
Method OpenBuffer(xmlsource As %List, format As %String) As %Status [ Internal ]
{
}

/// ResolveElement() returns the class name corresponding to an element name
/// within the current XMLReader context.
Method ResolveElement(element As %String, defaultNamespace As %String) As %String [ Internal ]
{
}

}
