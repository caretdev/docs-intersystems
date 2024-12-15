/// WARNING: This class and its methods are all deprecated; please use <class>%SYS.LDAP</class> class instead.
Class %Net.LDAP.Client.Session Extends %RegisteredObject [ ServerOnly = 1, System = 4 ]
{

/// Cleanup Get Values to return Cos %RawString and type overwrite using args
///
/// Session ID
Property SessionID As %Integer [ Internal ];

/// Shared library ID
Property SharedLibID As %Integer [ Internal ];

/// Search attributes only (Return no value)
Property SearchAttrsOnly As %Integer;

/// If set indicates that LDAP should chase
/// referrals/references returned in a search
Property Referrals As %Integer;

/// Size limit
Property MaxItems As %Integer;

Property ConvertFormat As %String [ Internal ];

/// Lib/DLL version function.
Property FNLibVer As %Integer [ Internal ];

/// Init function.
Property FNInit As %Integer [ Internal ];

/// Connect Function
Property FNConnect As %Integer [ Internal ];

/// SASL Connect Function
Property FNSASLConnect As %Integer [ Internal ];

/// Close Function
Property FNClose As %Integer [ Internal ];

/// GetLastError function
Property FNGetLastErr As %Integer [ Internal ];

/// GetLastError function
Property FNGetLastLibErr As %Integer [ Internal ];

/// GetErrStr function
Property FNGetErrStr As %Integer [ Internal ];

/// Add function
Property FNAdd As %Integer [ Internal ];

/// Delete function
Property FNDelete As %Integer [ Internal ];

/// Search entry(s) function
Property FNSearch As %Integer [ Internal ];

/// Delete Entry function
Property FNRelEntry As %Integer [ Internal ];

/// Get first entry
Property FNFirstEntry As %Integer [ Internal ];

/// Get next entry
Property FNNextEntry As %Integer [ Internal ];

/// Get next entry
Property FNGetEntryAttr As %Integer [ Internal ];

/// Delete Entry Name/DN
Property FNGetEntryDN As %Integer [ Internal ];

/// Get next entry
Property FNRelAttrib As %Integer [ Internal ];

/// Get attribute value function ID
Property FNAttribValue As %Integer [ Internal ];

/// Get attribute name function ID
Property FNAttribName As %Integer [ Internal ];

/// An entry first and next attribute iterator.
Property FNFirstAttrib As %Integer [ Internal ];

Property FNNextAttrib As %Integer [ Internal ];

Property FNRelBigObj As %Integer [ Internal ];

Property FNAddRefBigObj As %Integer [ Internal ];

Property FNNewBigObj As %Integer [ Internal ];

Property FNGetSubObj As %Integer [ Internal ];

Property FNAppendObj As %Integer [ Internal ];

Property FNRename As %Integer [ Internal ];

Property FNCompare As %Integer [ Internal ];

Property FNCommitChanges As %Integer [ Internal ];

Property FNGetFormat As %Integer [ Internal ];

/// Destructor
Method %OnClose() As %Status [ Internal ]
{
}

/// Constructor
Method %OnNew() As %Status [ Internal ]
{
}

/// Init LDAP client interface.
///
Method Init(Server As %String, port As %Integer) As %Status [ Internal ]
{
}

/// Establish connection to a LDAP server. You have to connect first before invoking other methods.
///
Method Connect(Server As %String = "127.0.0.1", port As %Integer = 0, UserName As %String = "", Password As %String = "", UseSSL As %Boolean = 0) As %Status
{
}

/// Authenticates client to an LDAP server using a SASL
/// (Simple Authentication and Security Layer) mechanism.
/// <a href=http://www.ietf.org/rfc/rfc2222.txt>(see RFC2222).</a>
/// <p>Note: The LDAP server must support that SASL mechanism for authentication.</p>
/// <p>You have to connect first before invoking any methods.</p>
/// <p>If the server sends a challenge to your client, check the
/// <b>ServerData</b> argument for the server's challenge. Call the <b>SASLConnect()</b> method again to send a
/// response to that challenge. </p>
/// <p>Example: </p>
/// <p>set comp=SASLConnect("localhost",0,"uid=u123,ou=people,o=isctest.com","abcMechanism","secret",srvData)</p>
/// <p>write:(comp=$$$OK) "Server credential is : ",srvData,!</p>
Method SASLConnect(Server As %String = "127.0.0.1", port As %Integer = 0, DistinguishedName As %String = "", AuthMechanism As %String, Credentials As %String, ByRef ServerData As %String) As %Status
{
}

/// Create a new entry
Method AddNewEntry(DN As %String, attribs As %Net.LDAP.Client.PropList) As %Status
{
}

/// Delete an entry
Method DeleteEntry(DN As %String) As %Status
{
}

/// Rename an entry
/// <p><b>DN</b> <b>D</b>istinguished <b>N</b>ame of the entry<p>
/// <p><b>NewRDN</b> New <b>R</b>elative <b>D</b>istinguished <b>N</b>ame to assign to the entry</p>
/// <p><b>NewParent</b> DN of the new parent to move the entry under.
/// Pass "" if you do not want to move the entry to a different location.</p>
/// <p><b>DelOldRDN</b> If 0, the old RDN is retained as an attribute in the modified entry </p>
Method RenameEntry(DN As %String, NewRDN As %String, NewParent As %String = "", DelOldRDN As %Boolean = 0) As %Status
{
}

/// Comapre an entry attribute value
/// <p><b>DN</b> <b>D</b>istinguished <b>N</b>ame of the entry.<p>
/// <p><b>Attrib</b> Attribute to compare its value.</p>
/// <p><b>Value</b> The value to compare with.</p>
/// <p><b>Binary</b> True if the value is binary.</p>
Method CompareEntryValue(DN As %String, Attrib As %String, Value As %RawString, Binary As %Boolean = 0) As %Boolean
{
}

/// Edit/Modify current entry attributes.
/// <p>Returns EditEntry object, use the returned object to modify the attributes</p>
Method EditEntry(DN As %String) As %Net.LDAP.Client.EditEntry
{
}

/// Get $list of supported controls, and extensions
Method TestDispControlList() As %Status [ Internal ]
{
}

/// Return last error associated with this session
Method GetLastError(ByRef errNum As %Integer = 0, ByRef errStr As %String = "") As %Status [ Internal ]
{
}

/// Return a new prop list object.
/// Used to maintain attribute and value pairs.See %Net.LDAP.Client.PropList object.
Method GetPropList() As %Net.LDAP.Client.PropList
{
}

/// Return a new StringList list object.
/// Used to maintain a list of strings i.e. list of attributes.
Method GetStringList() As %Net.LDAP.Client.PropList
{
}

/// Return a new value list object.
/// Value list is used to associate multiple values with an attribute.
/// See %Net.LDAP.Client.ValueList Object.
Method GetValueList(binary As %Boolean = 0) As %Net.LDAP.Client.ValueList
{
}

/// Search LDAP DB
/// <b>base</b>: search base
/// <p><b>scope</b>: 0==search base, 1==search one level,  2==search subtree</P>
/// <p><b>filter</b>: the search criteria <a href=http://www.ietf.org/rfc/rfc2254.txt>(see RFC2254).</a></P>
/// <p><b>attrs</b>: list of attributes to return per found entry.</P>
/// If search fails the returned value is $$$ISERR
Method Search(base As %String, scope As %Net.LDAP.Client.Search.Scope = 2, filter As %String, attrs As %Net.LDAP.Client.StringList = "", timeout As %Integer = 10000) As %Net.LDAP.Client.Entries
{
}

Method ConvertFromPlatStr(s As %String) As %String [ Internal ]
{
}

Method ConvertToPlatStr(s As %String, term As %Boolean = 1) As %String [ Internal ]
{
}

ClassMethod TestConnect(testnum As %Integer = 0, ByRef DC As %String, pwd As %String) As %Integer [ Internal ]
{
}

ClassMethod TestCreateDN(x As %Net.LDAP.Client.Session, DC As %String, ByRef cn As %String) As %String [ Internal ]
{
}

ClassMethod TestDump(x As %Net.LDAP.Client.Session, DC As %String, scope As %Net.LDAP.Client.Search.Scope = 2) As %Status [ Internal ]
{
}

ClassMethod TestDelete(x As %Net.LDAP.Client.Session, DN As %String) As %Status [ Internal ]
{
}

/// w ##class(%Net.LDAP.Client.Session).Test(0)
ClassMethod Test(testnum As %Integer = 0, scope As %Net.LDAP.Client.Search.Scope = 2) As %Integer [ Internal ]
{
}

///
/// foo As %Boolean = 0
ClassMethod Test1(testnum... As %Integer) As %Integer [ Internal ]
{
}

}
