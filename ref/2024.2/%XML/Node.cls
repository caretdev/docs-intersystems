/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25XML.Document">Representing an XML Document as a DOM</a>.</p>
/// <class>%XML.Node</class> may be used to navigate the an XML document which is
/// represented as an Document Object Model (DOM) using the <class>%XML.Document</class>.
/// The <class>%XML.Document</class> may be created either
/// <li>from an XML document by accessing the Document property of %XML.Reader
/// after calling an Openxxx method of %XML.Reader.</li>
/// <li>as a new DOM by calling the <method>CreateDocument</method> of this class.</li><br>
/// The <class>%XML.Node</class> instance that is used to navigate the DOM is created
/// using the <method>GetDocumentElement</method> of <class>%XML.Document</class>.<br><br>
///
/// <class>%XML.Node</class> navigates through the nodes of the DOM rather
/// than representing a fixed node in a DOM tree.  The MoveToxxx methods are used to move
/// through the DOM.  The properties and methods of <class>%XML.Node</class> are then used
/// to retrieve and modify the node contents.
Class %XML.Node Extends %RegisteredObject [ System = 2 ]
{

/// The DOM that this %XML.Node instance is navigating.  The Document property may be
/// set to change which DOM is being navigated.  When the Document is set, %XML.Node is
/// positioned at the document node, i.e. the parent of the root element.
Property Document As %XML.Document;

Method DocumentSet(document As %XML.Document) As %Status [ Internal ]
{
}

/// Contains document id in DOM global.
Property DocId As %String [ Internal ];

/// The id of the current node.
/// The NodeId property may be set in order to move the specified node.
Property NodeId As %String;

/// When setting NodeId, the descriptor part must be recomputed in case the tree has been updated.
Method NodeIdSet(id As %String) As %Status [ Internal ]
{
}

/// Childlist associated with NodeId
Property Childlist As %String [ Internal ];

/// Descriptor associated with NodeId
Property Descriptor As %String [ Internal ];

/// List of attributes
Property AttributeList As %String [ Internal, MultiDimensional ];

/// Type of node: $$$xmlELEMENTNODE, $$$xmlTEXTNODE, $$$xmlWHITESPACENODE.
Property NodeType As %String [ Calculated ];

Method NodeTypeGet() As %String [ CodeMode = expression, Internal ]
{
}

Method NodeTypeSet(type As %String) As %Status [ Internal ]
{
}

/// Value of a character node.
Property NodeData As %String [ Calculated ];

Method NodeDataGet() As %String [ Internal ]
{
}

Method NodeDataSet(val As %String) As %Status [ Internal ]
{
}

/// Get the text contents of an element node.
/// GetText returns false if an error is encountered in evaluating the node.
/// GetText returns true if text is found.  The text which is found may be the empty string.
/// The found text is appended to the text argument.
/// The text argument is created if it is not already defined.
/// If the mixed argument is = 1, then the mixed character and element content in the
/// current node is returned in the text argument.
Method GetText(ByRef text, mixed As %Boolean = 0) As %Boolean
{
}

/// Local name for element node.
Property LocalName As %String [ Calculated ];

Method LocalNameGet() As %String [ CodeMode = expression, Internal ]
{
}

Method LocalNameSet(name As %String) As %Status [ Internal ]
{
}

/// Qname for element node.
/// Only used for output as XML when the prefix is valid for the document.
Property QName As %String [ Calculated ];

Method QNameGet() As %String [ CodeMode = expression, Internal ]
{
}

Method QNameSet(name As %String) As %Status [ Internal ]
{
}

/// XML namespace for element node.
Property Namespace As %String [ Calculated ];

Method NamespaceGet() As %String [ CodeMode = expression, Internal ]
{
}

Method NamespaceSet(namespace As %String) As %Status [ Internal ]
{
}

/// Index into XML namespace table for element node.
Property NamespaceIndex As %String [ Calculated ];

Method NamespaceIndexGet() As %String [ Internal ]
{
}

Method NamespaceIndexSet(nsIndex As %String) As %Status [ Internal ]
{
}

/// True if xsi:nil or xsi:null specified as true or 1 for this element node.
Property Nil As %Boolean [ Calculated ];

Method NilGet() As %Boolean [ CodeMode = expression, Internal ]
{
}

Method NilSet(value As %Boolean) As %Status [ Internal ]
{
}

/// True if node is to be skipped during canonicalization.
Property SkipFlag As %Boolean [ Calculated, Internal ];

Method SkipFlagGet() As %Boolean [ CodeMode = expression, Internal ]
{
}

Method SkipFlagSet(value As %Boolean) As %Status [ Internal ]
{
}

/// Move node to current node's parent.<br>
/// If restrictDocumentNode is true, then MoveTopParent will not move to document node.
Method MoveToParent(restrictDocumentNode As %Boolean = 0) As %Boolean
{
}

/// Move node to current node's ancestor which has the specified local name.
Method MoveToParentElement(localName As %String) As %Boolean
{
}

/// Return non-zero (true) if this node has any child nodes.
Method HasChildNodes(skipWhitespace As %Boolean = 0) As %Boolean
{
}

/// Move node to current node's first child node.
/// Optionally skip whitespace nodes.
Method MoveToFirstChild(skipWhitespace As %Boolean = 0) As %Boolean
{
}

/// Move node to current node's last child node.
/// Optionally skip whitespace nodes.
Method MoveToLastChild(skipWhitespace As %Boolean = 0) As %Boolean
{
}

/// Move node to current node's next sibling.
/// Optionally skip whitespace nodes.
Method MoveToNextSibling(skipWhitespace As %Boolean = 0) As %Boolean
{
}

/// Move node to current node's previous sibling.
/// Optionally skip whitespace nodes.
Method MoveToPreviousSibling(skipWhitespace As %Boolean = 0) As %Boolean
{
}

/// Check is a this node is the descendant of specified node
Method IsDescendant(sourceNode As %XML.Node) As %Boolean
{
}

/// Copy the attributes of the source node to this node.
Method CopyAttributes(sourceNode As %XML.Node) [ Internal ]
{
}

/// Append new element node to the list of children of this node.
/// If the text argument is specified, then character data is added as
/// the child of the new element.
/// The current node pointer does not change.  This node is still the parent of the appended child.
Method AppendElement(localName As %String, namespace As %String = "", text As %String, qname As %String = "")
{
}

/// Append new character data node to the list of children of this element node.
/// The current node pointer does not change.  This node is still the parent of the appended child.<br>
/// If <var>raw</var> is true, the node is marked as $$$xmlRAWTEXTNODE<br>
/// <var>parent</var> is for internal use only.
Method AppendCharacter(text As %String, raw As %Boolean, parent As %String)
{
}

/// Append a copy of the specified node to the list of children of this node.
/// The node to copy may be from any document.
/// The current node pointer does not change.  This node is still the parent of the appended child.
Method AppendNode(sourceNode As %XML.Node) As %Status
{
}

/// Append a copy of the specified node, including all its children, to the list of children of this node.
/// The tree to copy may be from any document, but this node may not be a descendant of the source node.
/// The current node pointer does not change.  This node is still the parent of the appended child.
Method AppendTree(sourceNode As %XML.Node) As %Status
{
}

/// Insert a new element node to the list of children of this node.
/// The new element is inserted just before the specified child node.
/// The child node is specified by passing its NodeId.
/// The child node is passed by reference so that it may be updated with a new NodeId after the insert.
/// The nodeId of the inserted element is returned.
/// If the text argument is specified, then character data is added as
/// the child of the new element.
/// The current node pointer does not change.  This node is still the parent of the appended child.
Method InsertElement(localName As %String, namespace As %String = "", ByRef child As %String, text As %String, qname As %String = "") As %String
{
}

/// Insert a new character data node to the list of children of this element node.
/// The new character data is inserted just before the specified child node.
/// The child node is specified by passing its NodeId.
/// The child node is passed by reference so that it may be updated with a new NodeId after the insert.
/// The nodeId of the inserted character data node is returned.
/// The current node pointer does not change.  This node is still the parent of the appended child.
Method InsertCharacter(text As %String, ByRef child As %String) As %String
{
}

/// Insert a copy of the specified node to the list of children of this node.
/// The node to copy may be from any document.
/// The new node is inserted just before the specified child node.
/// The child node is specified by passing its NodeId.
/// The child node is passed by reference so that it may be updated with a new NodeId after the insert.
/// The nodeId of the inserted node is returned.
/// The current node pointer does not change.
Method InsertNode(sourceNode As %XML.Node, ByRef child As %String, Output sc As %Status) As %String
{
}

/// Insert a copy of the specified node, including its children, to the list of children of this node.
/// The tree to copy may be from any document, but this node may not be a descendant of the source node.
/// The new node is inserted just before the specified child node.
/// The child node is specified by passing its NodeId.
/// The child node is passed by reference so that it may be updated with a new NodeId after the insert.
/// The nodeId of the inserted node is returned.
/// The current node pointer does not change.
Method InsertTree(sourceNode As %XML.Node, ByRef child As %String, Output sc As %Status) As %String
{
}

/// Replace this node with an element node.
Method ReplaceElement(localName As %String, namespace As %String = "", text As %String, qname As %String = "")
{
}

/// Replace this node with a character node.
Method ReplaceCharacter(text As %String)
{
}

/// Replace this node with a copy of the specified node.
/// The node to copy may be from any document.
/// The current node pointer does not change.
Method ReplaceNode(sourceNode As %XML.Node) As %Status
{
}

/// Replace this node with a copy of the specified node including all its children.
/// The tree to copy may be from any document, but this node may not be a descendant of the source node.
/// The current node pointer does not change.
Method ReplaceTree(sourceNode As %XML.Node) As %Status
{
}

/// Remove the current node and make its parent the current node.
Method Remove()
{
}

/// Get array of attributes:  ..AttributeList(name)=attribute
Method GetAttributeList() [ Internal ]
{
}

/// Return number of attributes for this element.
Method GetNumberAttributes() As %Integer [ CodeMode = expression ]
{
}

/// Return non-zero (true) if attribute named attributeName exists for this element.
Method AttributeDefined(attributeName As %String) As %String
{
}

/// Return attribute name for first attribute for this element.
Method FirstAttributeName() As %String
{
}

/// Return attribute name for last attribute for this element.
Method LastAttributeName() As %String
{
}

/// Return attribute name for next attribute for this element.
Method NextAttributeName(attributeName As %String) As %String
{
}

/// Return attribute name for previous attribute for this element.
Method PreviousAttributeName(attributeName As %String) As %String
{
}

/// Return attribute data of attribute named attributeName for this element.
/// 	<li><var>namespace</var> is the namespace URI from QName of attribute named attributeName for this element.</li>
/// 	<li><var>value</var> is the attribute value.</li>
/// 	<li><var>valueNamespace</var> is the namespace URI corresponding to the prefix when the attribute value is of the form "prefix:value".</li>
Method GetAttribute(attributeName As %String, ByRef namespace As %String, ByRef value As %String, ByRef valueNamespace As %String)
{
}

/// Return attribute data of attribute named attributeName in namespace for this element.
/// 	<li><var>value</var> is the attribute value.</li>
/// 	<li><var>valueNamespace</var> is the namespace URI corresponding to the prefix when the attribute value is of the form "prefix:value".</li>
Method GetAttributeNS(attributeName As %String, namespace As %String, ByRef value As %String, ByRef valueNamespace As %String)
{
}

/// Return namespace URI from QName of attribute named attributeName for this element.
Method GetAttributeNamespace(attributeName As %String) As %String
{
}

/// Return value of attribute named attributeName for this element.
Method GetAttributeValue(attributeName As %String) As %String
{
}

/// Return value of attribute named attributeName in namespace for this element.
Method GetAttributeValueNS(attributeName As %String, namespace As %String) As %String
{
}

/// Return QName of attribute named attributeName for this element.
Method GetAttributeQName(attributeName As %String) As %String
{
}

/// Return QName of attribute named attributeName in namespace for this element.
Method GetAttributeQNameNS(attributeName As %String, namespace As %String) As %String
{
}

/// Return namespace of value of attribute named attributeName for this element.
Method GetAttributeValueNamespace(attributeName As %String) As %String
{
}

/// Return namespace value of attribute named attributeName in namespace for this element.
Method GetAttributeValueNamespaceNS(attributeName As %String, namespace As %String) As %String
{
}

/// Set attribute data of attribute named attributeName for this element.
/// 	<li><var>namespace</var> is the namespace URI from QName of attribute named attributeName for this element.</li>
/// 	<li><var>value</var> is the attribute value.</li>
/// 	<li><var>valueNamespace</var> is the namespace URI corresponding to the prefix when the attribute value is of the form "prefix:value".</li>
Method SetAttribute(attributeName As %String, namespace As %String = "", value As %String = "", valueNamespace As %String = "")
{
}

/// Remove attribute named attributeName for this element.
Method RemoveAttribute(attributeName As %String)
{
}

/// Remove attribute named attributeName in namespace for this element.
Method RemoveAttributeNS(attributeName As %String, namespace As %String)
{
}

/// Verify if this node is an ancestor of the specified node.
/// Check if the referenced element contains the element specified by node id.
Method IsAncestor(nodeId As %String) As %Boolean [ Internal ]
{
}

/// Serialize this node as element
Method Serialize(Output endElementText) As %String
{
}

/// Get the class name the corresponds to this element.
/// Return "" if not found.
Method GetClassName(BaseClassName As %String) As %String [ Internal ]
{
}

}
