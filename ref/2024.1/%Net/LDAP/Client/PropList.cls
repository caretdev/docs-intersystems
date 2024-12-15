/// WARNING: This Class and its methods has been deprecated, please use the %SYS.LDAP class.
/// <br><br><br>
/// List of attributes and values, used to create a new entry.
/// (See <class>%Net.LDAP.Client.Session</class><b>.AddNewEntry()</b> method)
/// This class cannot be %New()'d. Use session.GetPropList method.
///
Class %Net.LDAP.Client.PropList Extends %RegisteredObject [ ServerOnly = 1, System = 4 ]
{

/// Parent Session
Property Parent As Session [ Internal ];

/// List of attributes
Property NameList As StringList [ Internal ];

/// List of values
Property ValueList As %List [ Internal ];

/// List of types
Property TypeList As %String [ Internal ];

/// List of types
Property FuncList As %String [ Internal ];

/// Fetch a large object value
Method GetLargeVal(objid As %Integer, offset As %Integer, len As %Integer) As %String [ Internal ]
{
}

Method %OnClose() As %Status [ Internal ]
{
}

/// Insert a string value
Method AddToLists(name As %String, V As %String, type As %String, func As %Integer = 0) As %Status [ Internal ]
{
}

/// Append a value list.
Method InsertValue(Name As %String, V As %Net.LDAP.Client.ValueList, func As %Integer = 0) As %Status [ Internal ]
{
}

/// Append an attribute and value pair to this property list object. Return $$$OK status,
/// otherwise related error.
/// <p>If the value is <class>%Net.LDAP.Client.ValueList</class>, it will use that as is.
/// If the Value is Stream, it will read the stream as value.
/// If the Value is <class>%Collection.AbstractIterator</class>, it will iterate the collection, and use the returned value(s).
/// Otherwise it will store the passed object as value. </p>
/// <p><b>IsBinary</b> is required if the value is binary data i.e. an image </p>
/// <p><b>func</b> arg is used internally </p>
Method Insert(Attribute As %String, Value As %RawString, IsBinary As %Boolean = 0, func As %Integer = 0) As %Status
{
}

/// Checks if the attrib and value pairs are set properly.
Method IsValid() As %Boolean [ Internal ]
{
}

}
