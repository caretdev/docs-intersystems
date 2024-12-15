///  Provides database queries from other namespaces than %SYS.<br>
///  <br>
///
Class %SYS.DatabaseQuery Extends %SYSTEM.Help [ Abstract, System = 4 ]
{

///  Default Localization Domain
Parameter DOMAIN = "%Utility";

///  Calculate remaining free space in a database.<br><br>
///  Parameters:<br>
///  Directory - Physical directory of the database.<br>
///  Freespace - (byref) Returned # of MB of freespace in the directory.<br><br>
///  Note: This requires %Admin_Operate:USE permission
ClassMethod GetDatabaseFreeSpace(Directory As %String, ByRef FreeSpace As %Float) As %Status
{
}

///  Calculate remaining free space in a database.<br><br>
///  Parameters:<br>
///  Directory - Physical directory of the database.<br>
///  Freespace - (byref) Returned # of MB of freespace in the directory.<br>
///  FreeBlocks - (byref) Returned # of blocks of freespace in the directory.<br><br>
///  Note: This requires %Admin_Operate:USE permission
ClassMethod GetFreeSpace(Directory As %String, ByRef FreeSpace As %Float, ByRef FreeBlocks As %Integer) As %Status
{
}

///  Provides a freespace list of all local databases mounted in this configuration.
///  <br><br>
///  Note that calculating the free space may take a while.<br>
///  Parameters:<br>
///  Mask="*" or $lb(directory1,directory2,...)<br>
///  For the FreeSpace Report, You can also enter the following in order to select by database name:<br>
///  <var>"String,String1"</var> - Any name matching one of these elements<br>
///  <var>"String*"</var> - Any Name starting with "String"<br>
///  <var>"String,String1*,String2"</var> - Any Name matching one of these elements, or starting with "String1"<br>
///  Notes:
///  Databases which are not mounted are not returned by this query.<br>
///  This requires %Admin_Operate:USE permission
ClassMethod FreeSpaceExecute(ByRef qHandle As %Binary, Mask As %String = "*") As %Status [ Internal ]
{
}

ClassMethod FreeSpaceFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod FreeSpaceClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = FreeSpaceExecute ]
{
}

}
