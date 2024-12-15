/// WARNING: This Class and its methods has been deprecated, please use the %SYS.LDAP class.
/// <br><br><br>
/// List of Entries returned from a search (See <class>%Net.LDAP.Client.Session</class>.<b>Search()</b> method)
Class %Net.LDAP.Client.Entries Extends (%RegisteredObject, %Collection.AbstractIterator) [ Inheritance = right, ServerOnly = 1, System = 4 ]
{

/// Session that returned this result set.
Property Parent As Session [ Internal ];

/// Search result set
Property ResultSet As %Integer [ Internal ];

/// Current entry/message
Property CurEntry As %Integer [ Internal ];

/// Destructor
Method %OnClose() As %Status [ Internal ]
{
}

/// Reset the cursor to the first entry.
Method FirstEntry() As %Boolean [ Internal ]
{
}

/// Change the cursor to the next entry.
/// Returns false/0 if there are no entries.
Method NextEntry() As %Boolean [ Internal ]
{
}

/// Get the current entry.
/// Will return 0, if the search result set is empty.
Method GetCurEntry() As %Net.LDAP.Client.Entry [ Internal ]
{
}

/// Get the current entry DN (Distinguished Name), returns "" if no Entry
Method GetCurEntryName() As %String [ Internal ]
{
}

/// Edit/Modify current entry attributes.
/// <p>Returns EditEntry object, use the returned object to modify the attributes</p>
Method EditCurEntry() As %Net.LDAP.Client.EditEntry
{
}

/// <p>Finds and returns the entry (<class>%Net.LDAP.Client.Entry</class>)
/// with DN of key.</p>
/// GetAt returns the entry associated with key or
/// null string ("") if no entry is found.</p>
Method GetAt(Key As %String = "") As %RawString
{
}

/// <p>Moves to the next entry at the location in the iteration,
/// and returns the associated entry object (<class>%Net.LDAP.Client.Entry</class>).</p>
/// If the key is a null string (""), it starts from the beginning.
/// The value of key, which is passed by reference, is updated to the
/// key value of the returned element or null string ("") if key is at
/// the end of the array.
Method GetNext(ByRef key As %RawString) As %RawString
{
}

/// Returns the next entry name at the location in the iteration.
/// If key is a null string (""), then Next returns the first entry
/// name
Method Next(key As %RawString = "") As %RawString
{
}

}
