/// Abstract Document used to load a folder item (e.g. dashboard) definition into Studio.
Class %DeepSee.UI.FolderItemDocument Extends %Studio.AbstractDocument [ ClassType = "", ProcedureBlock, System = 4 ]
{

Parameter EXTENSION = ".DFI";

/// Load the folder item definition into the stream Code<br>
Method Load() As %Status
{
}

/// Save the folder item definition document.
Method Save() As %Status
{
}

/// Save the folder item definition document from stream to global.
ClassMethod ImportStream(pName As %String, pStream As %GlobalCharacterStream) As %Status
{
}

/// Delete the folder item definition <var>name</var>.
ClassMethod Delete(name As %String) As %Status
{
}

///
/// Return the timestamp of folder item 'name' in %TimeStamp format, i.e. $zdatetime($horolog,3).
/// This is used to determine if the folder item has been updated on the server and so needs reloading into Studio.
/// So the format should be $zdatetime($horolog,3), or "" if the folder item does not exist.
ClassMethod TimeStamp(name As %String) As %TimeStamp
{
}

/// Return the compile time of routine 'name' in %TimeStamp format. The format should be $zdatetime($horolog,3),
/// or "" if the routine does not exist.
ClassMethod CompileTime(name As %String) As %TimeStamp [ CodeMode = expression ]
{
}

/// Return 1 if the given folder item document exists and 0 if it does not.
ClassMethod Exists(name As %String) As %Boolean
{
}

ClassMethod ListExecute(ByRef qHandle As %Binary, Directory As %String = "", Flat As %Boolean = "", System As %Boolean = "", pShowAll As %Boolean = 1, pFolderClass As %String = "") As %Status
{
}

ClassMethod ListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = ListExecute ]
{
}

ClassMethod ListClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = ListFetch ]
{
}

/// Export this document to the current device in XML format
Method ExportToXML(flags As %String) As %Status
{
}

/// Import from the stream in XML format
Method ImportFromXML(stream As %RegisteredObject, flags As %String) As %Status
{
}

/// Copied from Ens.Util.XML.Reader
ClassMethod ChangeXMLStreamEncoding(pSource As %CharacterStream, pEncoding As %String = "", ByRef pTarget As %CharacterStream = "", Output pStatus) As %CharacterStream [ Internal ]
{
}

/// Copied from Ens.Util.XML.Reader
ClassMethod ChangeXMLEncoding(pString As %String, pEncoding As %String = "") As %String [ Internal ]
{
}

}
