/// WARNING: This Class and its methods has been deprecated, please use the %SYS.LDAP class.
/// <br><br><br>
/// Maintain a list of strings, (Used by <class>%Net.LDAP.Client.Session</class><b>.Search()</b> method)
/// This class cannot be %New()'d. Use the <class>%Net.LDAP.Client.Session</class>.<b><method>GetStringList()</method></b> method.
Class %Net.LDAP.Client.StringList Extends %RegisteredObject [ ServerOnly = 1, System = 4 ]
{

/// List of string items (usually attributes)
Property NameList As %List [ Internal ];

/// Parent Session
Property Parent As Session [ Internal ];

/// Constructor
Method %OnNew(par) As %Status [ Internal ]
{
}

/// Append  up to n optional string(s) to this list.
Method InsertStr(v... As %String) As %Boolean
{
}

/// Append a string or contents of an abstract iterator to this string list.
Method Insert(value As %RawString) As %Boolean
{
}

/// Get the i-th
Method Getith(index As %Integer) As %String [ Internal ]
{
}

}
