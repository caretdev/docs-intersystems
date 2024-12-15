/// Define the SQL RoleGrantOption mapping in the ^SYS global for whether a role is granted to the user/role with admin/grant option
/// Mapping was added for SQL RoleGrantOption to take advantage of XML export
Class Security.SQLRoleGrantOption Extends (%Persistent, %XML.Adaptor, %SYSTEM.Help) [ Inheritance = right, LegacyInstanceContext, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter SOURCECONTROL [ Internal ] = {"Revision path: $Id: //iris/2024.3.0/databases/sys/cls/Security/SQLRoleGrantOption.xml#1 $"_$c(13,10)_"Last Change:   $DateTime: 2024/10/02 10:58:11 $"_$c(13,10)_"Changelist #:  $Change: 7247250 $"};

/// UserOrRole - User or Role the role was granted to
Property UserOrRole As %String(MAXLEN = 64, MINLEN = 1) [ Required ];

/// RoleGranted - Role that was granted to the user/role
Property RoleGranted As %String(MAXLEN = 64, MINLEN = 1) [ Required ];

/// Grantable - 1/0, can this role be granted by the user
Property Grantable As %TinyInt(VALUELIST = ",0,1") [ Required ];

/// This method exports SQLRoleGrantOption records to a file in xml format.<br>
/// Parameters:<br>
/// Filename -  Output file name<br>
/// NumExported (byref) -  Returns number of records exported.<br>
ClassMethod Export(FileName As %String = "SQLRoleGrantOptionExport.xml", ByRef NumExported As %Integer = 0) As %Status
{
}

/// Import SQLRoleGrantOption records from an xml file.<br>
/// Parameters:<br>
/// FileName - Filename to import Role records from<br>
/// NumImported (byref) - Returns number of records imported<br>
/// Flags - Control import<br>
/// Bit 0 - Do not import records, just return count<br>
/// Note: On failure, no records will be imported<br>
ClassMethod Import(FileName As %String, ByRef NumImported As %Integer, Flags As %Integer = 0) As %Status
{
}

/// Given a User or Role name, return the roles and grant options for the roles granted directly to this UserOrRole
/// Return the ID information for all SQL Role Grant Options
}
