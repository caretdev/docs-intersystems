/// <p>This is an automatically generated class, offering a functionally equivalent set of methods and queries as <class>%iKnow.Utils.MaintenanceAPI</class>, exposed as WebMethod methods.</p><p>See the classdocs for <class>%iKnow.Utils.MaintenanceAPI</class> for more information.</p>
Class %iKnow.Utils.MaintenanceWSAPI Extends %iKnow.Queries.AbstractWSAPI [ Deprecated, System = 4 ]
{

///  Adds an existing entity (by ID) to a SkipList.
/// For cross-domain SkipLists, use <method>AddStringToSkipList</method>
ClassMethod AddEntityToSkipList(domainId As %Integer, skipListId As %Integer, entUniId As %Integer) As %Boolean [ WebMethod ]
{
}

///  Adds a string to a SkipList, adding it as an entity if it didn't exist in the domain before.
ClassMethod AddStringToSkipList(domainId As %Integer, skipListId As %Integer, string As %String) As %Boolean [ WebMethod ]
{
}

///  <p>Adds a single entry to a User Dictionary at <var>position</var>. If <var>position</var> <= 0 (default),
///  it is added at the bottom of the list, otherwise at the requested position, shifting
///  existing entries down if it was already taken.</p>
///  <p><b>Deprecated</b>: please use AddEntry() in <class>%iKnow.UserDictionary</class></p>
ClassMethod AddUserDictionaryEntry(userDictId As %Integer, rewriteFrom As %String, rewriteTo As %String, position As %Integer = 0) As %Boolean [ WebMethod ]
{
}

/// Clears the contents of a single SkipList.
ClassMethod ClearSkipList(pDomainId As %Integer, pSkipListId As %Integer) As %Boolean [ WebMethod ]
{
}

///  <p>Create a new SkipList with the given name and description</p>
ClassMethod CreateSkipList(domainId As %Integer, name As %String, description As %String = "") As %Library.Integer [ WebMethod ]
{
}

///  <p>This method creates a User Dictionary with a given <var>name</var> and optional <var>description</var> and
///  returns the created user dictionary ID afterwards. This method will return -1 if an error occurred,
///  which is passed by reference as <var>sc</var>.</p>
///  <p><b>Deprecated</b>: please use %New() in <class>%iKnow.UserDictionary</class></p>
ClassMethod CreateUserDictionary(name As %String, description As %String = "") As %Library.Integer [ WebMethod ]
{
}

///  Drops a SkipList (entities part of the list will not be deleted from the domain)
ClassMethod DropSkipList(domainId As %Integer, skipListId As %Integer) As %Boolean [ WebMethod ]
{
}

///  This method drops the User Dictionary identified by the supplied <var>userDictId</var>,
///  including all its entries.
///  <p><b>Deprecated</b>: please use %DeleteId() in <class>%iKnow.UserDictionary</class></p>
ClassMethod DropUserDictionary(userDictId As %Integer) As %Boolean [ WebMethod ]
{
}

///  Retrieves a list of all the strings in the specified SkipList
ClassMethod GetSkipListElements(domainId As %Integer, skipListId As %Integer) As %XML.DataSet [ WebMethod ]
{
}

///  Finds the SkipList ID corresponding to the supplied name.
ClassMethod GetSkipListId(domainId As %Integer, name As %String) As %Library.Integer [ WebMethod ]
{
}

///  Retrieves a list of all the SkipLists registered in this domain.
ClassMethod GetSkipLists(domainId As %Integer, pIncludeCrossDomain As %Boolean = 0) As %XML.DataSet [ WebMethod ]
{
}

///  Returns a list of all the User Dictionaries in this namespace.
///  <p><b>Deprecated</b>: please use <class>%iKnow.UserDictionary</class></p>
ClassMethod GetUserDictionaries() As %XML.DataSet [ WebMethod ]
{
}

///  <p>Returns the contents of a User Dictionary.</p>
///  <p><b>Deprecated</b>: please use GetEntries() in <class>%iKnow.UserDictionary</class></p>
ClassMethod GetUserDictionaryEntries(userDictId As %Integer) As %XML.DataSet [ WebMethod ]
{
}

///  Returns the ID corresponding to the supplied User Dictionary <var>name</var>.
///  <p><b>Deprecated</b>: please use NameIndexOpen() <class>%iKnow.UserDictionary</class></p>
ClassMethod GetUserDictionaryId(name As %String) As %Library.Integer [ WebMethod ]
{
}

/// Returns whether or not there are any SkipLists in the domain
ClassMethod HasSkipLists(pDomainId As %Integer) As %Library.Boolean [ WebMethod ]
{
}

///  Removes an entity (by ID) from a SkipList (but not from the domain)
/// For cross-domain SkipLists, use <method>RemoveStringFromSkipList</method>
ClassMethod RemoveEntityFromSkipList(domainId As %Integer, skipListId As %Integer, entUniId As %Integer) As %Boolean [ WebMethod ]
{
}

///  Removes a string from a SkipList (but not from the domain)
ClassMethod RemoveStringFromSkipList(domainId As %Integer, skipListId As %Integer, string As %String) As %Boolean [ WebMethod ]
{
}

///  <p>Removes the User Dictionary entry registered at <var>position</var>. This method will
///  not impact the order or position of any remaning entries.</p>
///  <p><b>Deprecated</b>: please use RemoveEntry() in <class>%iKnow.UserDictionary</class></p>
ClassMethod RemoveUserDictionaryEntry(userDictId As %Integer, position As %Integer) As %Boolean [ WebMethod ]
{
}

/// Returns whether or not the SkipList identified by <var>skipListId</var> contains the
/// supplied entity.
ClassMethod SkipListContainsElement(domainId As %Integer, skipListId As %Integer, entUniId As %Integer) As %Library.Boolean [ WebMethod ]
{
}

/// Returns whether or not the SkipList identified by <var>skipListId</var> contains the
/// supplied entity.
ClassMethod SkipListContainsString(domainId As %Integer, skipListId As %Integer, entity As %String) As %Library.Boolean [ WebMethod ]
{
}

Parameter NAMESPACE = "http://www.intersystems.com/iKnow/Utils/MaintenanceWSAPI";

Parameter SERVICENAME = "iKnow.Utils.MaintenanceWSAPI";

Parameter USECLASSNAMESPACES = 1;

}
