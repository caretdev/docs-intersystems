/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25XML.TextReader">Using %XML.TextReader</a>.</p>
Class %XML.TextReader Extends %RegisteredObject [ Not ProcedureBlock, ServerOnly = 1, System = 3 ]
{

/// Public property, Only applicable to element nodes. Returns the number of attributes on the current node.
Property AttributeCount As %Integer;

/// Public property, The depth of the current node in the XML document.
Property Depth As %Integer;

/// Public property, true if the reader is positioned at the end of the stream; otherwise, false.
Property EOF As %Boolean;

/// Public property, Gets a value indicating whether the current node has any attributes.
/// true if the current node has attributes; otherwise, false.
Property HasAttributes As %Boolean;

/// Public property, returns true if the node on which the reader is currently positioned can have a Value;
/// otherwise, false. The following lists node types and the corresponding values:
/// <P>
/// <B>Node Type</B> :: <B>Value</B>
/// <P>
/// attribute :: The value of the attribute.
/// <BR>
/// comment :: The content of the comment.
/// <BR>
/// processinginstruction :: The entire content of the processing instruction, excluding the target.
/// <BR>
/// ignorablewhitespace :: The white space between markup in a mixed content model.
/// <BR>
/// chars :: The content of the text node.
/// <BR>
/// startprefixmapping :: The prefix and uri of the mapping
/// <BR>
/// endprefixmappping :: The prefix of the mapping
Property HasValue As %Boolean;

/// Public property, returns true if the current element is empty
Property IsEmptyElement As %Boolean;

/// Public property, The name of the current node with the prefix removed. For example, LocalName is book for the element &lt;bk:book&gt;.
/// The name returned is dependent on the NodeType of the node. The following node types return the listed values.
/// All other node types return an empty string.
///
/// Name: Attribute
/// <BR>
/// Value: The name of the attribute.
/// <P>
/// Name: Element
/// <BR>
/// Value: The tag name.
Property LocalName As %String;

/// Public property,The qualified name of the current node. For example, Name is bk:book for the element &lt;bk:book&gt;.
/// The name returned is dependent on the NodeType of the node. The following node types return the listed values.
/// All other node types return an empty string.
///
/// Name: Attribute
/// <BR>
/// Value: The name of the attribute.
/// <P>
/// Name: Element
/// <BR>
/// Value: The tag name.
/// <P>
/// Name: EntityReference
/// <BR>
/// Value: The name of the entity referenced.
/// <P>
/// Name: ProcessingInstruction
/// <BR>
/// Value: The target of the processing instruction.
/// <P>
/// Name: StartPrefixMapping
/// <BR>
/// Value: The prefix of the mapping and the uri mapped, delimited by a single space
/// <P>
/// Name: EndPrefixMapping
/// <BR>
/// Value: The prefix of the mapping
Property Name As %String;

/// Public property, The namespace URI of the current node; otherwise an empty string.
/// This property is relevant to Element and Attribute nodes only.
Property NamespaceUri As %String;

/// Public property, contains the node type of the current node as indicated by the
/// following list:
/// <P>
/// attribute
/// <BR>
/// cdata
/// <BR>
/// comment
/// <BR>
/// processinginstruction
/// <BR>
/// ignorablewhitespace
/// <BR>
/// chars
/// <BR>
/// element
/// <BR>
/// entity
/// <BR>
/// endelement
Property NodeType As %String;

/// Public property, contains the current path to the containing element
Property Path As %String;

/// Public property, returns the current read state of the reader
/// The following table lists the states and their meanings
/// <P>
/// EndOfFile: The end of the file has been reached successfully.
/// <P>
/// Initial: The Read method has not been called.
/// <P>
/// Interactive: The Read method has been called. Additional methods may be called on the reader.
Property ReadState As %String [ InitialExpression = "Initial" ];

/// Public property, returns the value of the current node. The following types have a value to return:
/// <P>
/// <B>Node Type</B> :: <B>Value</B>
/// <P>
/// attribute :: The value of the attribute.
/// <P>
/// cdata :: The content of the CDATA section.
/// <P>
/// comment :: The content of the comment.
/// <P>
/// processinginstruction :: The entire content of the processing instruction, excluding the target.
/// <P>
/// ignorablewhitespace :: The white space between markup in a mixed content model.
/// <P>
/// chars :: The content of the text node.
/// <P>
/// entity :: The expanded content of the entity
Property Value As %String;

Property attrseq As %Integer [ InitialExpression = 0, Private ];

Property hasContent As %String [ Private ];

Property seq As %Integer [ InitialExpression = 0 ];

Property target As %Integer [ Private ];

Property priorpath As %String [ Private ];

Property GlobalName As %String;

Method %OnClose() As %Status
{
}

Method %OnNew(pInitval As %Integer, pGlobalName As %String = "^IRIS.Temp") As %Status
{
}

/// AttributeCount Implementation
Method AttributeCountGet() As %Integer
{
}

/// Depth Implementation
Method DepthGet() As %Integer
{
}

/// EOF Implementation
Method EOFGet() As %Boolean
{
}

/// HasAttributes Implementation
Method HasAttributesGet() As %Boolean
{
}

/// HasValue Implementation
Method HasValueGet() As %Boolean
{
}

/// IsEmptyElement Implementation
Method IsEmptyElementGet() As %Boolean
{
}

/// LocalName implementation
Method LocalNameGet() As %String
{
}

///  Moves to the attribute with the specified index. returns true on success false otherwise
Method MoveToAttributeIndex(pIndex As %String) As %Boolean
{
}

Method MoveToAttributeName(pName As %String, pUri As %String = "") As %Boolean
{
}

/// Checks whether the current node is a content (non-white space text, CDATA, Element,
/// EndElement, EntityReference, or EndEntity) node. If the node is not a content node, the reader skips
/// ahead to the next content node or end of file. It skips over nodes of the following types:
/// processinginstruction, comment, ignorablewhitespace,endelement
Method MoveToContent() As %Boolean
{
}

/// Moves to the associated element when the current node is of type attribute
Method MoveToElement() As %Boolean
{
}

/// Name implementation
Method NameGet() As %String
{
}

/// NamespaceUri Implementation
Method NamespaceUriGet() As %String
{
}

/// NodeType implementation
Method NodeTypeGet() As %String
{
}

/// This method takes the name of a file to be parsed and a reference to a variable which,
/// upon success, will be set to a new instance of an %XML.TextReader. Optionally, additional
/// arguments specifying an Entity resolver, Flags , Mask and SchemaSpec be passed.
/// Please see class %XML.SAX.Parser for a full description of these optional parameters.
ClassMethod ParseFile(Filename As %String, Output TextReader As %XML.TextReader, Resolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, Flags As %Integer = {$$$SAXDEFAULTS}, Mask As %Integer = {$$$SAXCONTENTEVENTS}, SchemaSpec As %String = "", KeepWhiteSpace As %Boolean = 0, GlobalName As %String = "^||IRIS.Temp") As %Status [ Final ]
{
}

/// This method takes a Stream to be parsed and a reference to a variable which,
/// upon success, will be set to a new instance of an %XML.TextReader. Optionally, additional
/// arguments specifying an Entity resolver, Flags , Mask and SchemaSpec be passed.
/// Please see class %XML.SAX.Parser for a full description of these optional parameters.
ClassMethod ParseStream(Stream As %AbstractStream, Output TextReader As %XML.TextReader, Resolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, Flags As %Integer = {$$$SAXDEFAULTS}, Mask As %Integer = {$$$SAXCONTENTEVENTS}, SchemaSpec As %String = "", KeepWhiteSpace As %Boolean = 0, GlobalName As %String = "^||IRIS.Temp") As %Status [ Final ]
{
}

/// This method takes a String to be parsed and a reference to a variable which,
/// upon success, will be set to a new instance of an %XML.TextReader. Optionally, additional
/// arguments specifying an Entity resolver, Flags , Mask and SchemaSpec be passed.
/// Please see class %XML.SAX.Parser for a full description of these optional parameters.
ClassMethod ParseString(String As %String, Output TextReader As %XML.TextReader, Resolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, Flags As %Integer = {$$$SAXDEFAULTS}, Mask As %Integer = {$$$SAXCONTENTEVENTS}, SchemaSpec As %String = "", KeepWhiteSpace As %Boolean = 0, GlobalName As %String = "^||IRIS.Temp") As %Status [ Final ]
{
}

/// This method takes a URL to be parsed and a reference to a variable which,
/// upon success, will be set to a new instance of an %XML.TextReader. Optionally, additional
/// arguments specifying an Entity resolver, Flags , Mask and SchemaSpec be passed.
/// Please see class %XML.SAX.Parser for a full description of these optional parameters.
ClassMethod ParseURL(URL As %String, Output TextReader As %XML.TextReader, Resolver As %XML.SAX.EntityResolver = {$$$NULLOREF}, Flags As %Integer = {$$$SAXDEFAULTS}, Mask As %Integer = {$$$SAXCONTENTEVENTS}, SchemaSpec As %String = "", KeepWhiteSpace As %Boolean = 0, pHttpRequest As %Net.HttpRequest = {$$$NULLOREF}, GlobalName As %String = "^||IRIS.Temp") As %Status [ Final ]
{
}

/// Implementation of Path property.
Method PathGet() As %String
{
}

/// Reads the next node from the stream.
/// Returns true if the next node was read successfully; false if there are no more nodes to read.
/// When an XmlReader is first created and initialized, there is no information available. You must
/// call Read to read the first node. Each node has a particular type. There is not necessarily a one
/// to one correspondence between the number of nodes in a document and the number of identifiable
/// xml components. For example,the cdata, comment and chars nodes contain textual information which
/// corresponds to their XML equivalent in the document. However a single XML component of type chars may
/// be spread over a number of nodes of the same type. This is entirely due to the way the XML engine
/// processes the document. Therefore if you do a read and the node type is character, for example,
/// then you have to continue reading until the node type changes to ensure that you have seen all the character data.
Method Read() As %Boolean
{
}

/// Advances to the first element that matches the provided name and (optional) namespace uri
/// Returns true on success, false if the element could not be matched
Method ReadStartElement(pName As %String, pUri As %String = "") As %Boolean
{
}

/// ReadState Implementation
Method ReadStateGet() As %String
{
}

/// Resets the reader to the initial state
Method Rewind()
{
}

/// Value Implementation
Method ValueGet() As %String
{
}

/// HasContent Implementation
Method hasContentGet() As %Boolean [ Private ]
{
}

}
