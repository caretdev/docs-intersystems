/// This class defines the security domains for a system.<br>
/// Domain names have the following properties:<br>
/// 1) Domain names are case insensitive.<br>
/// 2) Maximum length of a domain name is 64 characters.<br>
/// The %Admin Secure:USE permission is required to operate on a domain
/// <br><br>
/// The table for this class should be manipulated only through object access, the published API's
/// or through the System Management Portal. It should not be updated through direct SQL access.<br>
Class Security.Domains Extends (%Persistent, %XML.Adaptor, %SYSTEM.Help) [ Final, Inheritance = right, System = 4 ]
{

Parameter SOURCECONTROL [ Internal ] = {"Revision path: $Id: //iris/2024.3.0/databases/sys/cls/Security/Domains.xml#1 $"_$c(13,10)_"Last Change:   $DateTime: 2024/10/02 10:58:11 $"_$c(13,10)_"Changelist #:  $Change: 7247250 $"};

Parameter EMSSERVICE [ Internal ] = "Users";

/// Domain description.<br>
/// DEPRECATED, NO LONGER USED.<br>
Property Description As %String(MAXLEN = 128) [ Deprecated, Internal ];

/// Name of the domain.<br>
/// DEPRECATED, NO LONGER USED.<br>
Property Name As %String(MAXLEN = 256, MINLEN = 1) [ Deprecated, Internal, Required ];

/// Domain Name in lowercase<br>
/// Used for indexing, not to be displayed or modified.
/// DEPRECATED, NO LONGER USED.<br>
Property NameLowerCase As %String(MAXLEN = 256, MINLEN = 1, XMLPROJECTION = "NONE") [ Deprecated, Internal, ReadOnly, Required ];

/// Change the domain of users.<br>
/// This method will change the domain to a new domain for users which
/// match the old domain. Its primary use is if we change the default system domain,
/// we would call this method to change all the users which referenced the
/// old default domain.<br>
/// Note that if a username@domain already exists in the new domain we are changing to,
/// then the old username@domain is just deleted, and the new one is used. If there is
/// any error during the operation, the entire transaction is rolled back.<br>
/// Parameters:<br>
/// OldName - Domain name to change<br>
/// NewDomain - Domain name to change to<br>
/// Flags - Internal use only<br>
/// If OldName="", then we are changing from using no domains to using domains i.e.
/// the multiple domains parameter is turned on. NewDomain must be a valid domain set up
/// in the domain file.
/// If NewDomain="", then we are changing from using multiple Domains to using no domains.
/// In order for this to succeed, all the users must have the same domain name as the
/// OldDomainName parameter passed in.
/// Note that if we are going from no domains to Multiple domains, or Multiple domains to
/// no domains, the system parameter governing this must be set before this method is called.
///
ClassMethod Change(OldDomainName As %String, NewDomainName As %String, Flags As %Integer = 0) As %Status [ Internal ]
{
}

/// Create a Domain.<br>
/// Create a Domain in the Security database.<br>
/// Parameters:<br>
/// Name - Name of the domain to create<br>
/// Description - Description of the domain<br>
/// DEPRECATED, NO LONGER USED.<br>
ClassMethod Create(Name As %String, Description As %String) As %Status [ Deprecated, Internal ]
{
}

/// Delete a domain.<br>
/// This method will delete a domain from the security database. If the domain is
/// in use by a user, the domain will not be deleted.<br>
/// Parameters:<br>
/// Name - Name of domain to delete
/// DEPRECATED, NO LONGER USED.<br>
ClassMethod Delete(Name As %String) As %Status [ Deprecated, Internal ]
{
}

/// Domain exists.<br>
/// This method checks for the existence of a domain in the security database.<br>
/// Parameters:<br>
/// Name - Name of the domain to check existence of<br>
/// Return values:<br>
/// If Value of the method = 0 (Domain does not exist, or some error occured)<br>
/// Domain = Null<br>
/// Status = Domain "x" does not exist, or other error message<br><br>
/// If Value of the method = 1 (Domain exists)<br>
/// Domain = Object handle to domain<br>
/// Status = $$$OK<br>
/// DEPRECATED, NO LONGER USED.<br>
ClassMethod Exists(Name As %String, ByRef Domain As %ObjectHandle, ByRef Status As %Status) As %Boolean [ Deprecated, Internal ]
{
}

/// This method exports Domain records to a file in xml format.<br>
/// Parameters:<br>
/// Filename -  Output file name<br>
/// NumExported (byref) -  Returns number of records exported.<br>
/// Domains - Comma separated list of Domains to export, "*" = All<br>
/// DEPRECATED, NO LONGER USED.<br>
ClassMethod Export(FileName As %String = "DomainsExport.xml", ByRef NumExported As %Integer, Domains As %String = "*") As %Status [ Deprecated, Internal ]
{
}

/// Get a domain's properties.<br>
/// Gets a domain's properties from the security database.<br>
/// Parameters:<br>
/// Name - Name of the domain to get<br>
/// Return values:<br>
/// Properties - Array of properties<br>
/// Properties("Description") - Description of the domain<br>
/// DEPRECATED, NO LONGER USED.<br>
ClassMethod Get(Name As %String, ByRef Properties As %String) As %Status [ Deprecated, Internal ]
{
}

/// Get a domain's properties.<br>
/// Gets a domain's properties from the security database.<br>
/// Parameters:<br>
/// Domain - Object handle to a Domain record<br>
/// Return values:<br>
/// Properties - See the Get method for more information on properties returned
/// DEPRECATED, NO LONGER USED.<br>
ClassMethod GetProperties(Domain As %ObjectHandle, ByRef Properties As %String) As %Status [ Deprecated, Internal ]
{
}

/// Import Domain records from an xml file.<br>
/// Parameters:<br>
/// FileName - Filename to import Domain records from<br>
/// NumImported (byref) - Returns number of records imported<br>
/// Flags - Control import<br>
/// Bit 0 - Do not import records, just return count<br>
/// Note: On failure, no records will be imported<br>
/// DEPRECATED, NO LONGER USED.<br>
ClassMethod Import(FileName As %String = "DomainsExport.xml", ByRef NumImported As %Integer, Flags As %Integer = 0) As %Status [ Deprecated, Internal ]
{
}

/// Checks if the domain is in use.<br>
/// Checks if the domain specified is used by any user.<br>
/// Parameters:<br>
/// Name - Name of the domain to check.<br>
/// Return values:<br>
/// InUse = 0 Not used<br>
/// InUse = 1 Used<br>
/// Users = $list of users the domain is used by or null if none<br>
/// MoreUsers = 0 - Entire list of users using the domain returned<br>
/// MoreUsers = 1 - Entire list of users using the role Not returned<br>
/// If MoreUsers=1, and you wish to get the entire list of users using the domain,
/// use the following code:<br>
/// s x=##Class(Security.Domains).InUse("Domain1",.InUse,.Users,.MoreUsers)
/// While (MoreUsers) {<br>
/// s SaveUsers($i(i))=Users<br>
/// s x=##Class(Security.Domains).InUse("Domain1",.InUse,.Users,.MoreUsers)<br?
/// }
ClassMethod InUse(Name As %String, ByRef InUse As %Boolean = 0, ByRef Users As %List, ByRef MoreUsers As %Boolean = 0) As %Status
{
}

/// Modify a domain.<br>
/// Modify an existing domain's properties in the security database.<br>
/// Parameters:<br>
/// Name - Name of the domain to modify<br>
/// Properties - Array of properties to modify.<br>
/// See the Get() method for a description of the Properties parameter.<br>
/// If a specific property is not passed in the properties array,
/// the value is not modified.<br>
/// DEPRECATED, NO LONGER USED.<br>
ClassMethod Modify(Name As %String, ByRef Properties As %String) As %Status [ Deprecated, Internal ]
{
}

/// DEPRECATED, NO LONGER USED.<br>
ClassMethod StartEMS() As %Status [ Deprecated, Internal ]
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called after
/// the object's data has been successfully written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
/// DEPRECATED, NO LONGER USED.<br>
Method %OnAfterSave(insert As %Boolean) As %Status [ Deprecated, Internal, Private ]
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called before
/// any data is written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
/// DEPRECATED, NO LONGER USED.<br>
Method %OnBeforeSave(insert As %Boolean) As %Status [ Deprecated, Internal, Private ]
{
}

/// This callback method is invoked by the <METHOD>%Delete</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> is being deleted.
///
/// <P>If this method returns an error then the object will not be deleted.
/// DEPRECATED, NO LONGER USED.<br>
ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Deprecated, Internal, Private ]
{
}

/// This callback method is invoked by the <METHOD>%ValidateObject</METHOD> method to
/// provide notification that the current object is being validated.
///
/// <P>If this method returns an error then <METHOD>%ValidateObject</METHOD> will fail.
/// DEPRECATED, NO LONGER USED.<br>
Method %OnValidateObject() As %Status [ Deprecated, Internal, Private ]
{
}

/// List of Domains.<br>
/// Names - Comma separated list of Domain names, "*" = All<br>
/// Flags - 0 - Use "Startswith" as the selection on the name.<br>
/// Flags - 1 - Use "Contains" as the selection on the name.<br>
/// Note: This query may change in future versions<br>
/// DEPRECATED, NO LONGER USED.<br>
/// DEPRECATED, NO LONGER USED.<br>
ClassMethod ListExecute(ByRef %qHandle As %Binary, Names As %String = "*", Flags As %Integer = 0) As %Status [ Deprecated, Internal ]
{
}

/// DEPRECATED, NO LONGER USED.<br>
ClassMethod ListFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Deprecated, Internal, PlaceAfter = ListExecute ]
{
}

/// DEPRECATED, NO LONGER USED.<br>
ClassMethod ListClose(ByRef %qHandle As %Binary) As %Status [ Deprecated, Internal, PlaceAfter = ListExecute ]
{
}

}
