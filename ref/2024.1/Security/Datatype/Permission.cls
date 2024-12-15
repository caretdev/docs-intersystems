Class Security.Datatype.Permission Extends %Integer [ OdbcType = VARCHAR, System = 2 ]
{

ClassMethod DisplayToLogical(%val As %String) As %Integer [ Internal ]
{
}

ClassMethod LogicalToDisplay(%val As %Integer) As %String [ Internal ]
{
}

ClassMethod LogicalToOdbc(%val As %Integer) As %String [ Internal ]
{
}

/// Convert an external string of permissions to an internal mask.
/// <br>
/// The permission list can be a comma separated list of permissions using
/// either the full permission name or 1 character abbreviations (upper or lowercase).
/// The permission
/// string can also be a single string consisting of single character abreviations.
/// If the permission string is not valid, then 0 is returned.
/// <br>
/// Examples:
/// <br>
/// "Read,Use"
/// <br>
/// "READ,w,U"
/// <br>
/// "RWU"
ClassMethod ExternalToInternal(Permissions As %String) As %Integer [ Internal ]
{
}

/// Convert internal permission code to external display.
/// <br>
/// Flag = 0 - Display in RWU format<br>
/// Flag = 1 - Display in R,W,U format<br>
/// Flag = 2 - Display in READ,WRITE,USE format<br>
ClassMethod InternalToExternal(Mask As %Integer, Flag As %Integer = 0) As %String [ Internal ]
{
}

}
