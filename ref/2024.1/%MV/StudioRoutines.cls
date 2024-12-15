Class %MV.StudioRoutines Extends %Studio.AbstractDocument [ ServerOnly = 1, System = 4 ]
{

ClassMethod ItemList(Idx As %Integer, Ext As %String, ByRef Work As %String, Start As %String, End As %String, Directory As %String, Sort As %Integer, System As %Boolean, Flat As %Boolean, ShowGenerated As %Boolean, ByRef NewFormat As %Boolean) As %Status
{
}

ClassMethod OpenProgramFile(ByRef sourceFileObj, ByRef prog As %String, name As %String, createFlg As %Boolean) As %Status
{
}

/// Delete the routine 'name' which includes the routine extension
ClassMethod Delete(name As %String) As %Status
{
}

///   Return the timestamp of routine 'name' in %TimeStamp format. This is used to determine if the routine has
///   been updated on the server and so needs reloading from Studio. So the format should be $zdatetime($horolog,3),
///   or "" if the routine does not exist.
ClassMethod TimeStamp(name As %String) As %TimeStamp
{
}

/// Return 1 if the routine 'name' exists and 0 if it does not.
ClassMethod Exists(name As %String) As %Boolean
{
}

/// Load the document
Method Load() As %Status
{
}

/// Save the routine stored in Code
Method Save() As %Status
{
}

/// Compile the routine
Method CompileDocument(ByRef qstruct As %String) As %Status
{
}

/// Return other document types that this is related to
ClassMethod GetOther(name As %String) As %String
{
}

}
