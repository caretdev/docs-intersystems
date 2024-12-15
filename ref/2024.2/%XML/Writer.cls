/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25XML.Writer">Writing XML Output from Objects</a>.</p>
/// The <class>%XML.Writer</class> controls export of XML from InterSystems IRIS.
/// It generates a complete XML document
/// including the &lt;?xml&gt; tag.  <class>%XML.Writer</class> works sequentially,
/// outputting the XML as it goes.<p>
///
/// <class>%XML.Writer</class> works in two phases. During the first phase,
/// any required parameters are set for the entire document,
/// for example indentation, charset, output media.  In the second phase
/// the root element and its child elements are exported.
/// The root element may be the export of a single object and
/// its referenced objects.  Or the root element may be a simple element
/// with any number of objects exported as its children.<p>
///
/// All parts of the XML document should be output using methods of this class.
/// The Write method may be used to output unformatted and unescaped text inside the
/// the root element of the document.  In this case the user is
/// responsible for proper management of namespaces and nesting.
/// Additionally, the Object() and Element() may be used to output
/// nested elements.<p>
///
/// Namespace handling is for the most part automatic.
/// <class>%XML.Writer</class> adds namespaces, with automatically
/// created prefixes, to the XML output as needed.
/// The usage of namespaces is controlled by the <property>ElementQualified</property>,
/// <property>AttributeQualified</property> and <property>DefaultNamespace</property> properties,
/// and any <var>namespace</var> argument to an Object or Element call.
/// However, it is possible to control when a namespace is introduced
/// into the document and the prefix used with the <method>AddNamespace</method> method.
/// <P>
/// The following usage example wraps two instances of the Sample.Person class in <Customer> tags and sets the root tag to <CustomerList> as an example of possible adherence to a business rule:
///
/// <EXAMPLE>
///
///  set x1=##class(Sample.Person).%OpenId(1)
///  set x2=##class(Sample.Person).%OpenId(2)
///  set writer=##class(%XML.Writer).%New()
///  set writer.Charset="UTF-8"
///  set sc=writer.OutputToString()
///  If $$$ISERR(sc) Do $system.OBJ.DisplayError(sc) Quit
///  s sc=writer.RootElement("CustomerList")
///  If $$$ISERR(sc) Do $system.OBJ.DisplayError(sc) Quit
///  set sc=writer.Object(x1,"Customer")
///  If $$$ISERR(sc) Do $system.OBJ.DisplayError(sc) Quit
///  set sc=writer.Object(x2,"Customer")
///  If $$$ISERR(sc) Do $system.OBJ.DisplayError(sc) Quit
///  s sc=writer.EndRootElement()
///  If $$$ISERR(sc) Do $system.OBJ.DisplayError(sc) Quit
///  s string=writer.GetXMLString()
///
/// </EXAMPLE>
Class %XML.Writer Extends %RegisteredObject [ System = 3 ]
{

/// The format of the XML document: "literal", "encoded" or "encoded12", "literal" is the default.
/// For "literal" formatting is according to the schema for this document.
/// For "encoded" formatting use SOAP encoding as specified by section 5 of the SOAP 1.1 standard.
/// For "encoded12" formatting use SOAP encoding as specified by part 2 of the SOAP 1.2 standard.
Property Format As %String [ InitialExpression = "literal" ];

/// <property>Charset</property> is the charset to use for encoding the
/// XML output.  The default depends upon the output destination.
/// "UTF-8" is the default for output to files and binary streams.
/// "UTF-16" is the default for output to character streams and strings.
///
Property Charset As %String;

/// Copy of Charset property for internal use within a document.
Property DocumentCharset As %String [ Internal, Private ];

/// Indent specifies that indentation of the XML output should take place.
Property Indent As %Boolean [ InitialExpression = 0 ];

/// IndentChars specifies the character sequence to be used for each indent level if Indent=1.
Property IndentChars As %String [ InitialExpression = "  " ];

/// If XMLIGNORENULL = "runtime", then the behavior of XMLIGNORENULL
/// is determined by the <property>RuntimeIgnoreNull</property> property.
/// <property>RuntimeIgnoreNull</property> specifies the value of
/// XMLIGNORENULL at runtime as either 0, 1 or inputonly.
/// RuntimeIgnoreNull="inputonly" is equivalent to RuntimeIgnoreNull=0.
Property RuntimeIgnoreNull As %String [ InitialExpression = 0 ];

/// If <property>Summary</property> is 1 (true), then export the
/// summary that is specified by the XMLSUMMARY class parameter.
/// Otherwise, export the entire object.
Property Summary As %Boolean [ InitialExpression = 0 ];

/// If <property>ReferencesInline</property> is 1 (true), then encoded objects are exported inline.
/// By default, SOAP encoded XMLExport of a class uses idref's for class instances referenced by
/// a class that is being exported.  This change allows the referenced class instances to be exported
/// inline as for "literal" format.
/// Note that unlike most properties of %XML.Writer, changing the value of
/// <property>ReferencesInline</property> has immediate effect on the next object exported.
Property ReferencesInline As %Boolean [ InitialExpression = 0 ];

/// The <property>Shallow</property> controls shallow XML export of objects
/// where referenced objects are not exported. Embedded (serial) objects
/// will still be exported.
/// To indicate shallow export, set <property>Shallow</property> to 1 (default is 0).
/// Note that unlike most properties of %XML.Writer, changing the value of
/// <property>Shallow</property> has immediate effect on the next object exported.
Property Shallow As %Boolean;

/// If <property>CycleCheck</property> is true (1), then any object to be
/// exported is checked for cycles in the referenced classes which could
/// result in <FRAMESTACK> error.  The default is 1.
Property CycleCheck As %Boolean [ InitialExpression = 1 ];

/// If <property>Base64LineBreaks</property> is true (1), then remove line breaks
/// from base64 encoded XML output for all properties of type %Binary or %xsd.base64Binary.
/// The default is 0 which will be to not include line breaks.
Property Base64LineBreaks As %Boolean [ InitialExpression = 0 ];

/// If <property>NoXMLDeclaration</property> is 1 (true),
/// then the XML declaration will not be written.
/// The default is to write the XML declaration unless
/// Charset is not specified and the output is directed to a string
/// or character stream in which case no XML declaration is written.
Property NoXMLDeclaration As %Boolean;

/// If <property>Canonical</property> is 1 (true),
/// then output is formatted according to XML Exclusive Canonicalization specification.
Property Canonical As %Boolean [ Internal, Private ];

/// <property>ElementQualified</property> indicates whether or not
/// locally declared elements must be qualified.
/// The default for Format="encoded"or "encoded12" = 0 and the default for Format="literal" is 1.
/// See elementFormDefault schema attribute.
Property ElementQualified As %Boolean;

/// <property>AttributeQualified</property> indicates whether or not
/// locally declared attributes must be qualified.
/// See attributeFormDefault schema attribute.
Property AttributeQualified As %Boolean [ InitialExpression = 0 ];

/// <property>DefaultNamespace</property> is the XML namespace to use
/// for any exported classes that do not have the NAMESPACE parameter
/// specified.  If the NAMESPACE parameter is specified for a class,
/// then the namespace specified in the class is always used.
Property DefaultNamespace As %String;

/// <property>SuppressXmlns</property> allows optionally suppression of the use of xmlns= to set
/// default XML namespace when ElementQualified is false.
/// If SuppressXmlns is true then a prefix is used for each tag rather than default namespace with xmlns=.
Property SuppressXmlns As %Boolean [ InitialExpression = 0 ];

/// <property>SuppressAutoPrefix</property> allows optionally suppression of the prefix
/// that is created for the default XML namespace even if it is not needed for the current element.
Property SuppressAutoPrefix As %Boolean [ InitialExpression = 0, Internal, Private ];

/// <property>DefaultXmlns</property> allows optional specification of the XML namespace
/// to use as the default XML namespace when SuppressXmlns is false.
Property DefaultXmlns As %String;

Method DefaultXmlnsSet(value As %String) As %Status [ Internal ]
{
}

/// <property>OutputTypeAttribute</property> allows the user to force the inclusion of the xsi:type
/// attribute for each element of object output.
Property OutputTypeAttribute As %Boolean [ InitialExpression = 0 ];

Method OutputTypeAttributeSet(value As %Boolean) As %Status [ Internal ]
{
}

/// The namespace manager class.
Property Namespaces As %XML.Namespaces [ Internal ];

/// True if we've started writing the XML document.
Property InDocument As %Boolean [ InitialExpression = 0, Internal, Private ];

/// True if document was implictely started without StartDocument call.
Property InternalStartDocument As %Boolean [ InitialExpression = 0, Internal, Private ];

/// True if we've started writing the root element.
Property InRootElement As %Boolean [ InitialExpression = 0, Internal, Private ];

/// True if forest allowed instead of just single root node.
/// Note that this may not be a valid document.
Property InForest As %Boolean [ InitialExpression = 0, Internal, Private ];

/// True if we've written the tag and not yet finished the start element.
Property InTag As %Boolean [ InitialExpression = 0, Internal, Private ];

/// The current indent level.
Property CurrentIndent As %String;

/// If true, indenting to be done for next element, comment or processing instruction.
Property IndentNext As %Boolean [ InitialExpression = 0, Private ];

/// Internal list of orefs for use by encoded output.
Property OrefList As %String [ MultiDimensional, Private ];

/// Internal list of orefs for use by encoded output.
Property IdList As %String [ MultiDimensional, Private ];

/// Stack of end elements for currently started elements.
/// ElementStack(index) == qname for element
/// ElementStack(index,"ns") == previous default namespace
Property ElementStack As %String [ MultiDimensional, Private ];

/// Internal list of ids for use by encoded output.
/// Destination for %XML.Writer output.
/// Possible values are "file", "charstream", "binarystream", "charstring" and "device".
Property OutputDestination As %String [ InitialExpression = "device", Private ];

/// Internal -- translate table used for output
Property OutputTable As %String [ Private ];

/// Filename for output to file.
Property OutputFilename As %String [ Private ];

/// Internal -- original translate table for current output device
Property OriginalTable As %String [ Internal, Private ];

/// True if a document has already been written to this file/stream.
///
/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.<br><br>
Property ExtendedDocument As %Boolean [ Internal ];

/// Stream for output to stream or file.
/// Will store a stream,
///   but declare as %RegisteredObject to prevent auto create of serial object.
Property OutputStream As %RegisteredObject [ Private ];

/// User specified Global stream that will receive data.
/// Will store a stream,
///   but declare as %RegisteredObject to prevent auto create of serial object.
Property UserStream As %RegisteredObject [ Private ];

/// Save current $io
Property SaveIO As %String [ Internal, Private ];

/// <method>OutputToDevice</method> sets output to the current device which
/// is the default if no output method is specified.
Method OutputToDevice() As %Status
{
}

/// <method>OutputToString</method> sets output to be directed to a string.
/// <method>GetXMLString<method> may be called after output is complete
/// to a string to retrieve the output.
Method OutputToString() As %Status
{
}

/// <method>GetXMLString</method> gets output generated using OutputToString.
Method GetXMLString(ByRef status As %Status) As %String
{
}

/// <method>OutputToStream</method> sets output to be directed to a stream.
/// <var>export</var> is the exported stream.
/// If <var>export</var> is the oref of a stream, the XML document will
/// be written to this existing stream at the current position.
/// If <var>export</var> is "", then a new %FileBinaryStream will be
/// created to contain the XML document and its oref returned.
/// In this case, <var>export</var> must be passed by reference.
Method OutputToStream(ByRef export As %BinaryStream) As %Status
{
}

/// <method>OutputToFile</method> sets output to be directed to a
/// new file, named <var>filename</var>.
Method OutputToFile(filename As %String) As %Status
{
}

/// The <method>Reset</method> method may be called after an XML
/// document has been output by <method>RootObject</method> or
/// <method>RootElement</method> to reintialize the properties
/// and output method of the XML document.
Method Reset() As %Status
{
}

/// Initialize the namespaces manager.
///
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method InitNamespaces() As %Status [ Internal ]
{
}

/// <method>AddNamespace</method> adds a namespace to the XML document
/// for all elements added at this nesting level.
/// The prefix to be used for the namespace may optionally be specified
/// with the <var>prefix</var> argument.
/// A <var>schemaLocation</var> attribute value for the first definition
/// of this namespace may also specified.
/// For example, if many children of an element will use the same
/// namespace, it is better to add the namespace above the containing
/// element, so that the prefix may be defined only once at the
/// containing level using the xmlns:<var>prefix</var> attribute.
Method AddNamespace(namespace As %String, prefix As %String, schemaLocation As %String) As %Status
{
}

/// <method>AddInstanceNamespace</method> adds the schema instance
/// namespace to the document using the optional <var>prefix</var>.
/// If the <var>prefix</var> argument is not specifed, "xsi" is used
/// as the prefix.
Method AddInstanceNamespace(prefix As %String) As %Status
{
}

/// <method>AddSchemaNamespace</method> adds the schema
/// namespace to the document using the optional <var>prefix</var>.
/// If the <var>prefix</var> argument is not specifed, "s" is used
/// as the prefix.
Method AddSchemaNamespace(prefix As %String) As %Status
{
}

/// <method>AddSOAPNamespace</method> adds the SOAP 1.1 encoding, schema and
/// schema instance namespaces to the document using the optional prefixes
/// <var>soapPrefix</var>, <var>schemaPrefixPrefix</var> and <var>xsiPrefix</var>.
Method AddSOAPNamespace(soapPrefix As %String, schemaPrefix As %String, xsiPrefix As %String) As %Status
{
}

/// <method>AddSOAP12Namespace</method> adds the SOAP 1.2 encoding, schema and
/// schema instance namespaces to the document using the optional prefixes
/// <var>soapPrefix</var>, <var>schemaPrefixPrefix</var> and <var>xsiPrefix</var>.
Method AddSOAP12Namespace(soapPrefix As %String, schemaPrefix As %String, xsiPrefix As %String) As %Status
{
}

/// Start output of the XML document
/// If <property>allowForest</property> = true, then mutiple root nodes are allowed.
Method StartDocument(allowForest As %Boolean = 0) As %Status
{
}

/// Finish output of the XML document
Method EndDocument() As %Status
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method StartDocumentInternal(rootOK As %Boolean) As %Status [ Private ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this property.
Method EndDocumentInternal() As %Status [ Private ]
{
}

/// <method>RootObject</method> will output the document as a
/// single object instance and all its references.
/// The <method>RootObject</method> method initializes itself based
/// on the properties of the <class>%XML.Writer</class> instance
/// and does the output.  When output is complete, it writes the
/// final end tag and closes the output device.  At this point,
/// the <class>%XML.Writer</class> properties may be modified and
/// <method>RootObject</method> or <method>RootElement</method>
/// called again to output another document.<br>
/// <ul>
/// <li><var>object</var> is the XML enabled object instance to output.</li>
///
/// <li><var>tag</var> optionally specifies the tag name to be used for
/// this element.</li>
///
/// <li><var>namespace</var> optionally specifies the default namespace
/// for this object.  If the NAMESPACE parameter is specified for a
/// class, then the namespace specified in the class is always used.</li>
///
/// <li><var>className</var> is the expected name of this object's class.
/// If the <var>className</var> is specified and this class's name is not equal to the name in className,
/// then add a xsi:type attribute to the element.</li>
///
/// <li><var>bare</var> is for internal ISC use only.</li>
/// </ul>
/// If the Format="encoded" property is used and <method>RootObject</method>
/// called, then all object instances will be output as embedded in the
/// top level object.  This is usually not desired and therefore
/// objects to be output using SOAP encoding should usually be
/// enclosed in by a root element using <method>RootElement</method>
/// and <method>EndRootElement</method>.
/// </ul>
Method RootObject(object As %XML.Adaptor, tag As %String, namespace As %String, className As %String, bare As %Boolean) As %Status
{
}

/// The <method>RootElement</method> method writes only the root element
/// of the XML document  Child elments must be written by the user.
/// The <method>RootElement</method> method initializes based on the
/// properties of the <class>%XML.Writer</class> instance and does the output.
/// EndRootElement() writes the final end tag and closes the output device.
/// After EndRootElement() is called, the properties may be modified and
/// <method>RootObject</method> or <method>RootElement</method> called
/// again to output another document.<br><br>
/// There are two possible polymorphic formats for the
/// <method>RootElement</method> method.  The element to output may be
/// either have its name specified as a %String or have the element
/// specified as a <class>%XML.Element</class> instance.
///
/// <var>root</var> is the root element specified either as a tag name
/// or an <class>%XML.Element</class> instance.<br>
/// <var>namespace</var> optionally specifies the default namespace
/// for this element and any nested elements.
Method RootElement(root, namespace As %String) As %Status
{
}

/// EndRootElement is the method to end the root element.
Method EndRootElement() As %Status
{
}

/// The <method>ParsePrefixList</method> parses the PrefixList that is specified
/// for Exclusive Canonicalization as a list of NMTOKENS.
/// True (1) is returned if the parsing is successful.
ClassMethod ParsePrefixList(PrefixList As %String, ByRef PrefixListArray)
{
}

/// The <method>Canonicalize</method> method writes an XML document with root element specified
/// by the %XML.Node class in canonicalized form specified by the Exclusive XML
/// Canonicalization or Canonical XML (also called inclusive canonicalization) specification.<br>
/// <ul>
/// <li><var>node</var> is the parse tree that represents the XML document to be output.</li>
/// <li>For Exclusive XML Canonicalization <var>PrefixList</var> is a multidimensional array which specifies
/// the prefixes that are included on the IncludedNamespaces list.
/// PrefixList(prefix)="" if the prefix is on the list.
/// If <var>PrefixList</var> is = "c14n", then inclusive canonicalization is performed.</li>
/// <li>If <var>formatXML</var> is true, the formatting specified for %XML.Writer
/// rather than the formatting specified by the XML Canonicalization specification is used.
/// The output is not strictly speaking canonical XML, but has done the namespace
/// processing for canonical XML.  This behavior is useful for outputting a fragment of an XML document,
/// such as the SOAP body in the ProcessBodyNode callback from a web service, while still having some
/// control of the format.
/// <li><var>isSTR</var> is for internal use.  If true, keep xmlns=""  on the APEX node as specified
/// by WS-Security for canonicalization of XML freferenced by a SecurityTokenReference.</li>
/// <li>If the XML document is in MTOM format, then <var>mimeAttachments</var> is a mime part
/// which contains in the Parts property the list of attachments.</li>
/// </ul>
Method Canonicalize(node As %XML.Node, ByRef PrefixList, formatXML As %Boolean = 0, isSTR As %Boolean = 0, mimeAttachments As %Net.MIMEPart = "") As %Status
{
}

/// The <method>CanonicalTree</method> method writes element content as represented
/// by the %XML.Node class in canonicalized form specified by the Exclusive XML Canonicalization or
/// Canonical XML (also called inclusive canonicalization) specification.<br>
/// <ul>
/// <li><var>node</var> is the parse tree that represents the XML document to be output.</li>
/// <li>For Exclusive XML Canonicalization <var>PrefixList</var> is a multidimensional array which specifies
/// the prefixes that are included on the IncludedNamespaces list.
/// PrefixList(prefix)="" if the prefix is on the list.
/// If <var>PrefixList</var> is = "c14n", then inclusive canonicalization is performed.</li>
/// <li><var>isSTR</var> is for internal use.  If true, keep xmlns=""  on the APEX node as specified
/// by WS-Security for canonicalization of XML freferenced by a SecurityTokenReference.</li>
/// <li>If the XML document is in MTOM format, then <var>mimeAttachments</var> is a mime part
/// which contains in the Parts property the list of attachments.</li>
/// </ul>
Method CanonicalTree(node As %XML.Node, ByRef PrefixList, isSTR As %Boolean = 0, mimeAttachments As %Net.MIMEPart = "") As %Status
{
}

/// The <method>CanonicalTreeInternal</method> method is an internal method to
/// implement recursion needed to canonicalize.
Method CanonicalTreeInternal(DocId As %String, NodeId As %String, baseChildlist As %String, ByRef PrefixList, isSTR As %Boolean, mimeAttachments As %Net.MIMEPart, addedPrefix) As %Status [ Internal ]
{
}

/// The <method>Document</method> method writes the XML document represented
/// by the %XML.Document class.
/// The <method>Document</method> method initializes based on the
/// properties of the <class>%XML.Writer</class> instance and does the output.
///
/// <var>document</var> is the parse tree that represents the XML document to be output.
Method Document(documentArg As %XML.Document) As %Status
{
}

/// The <method>DocumentNode</method> method writes the XML document represented
/// by the %XML.Node class.
/// The <method>DocumentNode</method> method initializes based on the
/// properties of the <class>%XML.Writer</class> instance and does the output.
///
/// <var>node</var> is the parse tree that represents the XML document to be output.
Method DocumentNode(node As %XML.Node) As %Status
{
}

/// The <method>Tree</method> method writes the XML document node represented
/// by the %XML.Node class and its tree of descendants..
///
/// <var>node</var> is an %XML.Node class that is positioned at the node to output.
Method Tree(node As %XML.Node, keepxmlns As %Boolean = 0) As %Status
{
}

/// The <method>TreeInternal</method> method is an internal method to
/// implement recursion needed to output document from DOM.
Method TreeInternal(DocId As %String, NodeId As %String, baseChildlist As %String, keepxmlns As %Boolean = 0) As %Status [ Internal ]
{
}

/// <method>Object</method> outputs objects nested in the root object
/// of an XML document.<br>
/// <ul>
/// <li><var>object</var> is the XML enabled object instance to output.</li>
///
/// <li><var>tag</var> optionally specifies the tag name to be used for
/// this element.</li>
///
/// <li><var>namespace</var> optionally specifies the default namespace
/// for this object.  If the NAMESPACE parameter is specified for a
/// class, then the namespace specified in the class is always used.</li>
///
/// <li><var>local</var> specifies if the element is treated as a local element.
/// Default is 0 (false).</li>
///
/// <li><var>className</var> is the expected name of this object's class.
/// If the <var>className</var> is specified and this class's name is not equal to the name in className,
/// then add a xsi:type attribute to the element.</li>
///
/// <li><var>bare</var> is for internal ISC use only.</li>
/// </ul>
Method Object(objectArg As %XML.Adaptor, tag As %String, namespace As %String, local As %Boolean, className As %String, bare As %Boolean) As %Status
{
}

/// <method>Element</method> outputs elements nested in the root object
/// of an XML document.<br><br>
///
/// There are two possible polymorphic formats for the
/// <method>Element</method> method.  The element to output may be
/// either have its name specified as a %String or have the element
/// specified as a <class>%XML.Element</class> instance.
///
/// <var>tag</var> is the nexted element specified either as a tag name
/// or an <class>%XML.Element</class> instance.<br>
/// <var>namespace</var> optionally specifies the default namespace
/// for this element and any nested elements.
Method Element(tag, namespace As %String) As %Status
{
}

/// The <method>WriteAttribute</method> method writes an attribute for the last element started.
/// This method may only be called immediately after StartElement or Element.<br>
/// Arguments:
/// - <var>name</var>  is the attribute name and is required.<br>
/// - <var>value</var> is the attribute value and is required.<br>
/// - <var>namespace</var> is the optional namespace for the attribute name.
///   If namespace is not specified, then the default XML namespace is used for the attribute name.<br>
/// - <var>valueNamespace</var> is the namespace for the value.<br>
///   If valueNamespace is not specified (the most usual case), no namespace prefix is used for
///   the value.  valueNamespace is used for attributes like xsi:type whose value comes from
///   an XML schema namespace.
/// - <var>global</var> is true if the attribute is global in the associated XML schema and thus should
///   have a prefix.  Default is false.
Method WriteAttribute(name As %String, value As %String = "", namespace As %String, valueNamespace As %String = "", global As %Boolean = 0) As %Status
{
}

/// <method>EndElement</method> outputs the end element for the
/// matching element started with the <method>Element</method> method.
Method EndElement() As %Status
{
}

/// <method>Write</method> writes arbitrary text in the XML document without any escaping being done.
/// This method can be used in any part of the XML document.<br>
/// Argument:<br>
/// - <var>text</var>  The character data to output.  Type of %String or %CharacterStream.<br>
Method Write(text) As %Status
{
}

/// <method>StartWrite</method> sets the current device for writing arbitrary text in the XML document without any escaping being done.
/// This method can be used in any part of the XML document.<br>
Method StartWrite() As %Status
{
}

/// <method>EndWrite</method> restores the current device to before matching StartWrite.
/// This method can be used in any part of the XML document.<br>
Method EndWrite() As %Status
{
}

/// <method>WriteChars</method> writes XML element text performing any required escaping.
/// This method is used to write element content.<br>
/// Argument:<br>
/// - <var>text</var>  The character data to output.  Type of %String or %CharacterStream.<br>
Method WriteChars(text) As %Status
{
}

/// Do canonical formatting of element text
Method CharsText(text As %String, Output overflow) As %String
{
}

/// Do canonical formatting of attribute text
Method AttributeText(attrval As %String) As %String
{
}

/// <method>WriteCData</method> writes XML element text in a CData section.
/// This method is used to write element content.<br>
/// Argument:<br>
/// - <var>text</var>  The character data to output.  Type of %String or %CharacterStream.<br>
Method WriteCData(text) As %Status
{
}

/// <method>WriteBase64</method> encodes the specified binary bytes as base64 and writes out the resulting text.
/// This method is used to write element content.<br>
/// Argument:<br>
/// - <var>binary</var>  The binary data to output.  Type of %Binary or %BinaryStream.
Method WriteBase64(binary) As %Status
{
}

/// <method>WriteBinHex</method> encodes the specified binary bytes as binhex and writes out the resulting text.
/// This method is used to write element content.<br>
/// Argument:<br>
/// - <var>binary</var>  The binary data to output.  Type of %Binary or %BinaryStream.
Method WriteBinHex(binary) As %Status
{
}

/// <method>WriteComment</method> writes out a comment <!--...--> containing the specified text.
/// This method can be used in any part of the XML document.<br>
/// Argument:<br>
/// - <var>text</var>  Text to place inside the comment.  Type of %String or %CharacterStream.
Method WriteComment(text) As %Status
{
}

/// <method>WriteDocType</method> writes the DOCTYPE declaration with the specified name and optional attributes.
/// This method may only be called before the root element is written.<br>
/// Arguments:<br>
/// - <var>name</var>  The name of the DOCTYPE. This must be non-empty.<br>
/// - <var>PublicId</var>  If non-null it also writes PUBLIC "PublicId" "SystemId" where PublicId and SystemId are replaced with the value of the given arguments.<br>
/// - <var>SystemId</var>  If PublicId is null and SystemId is non-null it writes SYSTEM "SystemId" where SystemId is replaced with the value of this argument.<br>
/// - <var>subset</var>  If non-null it writes [Subset] where Subset is replaced with the value of this argument.<br>
Method WriteDocType(name As %String, PublicId As %String, SystemId As %String, subset As %String) As %Status
{
}

/// <method>WriteProcessingInstruction</method> writes out a processing instruction with a
///   space between the name and text as follows: &lt;?name text?&gt;.
/// This method may only be called outside the root element is written.<br>
/// Arguments:<br>
/// - <var>name</var>  Name of the processing instruction.<br>
/// - <var>text</var>  Text to include in the processing instruction.
Method WriteProcessingInstruction(name As %String, text As %String) As %Status
{
}

}
