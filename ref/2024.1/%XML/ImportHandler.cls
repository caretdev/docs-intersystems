/// SAX Content handler for ObjectScript XML Implementation.
/// <br><br>
///
/// This class and the data structure defined here is used internally by InterSystems IRIS.
/// You should not make direct use of this class or data structure within your applications.
/// The global data structure may be accessed using the macros in %xmlDOM.inc or
/// by using the %XML.Node class.
/// There is no guarantee made about either the behavior or future operation of this class.<br><br>
///
/// This content handler stores the XML document as nodes of a tree.
/// The <property>GlobalName</property> property determines where
/// these nodes are stored.  The default for the <property>GlobalName</property>
/// property is ^||%xmlTemp.  The <property>Tree</property> property determines the
/// specific node used to store the nodes of the tree.
///
/// The structure of the tree is as follows:<br><br>
/// The tree is stored @..GlobalName@(..Tree) which is stored in ..DocumentId.
/// @..GlobalName@(..Tree) - number of nodes.
/// @i%DocumentId@(node) describes the node given by the integer node number.<br><br>
///
/// <pre>
/// Each XML DOM node will be described by a 4 character entry node descriptor.
/// Since any node will be the child of an element node, the node descriptor entries will be
/// stored in the childlist of its parent which is in the element descriptor node or one of its extension nodes.
/// The attribute nodes will be first in the element descriptor node in the order that they are
/// presented by Xerces.  Element and character node entries follow in the XML document order.
/// Each element descriptor is limited to the maximum length ObjectScript string.
/// Thus provision is made for extension child lists.
/// The list of element and character nodes is terminated by a next descriptor node which is
/// a reference to the next extension or 0 for the last.
/// Each element descriptor node and element descriptor extension node is structured as follows:<br>
/// @i%DocumentId@(node) is 28 character base followed by the list of node descriptors.
/// @i%DocumentId@(node) = CLparent_CLoffset_name_(prefix|flags)_elementOffset_URI_line_column_ChildList
///     CLparent($zlchar) is the node number of the parent's child list which contains this node's descriptor.
///     CLoffset($zlchar) is the 1-based offset in characters in CLparent node of this node's descriptor.
///     name ($zlchar) - index of element name in the name dictionary.
///     prefix($zlchar\16) - index of the prefix part of the QName (including ':') in the name dictionary or 0 if no prefix
///          If the qname and the unqualified name are the same, then the prefix is not present.
///     flags($zlchar#16)
///         right-most bit (1) if xsi:nil or xsi:null specified as true or 1
///         second bit (2) is skip flag
///     elementOffset($zwchar) is the offset of the first child element in the child list.
///          This value is 29+(numAttrs*16) for the first child list and 29 for all subsequent child lists.
///     URI($zwchar) is index of the URI for this element or not stored.
///     line($zlchar) part of the location for element node.
///     column($zlchar) part of the location for element node.
///
///     ChildList is list of attribute, element and character entries.
///
/// A document node is introduced which represents the document and has as its child the root element
/// of the document.
/// Node 0 is the document node and node 1 is the child list for the document node.
/// @i%DocumentId@(0) = documentBase_documentChildlist
/// @i%DocumentId@(1) = rootElementDescriptor
///    documentBase:  $zlchar(0,0,0,0,0)_$zwchar(29,0)_$zlchar(0,0)
///    documentChildList:  $zlchar(16) i.e 1 shifted left 4
///    rootElementDescriptor:  $zlchar(0,0,0)_name_prefix_elementOffset_URI_line_column
///       name, URI, prefix, elementOffset, line, column refer to the root element.
///       See below for definition of element descriptor.
///
/// There are 4 types of node descriptors: attribute, element, character and next.
///
/// The attribute node descriptor (length 16):  name_prefix_URI_valueURI_value
///    name($zlchar) is the attribute name
///    prefix($zlchar) - index of the prefix (including ':') in the name dictionary or 0 if no prefix
///    URI($zwchar) - index of the namespace URI for this attriibute or 0 if no namespace.
///    valueURI($zwchar) - index of the namespace URI corresponding to the prefix when the attribute value is of the form "prefix:value".
///    value($zlchar) - index of the value of the attribute in the name dictionary
///
/// The element node descriptor:  elementDescriptor|type
///     elementDescriptor($zlchar\16) is the node number of the elementDescriptor for this element.
///     type($zlchar#16) of the node: 0 for element
///
/// The character node descriptor:  valueindex|type
///     valueindex($zlchar\16) - data dictionary index of character value of the node.
///     type($zlchar#16) of the node: 1 for character data or 2 for character data that is only whitespace.
///
/// The next node descriptor:  next|type
///     next($zlchar\16) - index of next element descriptor extension.
///     type($zlchar#16) of the node: 3 for next element descriptor.
///
/// Errors and warnings are returned as follows.
/// The SAX parser also returns immediately following a fatal error with an error status:
/// @i%DocumentId@(type)=count where type is "fatalerror", "error" or "warning".
/// @i%DocumentId@(type,index)=message
///
/// Elements with "id" attributes are indexed as follows:
/// @i%DocumentId@("i",id)=CLparent_","_CLoffset
///      id is the value of "id" atribute
///      CLparent is the node number of the parent's child list which contains this node's descriptor.
///      CLoffset is the 1-based offset in characters in CLsub node of this node's descriptor.
///
/// The name dictionary is used to store prefixes, attribute values and node values as well as names.
/// The name dictionary used in this XML document is maintained as:
/// @i%DocumentId@("d")=the number of names, values, or prefixes including ':' used by this XML document.
/// @i%DocumentId@("d",index)=name
/// If the value is > than the max node length, then extensions are stored as followed numbered from 1:
/// @i%DocumentId@("d",index,subnodeIndex)=<extension of value>
///    Reverse "D" name to index is only used for COS code added names.  Not for names added by Xerces parser.
/// @i%DocumentId@("D",name)=index
///     where <var>name</var> is a name or prefix and
///     <var>index</var> is the integer index used for this name.
///
/// The list of namespaces used in this XML document is maintained as:
/// @i%DocumentId@("n")=the number of namespaces used by this XML document.
/// @i%DocumentId@("n",index)=namespace
/// @i%DocumentId@("N",namespace)=index
///     where <var>namespace</var> is the the uri for a namespace and
///     <var>index</var> is the integer index used for this namespace in the "u" and "v" nodes above.
/// @i%DocumentId@("N","http://www.w3.org/2001/XMLSchema-instance")=1 and
/// @i%DocumentId@("n",1)="http://www.w3.org/2001/XMLSchema-instance" are always true
///     to allow easy lookup of the schema instance namespace: "http://www.w3.org/2001/XMLSchema-instance"
///
/// The version of the internal content handler is given by a single integer in
/// @i%DocumentId@("v")=version integer -- currently 4
/// </pre>
Class %XML.ImportHandler Extends %XML.SAX.ContentHandler [ System = 2 ]
{

/// Integer tree id within ..GlobalName global
Property Tree As %Integer [ Internal ];

/// Current child list node.  0 means the document.
Property Node As %Integer [ Internal ];

/// Current characcter data that is being built
Property CurrentText As %String [ Internal ];

/// Store a stack of prefixes and associated namespaces.
Property PrefixMap As %String [ Internal, MultiDimensional ];

/// DocumentId for XML parse tree.
Property DocumentId As %String [ Internal ];

/// DOMName is used in COS code as the name of the DOM data structure
Property DOMName As %String [ Internal ];

Method %OnNew(globalName As %String, handlerType As %Integer) As %Status [ Internal ]
{
}

Method %OnClose() As %Status [ Internal ]
{
}

/// Callback after XML parse complete.  Used to set DocumentId.
Method OnPostParse() As %Status [ Internal ]
{
}

/// Adds the elements with the wsu:Id to the id table.
Method AddWSSecurityIds() [ Internal ]
{
}

/// Adds the elements with ID attribute to the id table.
Method AddIDs()
{
}

/// Gets the next id for this document based on the id table and returns in id argument.
/// The nodeid for the rewturned id is the return value.
Method GetNextId(ByRef id As %String) As %String
{
}

/// Make a copy of the document to another node in the same global.
/// Return the document id of the copy.
Method CopyDocument() As %String
{
}

/// Kill the document specified by the documentId argument
ClassMethod KillDocument(documentId)
{
}

/// Map name to attribute index for all attributes associated with a node.<br>
/// Format is @documentId@("a",name)=attribute<br>
/// Return count of attributes
ClassMethod GetAttributeMap(documentId As %String, nodeId As %String) As %Integer [ Internal ]
{
}

/// Set the specified part of the internal attribute.
ClassMethod SetAttribute(documentId As %String, ByRef nodeId As %String, name As %String, value As %String, begin As %Integer, end As %Integer) [ Internal ]
{
}

/// Remove the specified attribute.
ClassMethod RemoveAttribute(documentId As %String, ByRef nodeId As %String, name As %String, namespace As %String) [ Internal ]
{
}

/// GetNameIndex returns the index associated with a name in the document's dictionary.
/// If the name does not exist in the dictionary, it is added
ClassMethod GetNameIndex(docId As %String, name As %String, create As %Boolean = 1) As %Integer [ Internal ]
{
}

/// GetNamespaceIndex returns the index associated with a namespace in the document's dictionary.
/// If the namespace does not exist in the dictionary, it is added
ClassMethod GetNamespaceIndex(docId As %String, namespace As %String) As %Integer [ Internal ]
{
}

/// Get the child list from parent node
ClassMethod ExtendChildList(docId As %String, ByRef CLid As %Integer, desc As %String) [ Internal ]
{
}

/// Insert a descriptor in a child list by moving the specified descriptor.
/// CLid and offset are updated for the new value when the node is moved.
ClassMethod InsertDescriptor(documentId As %String, attribute As %Boolean, ByRef CLid As %Integer, ByRef offset As %Integer, desc As %String) [ Internal ]
{
}

/// Remove a descriptor from a child list
ClassMethod RemoveDescriptor(documentId As %String, CLid As %Integer, offset As %Integer, len As %Integer) [ Internal ]
{
}

/// Return the next child of the specified nodeId or "" if none.
ClassMethod NextChild(docId As %String, parent As %String, ByRef parentChildlist As %String, childId As %String, Output descriptor As %String) As %String [ Internal ]
{
}

/// Return the next child of the specified nodeId or "" if none.
ClassMethod GetNextChild(docId As %String, nodeId As %String, childId As %String, bNext As %Boolean) As %String [ Internal ]
{
}

/// Return the previous child of the specified nodeId or "" if none.
ClassMethod GetPreviousChild(docId As %String, nodeId As %String, childId As %String) As %String [ Internal ]
{
}

Method startDocument() [ Internal ]
{
}

Method endDocument() [ Internal ]
{
}

/// Receive notification of the start of an element.<p>
///
/// Argument are as follows:<br>
/// @param uri The URI of the associated namespace for this element<br>
/// @param localname the local part of the element name<br>
/// @param qname the QName of this element<br>
/// @param attrs, a list in <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$List</a> format consisting of a repeating group of attributes :-
///
/// 1) uri The URI of the associated namespace for this attribute<br>
/// 2) localname the local part of this attribute<br>
/// 3) qname the QName of this attribute<br>
/// 4) type the type of this attribute<br>
/// 5) value the value of this attribute<br>
/// </p>
Method startElement(uri As %Library.String, localname As %Library.String, qname As %Library.String, attrs As %Library.List) [ Internal ]
{
}

Method endElement(uri As %Library.String, localname As %Library.String, qname As %Library.String) [ Internal ]
{
}

Method characters(chars As %Library.String, length As %Library.Integer) [ Internal ]
{
}

/// This method records the current prefix mappings which are in scope
/// Prefixes are automatically handled by SAX on element and attribute names but not
/// within element or attribute content.
Method startPrefixMapping(prefix As %String, uri As %String) [ Internal ]
{
}

Method endPrefixMapping(prefix As %String) [ Internal ]
{
}

Method error(message As %String) [ Internal ]
{
}

Method fatalError(message As %String) [ Internal ]
{
}

Method warning(message As %String) [ Internal ]
{
}

Method SaveError(type As %String, message As %String) [ Internal ]
{
}

/// Formatted dump of iternal structure
ClassMethod Dump(local, repeatable As %Boolean = 0) [ Internal ]
{
}

/// Serialize the value ofthe specified attribute as text string.
/// Note that the attribute value may be of any length.<br>
/// <var>tree</var> is the id of the ML document tree.<br>
/// <var>attribute</var> is the internal form of the attribute specifier as returned by
/// $$$xmliGetAttributeByName or $$$xmlaForEachAttribute.<br>
ClassMethod GetAttribute(tree As %String, attribute) As %String
{
}

/// Serialize the value of the specified attribute as text.
/// Note that the attribute value may be of any length.<br>
/// <var>tree</var> is the id of the ML document tree.<br>
/// <var>attribute</var> is the internal form of the attribute specifier as returned by
/// $$$xmliGetAttributeByName or $$$xmlaForEachAttribute.<br>
/// <var>outputStream</var> is true if the serialized output is to be sent to
/// to the existing stream <var>data</var>.<br>
/// <var>outputStream</var> is false if the serialized output is to be be appended to
/// the string <var>data</var>.   <var>data</var> is created if it is not already defined.<br>
/// <var>lineMode</var> is true if the stream output should be written in line
/// oriented mode, else the stream output will be written as a continuous block.
ClassMethod SerializeAttribute(tree As %String, attribute, outputStream As %Boolean, ByRef data, lineMode As %Boolean = 0) As %Boolean
{
}

/// Serialize the base64 encoded text children of this node as text.<br>
/// <var>tree</var> is the id of the ML document tree.<br>
/// <var>attribute</var> is the internal form of the attribute specifier as returned by
/// $$$xmliGetAttributeByName or $$$xmlaForEachAttribute.<br>
/// <var>outputStream</var> is true if the serialized output is to be sent to
/// to the existing stream <var>data</var>.<br>
/// <var>outputStream</var> is false if the serialized output is to be be appended to
/// the string <var>data</var>.   <var>data</var> is created if it is not already defined.<br>
ClassMethod SerializeBase64Attribute(tree As %Integer, attribute, outputStream As %Boolean, ByRef data, hex As %Boolean = 0, baseChildlist As %String) As %Boolean
{
}

/// Serialize the children of this node as text.<br>
/// <var>tree</var> is the id of the ML document tree.<br>
/// <var>node</var> is the id of the node to be serialized.<br>
/// <var>outputStream</var> is true if the serialized output is to be sent to
/// to the existing stream <var>data</var>.<br>
/// <var>outputStream</var> is false if the serialized output is to be be appended to
/// the string <var>data</var>.   <var>data</var> is created if it is not already defined.<br>
/// <var>mixed</var> is true if child elements should be serialized, else an
/// error is returned if child elements are found.
/// mixed=1 uses XML translate table.
/// mixed=2 uses HTML translate table.<br>
/// <var>includeTop</var> is true if the containing element should be included
/// in the returned output.<br>
/// <var>lineMode</var> is true if the stream output should be written in line
/// oriented mode, else the stream output will be written as a continuous block.
ClassMethod SerializeNode(tree As %String, node As %String, outputStream As %Boolean, mixed As %Integer = 0, ByRef data, includeTop As %Boolean = 0, lineMode As %Boolean = 0, baseChildlist As %String) As %Boolean
{
}

/// Serialize the base64 encoded text children of this node as text.<br>
/// <var>tree</var> is the id of the ML document tree.<br>
/// <var>node</var> is the id of the node to be serialized.<br>
/// <var>outputStream</var> is true if the serialized output is to be sent to
/// to the existing stream <var>data</var>.<br>
/// <var>outputStream</var> is false if the serialized output is to be be appended to
/// the string <var>data</var>.   <var>data</var> is created if it is not already defined.<br>
ClassMethod SerializeBase64Node(tree As %Integer, node As %Integer, outputStream As %Boolean, ByRef data, hex As %Boolean = 0, baseChildlist As %String) As %Boolean
{
}

ClassMethod hextobin(hex As %String) As %String [ Internal, Private ]
{
}

ClassMethod output(text As %String, outputStream As %Boolean, ByRef data, lineMode As %Boolean) As %Boolean [ Internal, Private ]
{
}

}
