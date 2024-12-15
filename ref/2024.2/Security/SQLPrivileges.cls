/// Define the SQL Privilege mapping in the ^SYS global
/// Mapping was added for SQL Privileges to take advantage of XML export
Class Security.SQLPrivileges Extends (%Persistent, %XML.Adaptor, %SYSTEM.Help) [ Inheritance = right, LegacyInstanceContext, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter SOURCECONTROL [ Internal ] = {"Revision path: $Id: //iris/2024.3.0/databases/sys/cls/Security/SQLPrivileges.xml#1 $"_$c(13,10)_"Last Change:   $DateTime: 2024/10/02 10:58:11 $"_$c(13,10)_"Changelist #:  $Change: 7247250 $"};

/// Namespace the privilege is defined in
Property Namespace As %String(MAXLEN = 256) [ Required ];

/// ObjectType,ObjectName e.g. "1,Sample.Person" or "3,Sample.PersonView"
Property SQLObject As %String(MAXLEN = 256) [ Required ];

/// Privilege assigned to the user/role
Property Privilege As %String(DISPLAYLIST = ",%ALTER,INSERT,UPDATE,DELETE,SELECT,REFERENCES,EXECUTE,USE", MAXLEN = 1, VALUELIST = ",a,i,u,d,s,r,e,l") [ Required ];

/// Grantee - user/role the privilege was granted to
Property Grantee As %String(MAXLEN = 64, MINLEN = 1) [ Required ];

/// Grantor - user/role that granted the privilege
Property Grantor As %String(MAXLEN = 64, MINLEN = 1) [ Required ];

/// Grantable - 1/0, can this privilege be granted by the user
Property Grantable As %TinyInt(VALUELIST = ",0,1") [ Required ];

/// SQL Privilege resource string
Property SQLPrivString As %String(MAXLEN = 500, XMLPROJECTION = "NONE") [ Calculated, SqlComputeCode = { set {*}={SQLObject}_"||"_{Privilege}_"||"_{Grantee}_"||"_{Grantor}}, SqlComputed ];

/// This method exports SQL Object Privilege records to a file in xml format.<br>
/// Parameters:<br>
/// Filename -  Output file name<br>
/// NumExported (byref) -  Returns number of records exported.<br>
ClassMethod Export(FileName As %String = "SQLPrivilegesExport.xml", ByRef NumExported As %Integer = 0) As %Status
{
}

/// Import SQLPrivilege records from an xml file.<br>
/// Parameters:<br>
/// FileName - Filename to import Role records from<br>
/// NumImported (byref) - Returns number of records imported<br>
/// Flags - Control import<br>
/// Bit 0 - Do not import records, just return count<br>
/// Note: On failure, no records will be imported<br>
ClassMethod Import(FileName As %String, ByRef NumImported As %Integer, Flags As %Integer = 0) As %Status
{
}

/// Given a User or Role name, return the ID information for the privileges that have been directly granted to the user or role
/// Return the ID information for all SQL Object Privileges
}
