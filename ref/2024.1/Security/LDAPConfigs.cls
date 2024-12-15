/// This class defines the security LDAPConfigs for a system.<br>
/// LDAP names have the following properties:<br>
/// 1) LDAP names are case insensitive.<br>
/// 2) Maximum length of a LDAP name is 64 characters.<br>
/// The %Admin Secure:USE permission is required to operate on a LDAP configuration
/// <br><br>
/// The table for this class should be manipulated only through object access, the published API's
/// or through the System Management Portal. It should not be updated through direct SQL access.<br>
Class Security.LDAPConfigs Extends (%Persistent, %XML.Adaptor, %SYSTEM.Help) [ Final, Inheritance = right, System = 4 ]
{

Parameter SOURCECONTROL [ Internal ] = {"Revision path: $Id: //iris/2024.3.0/databases/sys/cls/Security/LDAPConfigs.xml#1 $"_$c(13,10)_"Last Change:   $DateTime: 2024/10/02 10:58:11 $"_$c(13,10)_"Changelist #:  $Change: 7247250 $"};

Parameter EMSSERVICE [ Internal ] = "Users";

Parameter VERSION [ Internal ] = 2;

Parameter DOMAIN = "%Utility";

/// LDAP description.<br>
Property Description As %String(MAXLEN = 128);

/// List of additional LDAP attributes to return from LDAP Server.<br>
/// This property contains a list of additional LDAP User attributes for which
/// you want values returned when a user authenticates himself via LDAP. For example,
/// you may want to return a user's mail address from the LDAP server. You would
/// set one of the list values to "mail" which is an LDAP attribute for a user. The
/// values for the set of attributes are written to the user's authentication record,
/// and may be retrieved by using the Security.Users class, Attributes property.
Property LDAPAttributes As list Of %String(MAXLEN = 128);

/// LDAP attribute name where the "Comment" field is retrieved.<br>
Property LDAPAttributeComment As %String(MAXLEN = 128) [ InitialExpression = "description" ];

/// LDAP attribute name where the "FullName" field is retrieved.<br>
Property LDAPAttributeFullName As %String(MAXLEN = 128) [ InitialExpression = "displayName" ];

/// LDAP attribute name where the "Mail" field is retrieved.<br>
Property LDAPAttributeMail As %String(MAXLEN = 128) [ InitialExpression = "mail" ];

/// LDAP attribute name where the "Mobile" field is retrieved.<br>
Property LDAPAttributeMobile As %String(MAXLEN = 128) [ InitialExpression = "mobile" ];

/// LDAP attribute name where the "MobileProvider" field is retrieved.<br>
Property LDAPAttributeMobileProvider As %String(MAXLEN = 128);

/// LDAP attribute name where the "NameSpace" field is retrieved.<br>
Property LDAPAttributeNameSpace As %String(MAXLEN = 128) [ InitialExpression = "intersystems-Namespace" ];

/// LDAP attribute name where the "Routine" field is retrieved.<br>
Property LDAPAttributeRoutine As %String(MAXLEN = 128) [ InitialExpression = "intersystems-Routine" ];

/// LDAP attribute name where the "Roles" field is retrieved.<br>
Property LDAPAttributeRoles As %String(MAXLEN = 128) [ InitialExpression = "intersystems-Roles" ];

/// LDAP attribute name where the "Roles" field is retrieved.<br>
Property LDAPAttributeEscalationRoles As %String(MAXLEN = 128) [ InitialExpression = "intersystems-EscalationRoles" ];

/// Specifies the point in the directory tree from which searches begin.<br>
/// This typically consists of domain components, such as DC=intersystems,DC=com
Property LDAPBaseDN As %String(MAXLEN = 256) [ Required ];

/// Specifies the point in the directory tree from which searches begin for Groups.<br>
/// This typically consists of domain components, such as DC=intersystems,DC=com
Property LDAPBaseDNForGroups As %String(MAXLEN = 256) [ Required ];

/// Specifies the location of the file containing any TLS/SSL certificates (in PEM format)
/// being used to authenticate the server certificate (Unix Only).
Property LDAPCACertFile As %String(MAXLEN = 256);

/// Amount of time the client waits until a Server Down is returned.
Property LDAPClientTimeout As %Integer [ InitialExpression = {$$$LDAPDefaultClientTimeout}, Required ];

/// Name of the domain where the LDAP server is located.<br>
/// Windows Client to Active Directory LDAP server only.
/// DEPRECATED STC2832 - No longer used for LDAPBINDS. This parameter is ignored in the LDAPBINDS call.
Property LDAPDomainName As %String(MAXLEN = 256) [ Deprecated, Internal ];

/// Flags for the LDAP connection.<br>
/// Bit 0 - Active directory LDAP server<br>
/// Bit 1 - Use SSL/TLS connection<br>
/// Bit 2 - Unused<br>
/// Bit 3 - Use Groups<br>
/// Bit 4 - Use Nested Groups<br>
/// Bit 5 - Use Universal Groups<br>
/// Bit 6 - LDAP configuration enabled<br>
/// Bit 7 - Kerberos Only<br>
Property LDAPFlags As Security.Datatype.LDAPFlags [ InitialExpression = {$$$LDAPEnabled+$$$LDAPActiveDirectory+$$$LDAPUseGroups+$$$LDAPKerberosOnly}, Required ];

/// Used to filter roles returned by the LDAP server for a user.<br>
Property LDAPGroupId As %String(MAXLEN = 256);

/// Host name of the LDAP server. <br>
/// May be one or more, separated by a space. An optional port may be appended to the
/// host name separated by a ":" (name:port) if the LDAP server is using non standard ports.
/// On a Windows client, if left blank, connection will be attempted to the default LDAP server for the domain.
Property LDAPHostNames As %String(MAXLEN = 256);

/// Used to filter roles returned by the LDAP server for a user.<br>
Property LDAPInstanceId As %String(MAXLEN = 256) [ InitialExpression = {$zu(110)_"_"_$p($zu(86),"*",2)} ];

/// Organization name used for group naming.<br>
Property OrganizationId As %String(MAXLEN = 64) [ InitialExpression = "intersystems" ];

/// Group Id used for group naming.<br>
Property GroupId As %String(MAXLEN = 64) [ InitialExpression = "Group", Required ];

/// Instance Id used for group naming.<br>
Property InstanceId As %String(MAXLEN = 64) [ InitialExpression = "Instance", Required ];

/// Role Id used for group naming.<br>
Property RoleId As %String(MAXLEN = 64) [ InitialExpression = "Role", Required ];

/// Escalation Role Id used for group naming.<br>
Property EscalationRoleId As %String(MAXLEN = 64) [ InitialExpression = "EscalationRole", Required ];

/// Routine Id used for group naming.<br>
Property RoutineId As %String(MAXLEN = 64) [ InitialExpression = "Routine", Required ];

/// Namespace Id used for group naming.<br>
Property NamespaceId As %String(MAXLEN = 64) [ InitialExpression = "Namespace", Required ];

/// Delimiter Id used for group naming.<br>
Property DelimiterId As %String(MAXLEN = 1, VALUELIST = " - _ ^ . ~") [ InitialExpression = "-", Required ];

/// Password of the search user.<br>
Property LDAPSearchPassword As Security.Datatype.Password(MAXLEN = 128);

/// Method to Get the LDAP Search Password.<br>
Method LDAPSearchPasswordGet() As %String [ Internal ]
{
}

/// Method to set the password.<br>
/// Input is a clear text string that is base64 encoded LDAPSearchPassword property.
Method LDAPSearchPasswordSet(Arg As %String) As %Status [ Internal ]
{
}

/// Username of the LDAP search user with enough privileges to search the LDAP database (Windows only).<br>
Property LDAPSearchUsername As %String(MAXLEN = 256) [ Required ];

/// Amount of time the LDAP server will wait for a client message before the connection is terminated.<br>
Property LDAPServerTimeout As %Integer [ InitialExpression = {$$$LDAPDefaultServerTimeout}, Required ];

/// A unique identifying element of each user in the LDAP database.<br>
/// For Active Directory LDAP servers, usually sAMAccountName.
Property LDAPUniqueDNIdentifier As %String(MAXLEN = 128) [ InitialExpression = "sAMAccountName", Required ];

/// Name of the LDAP configuration.<br>
Property Name As %String(MAXLEN = 128, MINLEN = 1) [ Required ];

/// LDAP Name in lowercase<br>
/// Used for indexing, not to be displayed or modified.
Property NameLowerCase As %String(MAXLEN = 128, MINLEN = 1, XMLPROJECTION = "NONE") [ Internal, ReadOnly, Required ];

/// Version number of the record. <br>
/// Used for Export/Import.<br>
Property Version As %Decimal(SCALE = 1) [ Internal ];

/// Create a LDAP configuration.<br>
/// Create a LDAP configuration in the Security database.<br>
/// Parameters:<br>
/// Name - Name of the LDAP configuration to create<br>
/// Properties - Array of properties<br>
/// See the Get() method for a description of the Properties parameter.<br>
/// If a specific property is not passed in the Properties array,
/// the value is not set.<br>
ClassMethod Create(Name As %String, ByRef Properties As %String) As %Status
{
}

ClassMethod CreateOne(ByRef Properties As %String) As %Status [ Internal ]
{
}

/// Copy a LDAP configuration.<br>
/// Copy an existing LDAP configuration in the Security database to a new one.<br>
/// Parameters:<br>
/// Name - Name of the LDAP configuration to be copied.<br>
/// NewName - Name of the New LDAP configuration to be created.<br>
ClassMethod Copy(Name As %String, NewName As %String) As %Status
{
}

/// Delete a LDAP configuration.<br>
/// This method will delete a LDAP configuration from the security database.
/// After the LDAP Configuration is delete, any user in the User database associated with
/// this configuration will also be deleted.<br>
/// Parameters:<br>
/// Name - Name of LDAP configuration to delete
ClassMethod Delete(Name As %String) As %Status
{
}

ClassMethod DeleteOne(ByRef Properties As %String) As %Status [ Internal ]
{
}

/// LDAP configuration exists.<br>
/// This method checks for the existence of a LDAP config in the security database.<br>
/// Parameters:<br>
/// Name - Name of the LDAP config to check existence of<br>
/// Return values:<br>
/// If Value of the method = 0 (LDAP does not exist, or some error occured)<br>
/// LDAP = Null<br>
/// Status = LDAP "x" does not exist, or other error message<br><br>
/// If Value of the method = 1 (LDAP exists)<br>
/// LDAP = Object handle to LDAP config<br>
/// Status = $$$OK<br>
ClassMethod Exists(Name As %String, ByRef LDAP As %ObjectHandle, ByRef Status As %Status) As %Boolean
{
}

/// This method exports LDAP configuration records to a file in xml format.<br>
/// Parameters:<br>
/// Filename -  Output file name<br>
/// NumExported (byref) -  Returns number of records exported.<br>
/// LDAPConfigs - Comma separated list of LDAPConfigs to export, "*" = All<br>
ClassMethod Export(FileName As %String = "LDAPConfigsExport.xml", ByRef NumExported As %Integer, LDAPConfigs As %String = "*") As %Status
{
}

/// Format the domain name.<br>
/// Parameters:<br>
/// Name - Name of the domain to format and validate<br>
/// NewName - byref formatted name of the name as follows:<br>
/// Remove "@\,"<br>
/// Lowercase it<br>
/// Add ".com" or "com" if no suffix <br>
/// Make sure no null pieces<br>
ClassMethod FormatName(Name As %String, ByRef NewName As %String, ByRef BaseDN As %String) As %Status
{
}

ClassMethod FormatExample(Mode As %Integer, OrganizationId As %String, GroupId As %String, InstanceId As %String, RoleId As %String, EscalationRoleId As %String, NamespaceId As %String, RoutineId As %String, DelimiterId As %String, UniversalGroup As %Boolean, LDAPGroupId As %String, LDAPInstanceId As %String, ByRef ExampleResults) As %Status
{
}

/// Get a LDAP configurations properties.<br>
/// Gets a LDAP config's properties from the security database.<br>
/// Parameters:<br>
/// Name - Name of the LDAP config to get<br>
/// Return values:<br>
/// Properties - Array of properties. See the class documentation for each individual property.<br>
/// Properties("Description")<br>
/// Properties("LDAPAttributes",AttributeName)<br>
/// Create() and Modify() methods may also add attributes with Properties("LDAPAttributes")="attr1,attr2,attr3...,attrx"<br>
/// Properties("LDAPAttributeComment")<br>
/// Properties("LDAPAttributeFullName")<br>
/// Properties("LDAPAttributeMail")<br>
/// Properties("LDAPAttributeMobile")<br>
/// Properties("LDAPAttributeMobileProvider")<br>
/// Properties("LDAPAttributeNameSpace")<br>
/// Properties("LDAPAttributeRoutine")<br>
/// Properties("LDAPAttributeRoles")<br>
/// Properties("LDAPAttributeEscalationRoles")<br>
/// Properties("LDAPBaseDN")<br>
/// Properties("LDAPBaseDNForGroups")<br>
/// Properties("LDAPCACertFile")<br>
/// Properties("LDAPClientTimeout")<br>
/// Properties("LDAPHostNames")<br>
/// Properties("LDAPFlags")<br>
/// Properties("LDAPGroupId")<br>
/// Properties("LDAPInstanceId")<br>
/// Properties("OrganizationId")<br>
/// Properties("GroupId")<br>
/// Properties("InstanceId")<br>
/// Properties("RoleId")<br>
/// Properties("EscalationRoleId")<br>
/// Properties("NamespaceId")<br>
/// Properties("RoutineId")<br>
/// Properties("DelimiterId")<br>
/// Properties("LDAPSearchPassword")<br>
/// Properties("LDAPSearchUsername")<br>
/// Properties("LDAPServerTimeout")<br>
/// Properties("LDAPUniqueDNIdentifier")<br>
ClassMethod Get(Name As %String, ByRef Properties As %String) As %Status
{
}

/// Get a LDAP configurations properties.<br>
/// Gets a LDAP configurtions properties from the security database.<br>
/// Parameters:<br>
/// LDAP - Object handle to a LDAP record<br>
/// Return values:<br>
/// Properties - See the Get method for more information on properties returned
ClassMethod GetProperties(LDAP As %ObjectHandle, ByRef Properties As %String) As %Status
{
}

/// Import LDAP configuration records from an xml file.<br>
/// Parameters:<br>
/// FileName - Filename to import LDAP configuration records from<br>
/// NumImported (byref) - Returns number of records imported<br>
/// Flags - Control import<br>
/// Bit 0 - Do not import records, just return count<br>
/// Note: On failure, no records will be imported<br>
ClassMethod Import(FileName As %String = "LDAPConfigsExport.xml", ByRef NumImported As %Integer, Flags As %Integer = 0) As %Status
{
}

/// Modify a LDAP configuration.<br>
/// Modify an existing LDAP configurations properties in the security database.<br>
/// Parameters:<br>
/// Name - Name of the LDAP configuration to modify<br>
/// Properties - Array of properties to modify.<br>
/// See the Get() method for a description of the Properties parameter.<br>
/// If a specific property is not passed in the Properties array,
/// the value is not modified.<br>
ClassMethod Modify(Name As %String, ByRef Properties As %String) As %Status
{
}

ClassMethod ModifyOne(ByRef Properties As %String) As %Status [ Internal ]
{
}

ClassMethod StartEMS() As %Status [ Internal ]
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called after
/// the object's data has been successfully written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
Method %OnAfterSave(insert As %Boolean) As %Status [ Internal, Private ]
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called before
/// any data is written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
Method %OnBeforeSave(insert As %Boolean) As %Status [ Internal, Private ]
{
}

/// This callback method is invoked by the <METHOD>%Delete</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> is being deleted.
///
/// <P>If this method returns an error then the object will not be deleted.
ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Internal, Private ]
{
}

/// This callback method is invoked by the <METHOD>%New</METHOD> method to
/// provide notification that a new instance of an object is being created.
///
/// <P>If this method returns an error then the object will not be created.
/// <p>It is passed the arguments provided in the %New call.
/// When customizing this method, override the arguments with whatever variables and types you expect to receive from %New().
/// For example, if you're going to call %New, passing 2 arguments, %OnNew's signature could be:
/// <p>Method %OnNew(dob as %Date = "", name as %Name = "") as %Status
/// If instead of returning a %Status code this returns an oref and this oref is a subclass of the current
/// class then this oref will be the one returned to the caller of %New method.
Method %OnNew() As %Status [ Private, ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%ValidateObject</METHOD> method to
/// provide notification that the current object is being validated.
///
/// <P>If this method returns an error then <METHOD>%ValidateObject</METHOD> will fail.
Method %OnValidateObject() As %Status [ Internal, Private ]
{
}

/// Detail of LDAP Configurations.<br>
/// Names - Comma separated list of LDAP names, "*" = All<br>
/// Flags - 0 - Use "Startswith" as the selection on the name.<br>
/// Flags - 1 - Use "Contains" as the selection on the name.<br>
/// Note: This query may change in future versions<br>
ClassMethod DetailExecute(ByRef %qHandle As %Binary, Names As %String = "*", Flags As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod DetailFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = DetailExecute ]
{
}

ClassMethod DetailClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = DetailExecute ]
{
}

/// List of LDAP Configurations.<br>
/// Names - Comma separated list of LDAP names, "*" = All<br>
/// Flags - 0 - Use "Startswith" as the selection on the name.<br>
/// Flags - 1 - Use "Contains" as the selection on the name.<br>
/// Note: This query may change in future versions<br>
ClassMethod ListExecute(ByRef %qHandle As %Binary, Names As %String = "*", Flags As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod ListFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

ClassMethod ListClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

}
