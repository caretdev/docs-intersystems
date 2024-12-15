Class %XML.XPATH.DOMResult Extends %XML.XPATH.Result [ System = 4 ]
{

/// Public property, contains the current path to the containing element
Property Path As %String;

/// Public property, Only applicable to element nodes. Returns the number of attributes on the current node.
Property AttributeCount As %Integer;

/// Public property, true if the reader is positioned at the end of the stream; otherwise, false.
Property EOF As %Boolean;

/// Public property, Gets a value indicating whether the current node has any attributes.
/// true if the current node has attributes; otherwise, false.
Property HasAttributes As %Boolean;

/// Public property, returns true if the node on which the reader is currently positioned can have a Value;
Property HasValue As %Boolean;

/// Public property, The qualified name of the current node. The name returned is dependent on the NodeType of the node.
Property Name As %String;

/// Public property, The unqualified name of the current node. The name returned is dependent on the NodeType of the node.
Property LocalName As %String;

/// Public property, The uri of the current node. The name returned is dependent on the NodeType of the node.
Property Uri As %String;

/// Public property, contains the node type of the current node as indicated by the
/// following table:-
///
/// Node Type
/// ---------
/// attribute
/// chars
/// cdata
/// comment
/// document
/// documentfragment
/// documenttype
/// element
/// entity
/// entityreference
/// notation
/// processinginstruction
Property NodeType As %String;

/// Public property, returns the current read state of the reader
/// The following table lists the states and their meanings
/// State        Meaning
/// -----        -------
/// eof          The end of the file has been reached successfully.
/// initial      The Read method has not been called.
/// cursoractive The Read method has been called. Additional methods may be called on the reader.
Property ReadState As %String;

/// Public property, returns the value of the current node. If the value is <32k in length then a string
/// will be returned, if greater then a character stream
Property Value;

Property attrseq As %Integer [ Private ];

Property seq As %Integer [ Private ];

Method %LoadData(id As %String) As %Status [ Private, ProcedureBlock = 1 ]
{
}

/// AttributeCount Implementation
Method AttributeCountGet() As %Integer
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

/// Path Implementation
Method PathGet() As %String
{
}

/// HasValue Implementation
Method HasValueGet() As %Boolean
{
}

///  Moves to the attribute with the specified index. Returns 'true' on success, 'false' otherwise
Method MoveToAttributeIndex(pIndex As %String) As %Boolean
{
}

/// Move to the attribute with the specified name. Returns 'true' on success, 'false' otherwise
Method MoveToAttributeName(pName As %String, pUri As %String = "") As %Boolean
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

Method LocalNameGet() As %String
{
}

Method UriGet() As %String
{
}

/// NodeType implementation
Method NodeTypeGet() As %String
{
}

/// Reads the next node from the stream.
/// Returns true if the next node was read successfully; false if there are no more nodes to read.
/// When an DOMResult is first created and initialized, there is no information available. You must
/// call Read to read the first node.
Method Read() As %Boolean
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
Method ValueGet()
{
}

}
