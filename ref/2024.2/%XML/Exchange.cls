/// The <class>%XML.Exchange</class> class provides an interface for managing XML representations of objects.
Class %XML.Exchange Extends %RegisteredObject [ Abstract, System = 4 ]
{

/// Export all Exchange Items from the system to a directory.
ClassMethod ExportAllDir(dir As %String = "", qspec As %String = "", ByRef errorlog As %String, Charset As %String = "", ByRef exported As %GlobalCharacterStream = {##class(%GlobalCharacterStream).%New()}) As %Status
{
}

/// Export all Exchange Items from a given table to a directory.
ClassMethod ExportTableDir(class As %String = "", dir As %String = "", qspec As %String = "", ByRef errorlog As %String, Charset As %String = "", ByRef exported As %GlobalCharacterStream = {##class(%GlobalCharacterStream).%New()}) As %Status
{
}

/// Export Exchange Items to a directory.
/// <p>The directory structure created is based on the type of Exchange Items being exported.  The file names used can be controlled by the /name qualifier.
/// <p>Each of the <var>items</var> must be of a type that extends the %XML.Exchange.Adaptor class.
/// If exporting multiple Exchange Items pass the items("oid")="" as an array.
ClassMethod ExportDir(items As %String = "", dir As %String = "", qspec As %String = "", ByRef errorlog As %String, Charset As %String = "", ByRef exported As %GlobalCharacterStream = {##class(%GlobalCharacterStream).%New()}, header As %Boolean = 1) As %Status
{
}

/// Export Exchange Items to an XML file
/// <p>Each of the <var>items</var> must be of a type that extends the %XML.Exchange.Adaptor class:
/// If exporting multiple Exchange Items pass the items("oid")="" as an array.
/// <p>
/// If the output filename is empty, matching Exchange Items will be exported to the current device.
ClassMethod Export(items As %String = "", ByRef filename As %String = "", qspec As %String = "", ByRef errorlog As %String, Charset As %String = "") As %Status
{
}

/// Load all Exchange Items from XML files in a directory.
ClassMethod LoadDir(dir As %String = "", qspec As %String = "", ByRef errorlog As %String, recurse As %Boolean = 1, ByRef loaded As %GlobalCharacterStream = {##class(%GlobalCharacterStream).%New()}, listonly As %Boolean = 0, ByRef selectedlist As %String, header As %Boolean = 1) As %Status
{
}

/// Load a file from disk.
/// <p>Load Exchange Items from the file <var>file</var>. Returns an stream of Exchange Items it loaded in <var>loaded</var>,
/// You may give it a list of files to load
/// via a single subscripted array. If you pass <var>listonly</var> as true then it will not
/// load anything but just list the Exchange Items that exist in the files that you supply it.<br>
/// If <var>selecteditems</var> is defined then this will contain a single subscripted array
/// of items to load. It will only load items that are in this list from the file/s
/// provided, so this provides a way to limit which items get loaded.<br>
/// <var>qspec</var> is a list of qualifiers which can be displayed with 'Do ##class(%XML.Exchange).ShowQualifiers()'
ClassMethod Load(ByRef filename As %String = "", qspec As %String = "", ByRef errorlog As %String, ByRef loaded As %GlobalCharacterStream = {##class(%GlobalCharacterStream).%New()}, listonly As %Boolean, ByRef selecteditems As %String, displayname As %String, header As %Boolean = 1, charset As %String = "") As %Status
{
}

/// Remove contents from the list of unknown GUIDs.
ClassMethod GetContentGUIDs(file As %String, obj As %RegisteredObject) As %Status [ Internal ]
{
}

/// Takes an object referece so that it can support serial objects.
ClassMethod GetReferences(Obj As %RegisteredObject, ByRef references As %String, qstruct As %String, ReferenceDepth As %Numeric, ByRef ReferencesLimited As %Boolean = 0) As %Status [ Private ]
{
}

/// Oids potentially contain any character.  Therefore no delimited strings are supported.
ClassMethod normalizeItems(list As %String, ByRef items As %String) As %Status [ Private ]
{
}

/// Internal method to export a list of items to a file.
/// Items to be exported may be preloaded into the "selected" list.
ClassMethod exportItems(filename As %String, ByRef qspec As %String, ByRef items As %String, Charset As %String) As %Status [ Private ]
{
}

/// Get full normalised path to the external file that would be exported to given a root directory.
/// Qualifiers can be used to indicate the naming convention to be used.
ClassMethod GetPath(Root As %String, Oid As %List, qspec As %String = "") As %String
{
}

/// Returns the filename to be used for an item based on the selected qualifiers.
ClassMethod GetName(Oid As %List = "", Guid As %String = "", ByRef qstruct) As %String [ Private ]
{
}

/// Returns a description to be used for the element.
/// This value is based on the objects XMLExchangeName method.
ClassMethod GetDescription(Oid As %String) As %String
{
}

/// This method will assign GUIDs to all Exchange Items of the system without a GUID.
ClassMethod AssignGUIDs() As %Status
{
}

/// This method looks for inconsistencies in the GUID allocation.
/// It may optionally correct problems if possible.
/// <br>
/// The identifiable issues and their resolutions are:<ul>
///  <li> GUID entry missing OID cross reference<ul>
///        <li> If the object exists then add the OID cross reference
///        <li> If the object does not exist then remove the GUID entry </ul>
///  <li> GUID entry conflicts with OID cross reference<ul>
///        <li> Manual intervention required </ul>
///  <li> GUID entry for missing object<ul>
///        <li> Remove both the GUID entry and the OID cross reference </ul>
///  <li> GUID entry for missing class<ul>
///        <li> Remove both the GUID entry and the OID cross reference </ul>
///  <li> OID cross reference missing GUID entry<ul>
///        <li> If the object exists add the GUID entry
///        <li> If the object does not exist remove the OID cross reference </ul>
///  <li> OID cross reference conflicts with GUID entry<ul>
///        <li> Manual intervention required </ul>
/// </ul><br>
/// The method will output results as the check proceeds and show a tally
/// when the check is complete.
ClassMethod CheckGUIDs(ApplyChange As %Boolean = 0) As %Status
{
}

/// Initialise Qualifier details
ClassMethod initQualifier(group As %String, ByRef qtable As %String) [ Private ]
{
}

/// Display the list of qualifiers defined in the system.
ClassMethod ShowQualifiers(group As %String = "XML.Exchange")
{
}

/// Parse Qualifier details
ClassMethod qualifierParse(group As %String, qspec As %String = "", ByRef qstruct As %String) [ Private ]
{
}

}
