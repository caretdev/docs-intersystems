/// WARNING: This Class and its methods has been deprecated, please use the %SYS.LDAP class.
/// <br><br><br>
/// Attribute Value. Used by PropList, or Entry classes.
/// See <class>%Net.LDAP.Client.PropList</class><b>.Insert()</b> or <class>%Net.LDAP.Client.Entry</class><b>.GetAttribValue()</b> methods.
Class %Net.LDAP.Client.ValueList Extends (%RegisteredObject, %Collection.AbstractIterator) [ Deprecated, Inheritance = right, ServerOnly = 1, System = 4 ]
{

/// Parent Session
Property Parent As Session [ Internal ];

/// List of values
Property ValueList As %List [ Internal ];

/// List of types
Property TypeList As %String [ Internal ];

/// Big object ID
/// Note: PropList may inbed this value list and increment the the reference to this objID
Property BigObjectID As %Integer [ Internal ];

/// If Values is binary
Property Binary As %Boolean [ Internal ];

/// Destructor
Method %OnClose() As %Status [ Internal ]
{
}

Method Init(ValueList As %List, TypeList As %List, ObjID As %Integer, binary As %Boolean) As %Boolean [ Internal ]
{
}

Method AllocBigObj() As %Integer [ Internal ]
{
}

/// Get the i-th value.
Method GetValue(index As %Integer) As %RawString
{
}

/// Get partial value as %string. Use to extract large values.
/// Note start position is zero based!!
Method GetPartialValue(index As %Integer, StartPos As %Integer, NumBytes As %Integer = 32767) As %String
{
}

/// Returns true if the entry is a large obj.
Method IsLargeObj(index As %Integer) As %Boolean [ Internal ]
{
}

/// Get the i-th entry len.
Method GetLen(index As %Integer) As %Boolean
{
}

/// Get the i-th type.
Method GetType(index As %Integer) As %Integer [ Internal ]
{
}

/// Get the i-th value into a stream. Returns $$$OK on success.
Method GetValueInStream(index As %Integer, stream As %Library.AbstractStream) As %Status
{
}

/// Get number of value entries.
Method GetNumItems() As %Integer
{
}

/// Append a String(s) value.
Method InsertBytes(v... As %String) As %Boolean [ Internal ]
{
}

/// Append a Big String as large value.
Method InsertBigStr(Value As %String) As %Status [ Internal ]
{
}

/// Allocate and init a Big Object in the value list.
Method InsertBigObjRef() As %Integer [ Internal ]
{
}

/// Append passed value to the end of last big obj; Return false on failure.
/// Under construction (Not tested!!)
Method InsertBigObj(Value As %RawString, index As %Integer, last As %Integer = 0) As %Status [ Internal ]
{
}

/// Append the contents of stream. Return the number of bytes written or $$$ISERR.
Method InsertStream(stream As %Library.AbstractStream, len As %Integer = -1) As %Integer [ Internal ]
{
}

/// Append a value to this value list object. Return $$$OK status,
/// otherwise related error.
/// <p>If the value is an abstract stream it will append the stream to the value list.
/// If the value is an abstract iterator it will iterate and store its contents.
/// Otherwise it will append/store the passed data as string or binary value. </p>
Method Insert(Value As %RawString) As %Status
{
}

/// Delete the i-th entry.
Method Delete(Index As %Integer) As %Boolean
{
}

/// Finds and returns the value associated with key.
/// Null string if no value is found.
Method GetAt(Key As %String = "") As %RawString
{
}

/// Moves to the next key at the location in the iteration,
/// and returns the associated value.
/// If the key is a null string (""), it starts from the beginning.
/// The value of key, which is passed by reference, is updated to the
/// key value of the index or null string ("") if key is at
/// the end of the list.
Method GetNext(ByRef key As %RawString) As %RawString
{
}

/// Returns the next key at the location in the iteration.
/// If key is a null string (""), then Next returns the first index (one).
/// Return "" string if key is out of bounds.
Method Next(key As %RawString = "") As %RawString
{
}

}
