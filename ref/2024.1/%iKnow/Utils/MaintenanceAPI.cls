///  <p>This API groups a number of utility and maintenance operations and queries.</p>
Class %iKnow.Utils.MaintenanceAPI Extends %iKnow.Queries.AbstractAPI [ Deprecated, System = 4 ]
{

///  <p>Adds a string as a new entity to the domain with frequency and spread equal to 0, returning the
///  ID of the new entity. If the string already exists as an entity in the domain, this method will
///  simply return its ID.</p>
///  <p><var>pLanguage</var> is only used when this domain is enabled for stemming.</p>
///  <p>Note: This method is intended for internal use only.</p>
ClassMethod AddEntity(domainId As %Integer, value As %String, Output sc As %Status = {$$$OK}, pLanguage As %String = "en") As %Integer [ Internal ]
{
}

///  <p>Create a new SkipList with the given name and description</p>
ClassMethod CreateSkipList(domainId As %Integer, name As %String, description As %String = "", Output sc As %Status = {$$$OK}) As %Integer
{
}

ClassMethod CreateBlackList(domainId As %Integer, name As %String, description As %String = "", Output sc As %Status = {$$$OK}) As %Integer [ Deprecated, Internal ]
{
}

ClassMethod CreateSkipListInternal(domainId As %Integer, name As %String, description As %String = "", mgrClass As %String = "", Output sc As %Status = {$$$OK}) As %Integer [ Internal ]
{
}

Parameter DropSkipListEXP [ Internal ] = 1;

///  Drops a SkipList (entities part of the list will not be deleted from the domain)
ClassMethod DropSkipList(domainId As %Integer, skipListId As %Integer) As %Status
{
}

ClassMethod DropBlackList(domainId As %Integer, blackListId As %Integer) As %Status [ Deprecated, Internal ]
{
}

Parameter ClearSkipListEXP [ Internal ] = 1;

/// Clears the contents of a single SkipList.
ClassMethod ClearSkipList(pDomainId As %Integer, pSkipListId As %Integer) As %Status
{
}

ClassMethod ClearBlackList(pDomainId As %Integer, pSkipListId As %Integer) As %Status [ Deprecated, Internal ]
{
}

///  Finds the SkipList ID corresponding to the supplied name.
ClassMethod GetSkipListId(domainId As %Integer, name As %String, Output sc As %Status = {$$$OK}) As %Integer
{
}

ClassMethod GetBlackListId(domainId As %Integer, name As %String, Output sc As %Status = {$$$OK}) As %Integer [ Deprecated, Internal ]
{
}

/// Returns whether or not there are any SkipLists in the domain
ClassMethod HasSkipLists(pDomainId As %Integer) As %Boolean
{
}

ClassMethod HasBlackLists(pDomainId As %Integer) As %Boolean [ Deprecated, Internal ]
{
}

Parameter GetSkipListsRT = "skipListId:%Integer,name:%String,description:%String";

///  Retrieves a list of all the SkipLists registered in this domain.
ClassMethod GetSkipLists(ByRef result, domainId As %Integer, pIncludeCrossDomain As %Boolean = 0) As %Status
{
}

ClassMethod GetBlackLists(ByRef result, domainId As %Integer, pIncludeCrossDomain As %Boolean = 0) As %Status [ Deprecated, Internal ]
{
}

Parameter GetSkipListElementsRT = "entUniId:%Integer,entity:%String";

///  Retrieves a list of all the strings in the specified SkipList
ClassMethod GetSkipListElements(ByRef result, domainId As %Integer, skipListId As %Integer) As %Status
{
}

ClassMethod GetBlackListElements(ByRef result, domainId As %Integer, blackListId As %Integer) As %Status [ Deprecated, Internal ]
{
}

/// Returns whether or not the SkipList identified by <var>skipListId</var> contains the
/// supplied entity.
ClassMethod SkipListContainsElement(domainId As %Integer, skipListId As %Integer, entUniId As %Integer, Output pSC As %Status = {$$$OK}) As %Boolean
{
}

ClassMethod BlacklistContainsElement(domainId As %Integer, blackListId As %Integer, entUniId As %Integer, Output pSC As %Status = {$$$OK}) As %Boolean [ Deprecated, Internal ]
{
}

/// Returns whether or not the SkipList identified by <var>skipListId</var> contains the
/// supplied entity.
ClassMethod SkipListContainsString(domainId As %Integer, skipListId As %Integer, entity As %String, Output pSC As %Status = {$$$OK}) As %Boolean
{
}

ClassMethod BlacklistContainsString(domainId As %Integer, blackListId As %Integer, entity As %String, Output pSC As %Status = {$$$OK}) As %Boolean [ Deprecated, Internal ]
{
}

Parameter AddEntityToSkipListEXP [ Internal ] = 1;

///  Adds an existing entity (by ID) to a SkipList.
/// For cross-domain SkipLists, use <method>AddStringToSkipList</method>
ClassMethod AddEntityToSkipList(domainId As %Integer, skipListId As %Integer, entUniId As %Integer) As %Status
{
}

ClassMethod AddEntityToBlackList(domainId As %Integer, blackListId As %Integer, entUniId As %Integer) As %Status [ Deprecated, Internal ]
{
}

Parameter AddStringToSkipListEXP [ Internal ] = 1;

///  Adds a string to a SkipList, adding it as an entity if it didn't exist in the domain before.
ClassMethod AddStringToSkipList(domainId As %Integer, skipListId As %Integer, string As %String) As %Status
{
}

ClassMethod AddStringToBlackList(domainId As %Integer, blackListId As %Integer, string As %String) As %Status [ Deprecated, Internal ]
{
}

Parameter RemoveEntityFromSkipListEXP [ Internal ] = 1;

///  Removes an entity (by ID) from a SkipList (but not from the domain)
/// For cross-domain SkipLists, use <method>RemoveStringFromSkipList</method>
ClassMethod RemoveEntityFromSkipList(domainId As %Integer, skipListId As %Integer, entUniId As %Integer) As %Status
{
}

ClassMethod RemoveEntityFromBlackList(domainId As %Integer, blackListId As %Integer, entUniId As %Integer) As %Status [ Deprecated, Internal ]
{
}

Parameter RemoveStringFromSkipListEXP [ Internal ] = 1;

///  Removes a string from a SkipList (but not from the domain)
ClassMethod RemoveStringFromSkipList(domainId As %Integer, skipListId As %Integer, string As %String) As %Status
{
}

ClassMethod RemoveStringFromBlackList(domainId As %Integer, blackListId As %Integer, string As %String) As %Status [ Deprecated, Internal ]
{
}

ClassMethod GetStemId(pDomainId As %Integer, pEntId As %Integer, vSrcId As %Integer = 0) As %Integer [ Internal ]
{
}

/// Internal method building the required data structures for runtime SkipList use.
ClassMethod BuildSkipList(pDomainId As %Integer, pSkipListSpec As %String, vSrcId As %Integer = 0, pUseStem = 0) [ Internal ]
{
}

///  <p>This method creates a User Dictionary with a given <var>name</var> and optional <var>description</var> and
///  returns the created user dictionary ID afterwards. This method will return -1 if an error occurred,
///  which is passed by reference as <var>sc</var>.</p>
///  <p><b>Deprecated</b>: please use %New() in <class>%iKnow.UserDictionary</class></p>
ClassMethod CreateUserDictionary(name As %String, description As %String = "", Output sc As %Status) As %Integer [ Deprecated ]
{
}

Parameter DropUserDictionaryEXP [ Internal ] = 1;

///  This method drops the User Dictionary identified by the supplied <var>userDictId</var>,
///  including all its entries.
///  <p><b>Deprecated</b>: please use %DeleteId() in <class>%iKnow.UserDictionary</class></p>
ClassMethod DropUserDictionary(userDictId As %Integer) As %Status [ Deprecated ]
{
}

///  Returns the ID corresponding to the supplied User Dictionary <var>name</var>.
///  <p><b>Deprecated</b>: please use NameIndexOpen() <class>%iKnow.UserDictionary</class></p>
ClassMethod GetUserDictionaryId(name As %String) As %Integer [ Deprecated ]
{
}

Parameter GetUserDictionariesRT = "userDictId:%Integer,name:%String,description:%String";

///  Returns a list of all the User Dictionaries in this namespace.
///  <p><b>Deprecated</b>: please use <class>%iKnow.UserDictionary</class></p>
ClassMethod GetUserDictionaries(ByRef result) As %Status [ Deprecated ]
{
}

Parameter AddUserDictionaryEntryEXP [ Internal ] = 1;

///  <p>Adds a single entry to a User Dictionary at <var>position</var>. If <var>position</var> <= 0 (default),
///  it is added at the bottom of the list, otherwise at the requested position, shifting
///  existing entries down if it was already taken.</p>
///  <p><b>Deprecated</b>: please use AddEntry() in <class>%iKnow.UserDictionary</class></p>
ClassMethod AddUserDictionaryEntry(userDictId As %Integer, rewriteFrom As %String, rewriteTo As %String, ByRef position As %Integer = 0) As %Status [ Deprecated ]
{
}

Parameter RemoveUserDictionaryEntryEXP [ Internal ] = 1;

///  <p>Removes the User Dictionary entry registered at <var>position</var>. This method will
///  not impact the order or position of any remaning entries.</p>
///  <p><b>Deprecated</b>: please use RemoveEntry() in <class>%iKnow.UserDictionary</class></p>
ClassMethod RemoveUserDictionaryEntry(userDictId As %Integer, position As %Integer) As %Status [ Deprecated ]
{
}

Parameter GetUserDictionaryEntriesRT = "position:%Integer,rewriteFrom:%String,rewriteTo:%String";

///  <p>Returns the contents of a User Dictionary.</p>
///  <p><b>Deprecated</b>: please use GetEntries() in <class>%iKnow.UserDictionary</class></p>
ClassMethod GetUserDictionaryEntries(ByRef result, userDictId As %Integer) As %Status [ Deprecated ]
{
}

}
