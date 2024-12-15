/// WARNING: This Class and its methods has been deprecated, please use the %SYS.LDAP class.
/// <br><br><br>
/// Entry object with attributes. (see <class>%Net.LDAP.Client.Entries</class>.<b>GetCurEntry()</b> Method)
Class %Net.LDAP.Client.Entry Extends (%RegisteredObject, %Collection.AbstractIterator) [ Inheritance = right, ServerOnly = 1, System = 4 ]
{

/// Entry DN
Property DN As %String [ Internal ];

/// Entry/attrib ID
Property ID As %Integer [ Internal ];

/// Parent Session
Property Parent As Session [ Internal ];

/// Current Attribute
Property CurrAttrib As %Integer [ Internal ];

/// Current Attribute
Property AttributeName As %String [ Internal ];

/// Destructor
Method %OnClose() As %Status [ Internal ]
{
}

/// Return DN (Distinguished Name)
Method GetDN() As %String
{
}

/// Return current Attrib name
Method GetAttribName() As %String
{
}

/// Return current Attrib ValueList.
/// Returns "" if there is no attribute.
/// $$$ISERR if failed to get the value,
/// otherwise returns value list object.
Method GetAttribValue(binary As %Boolean = 0) As %Net.LDAP.Client.ValueList
{
}

/// Edit/Modify current entry attributes.
/// <p>Returns EditEntry object, use the returned object to modify the attributes</p>
Method EditEntry() As %Net.LDAP.Client.EditEntry
{
}

/// Set the cursor to the first attribute.
/// Returns true if there is a first entry.
Method FirstAttrib() As %Boolean
{
}

/// Move the cursor to the next attribute.
/// Returns false if there are no more attributes.
Method NextAttrib() As %Boolean
{
}

/// Delete this entry. On success returns $$$OK, otherwise LDAP error.
Method DeleteDN() As %Status
{
}

/// Finds and returns the value of the Attribute associated with key.
/// GetAt returns the value of the element associated with key or
/// null string ("") if no element is found.
Method GetAt(Key As %String = "") As %RawString
{
}

/// Moves to the next key (atrribute name) at the location in the iteration,
/// and returns the associated value.
/// If the key is a null string (""), it starts from the beginning.
/// The value of key, which is passed by reference, is updated to the
/// key value of the returned element or null string ("") if key is at
/// the end of the array.
Method GetNext(ByRef key As %RawString) As %RawString
{
}

/// Returns the next atrribute name at the location in the iteration.
/// If key is a null string (""), then Next returns the first attribute
/// name
Method Next(key As %RawString = "") As %RawString
{
}

}
