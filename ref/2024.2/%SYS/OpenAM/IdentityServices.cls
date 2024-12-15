/// This class represents an interface to an instance of OpenAM Enterprise
/// Identity Web Services hosted by an application server.
Class %SYS.OpenAM.IdentityServices Extends (%Persistent, %XML.Adaptor) [ System = 4 ]
{

Parameter VERSION [ Internal ] = 1;

Parameter SOURCECONTROL [ Internal ] = {"Revision path: $Id: //iris/2024.3.0/databases/sys/cls/SYS/OpenAM/IdentityServices.xml#1 $"_$c(13,10)_"Last Change:   $DateTime: 2024/10/02 10:58:11 $"_$c(13,10)_"Changelist #:  $Change: 7247250 $"};

/// Name of this instance.
Property Name As %String [ Required ];

/// DNS name of
/// the application server hosting OpenAM Enterprise Identity Web Services.
Property Server As %String [ InitialExpression = "localhost", Required ];

/// TCP port that
/// the application server hosting OpenAM Enterprise Identity Web Services
/// is listening on.
Property Port As %Integer [ InitialExpression = 8080, Required ];

/// Path to OpenAM Identity Services on
/// the application server hosting OpenAM Enterprise Identity Web Services.
Property Path As %String [ InitialExpression = "/opensso/identityservices", Required ];

/// SSL client configuration to use when connecting to
/// the application server hosting OpenAM Enterprise Identity Web Services.
/// (optional)
Property SSLConfiguration As %String;

/// Security token obtained on successful authentication.
Property Token As %Net.OpenAM.tns.token(XMLPROJECTION = "NONE") [ Internal, Transient ];

/// Version number of the record. <br>
/// Used for Export/Import.<br>
Property Version As %Decimal(SCALE = 1) [ Internal ];

/// Authenticate the Username and Password, obtaining an internal transient security token if successful.
Method Authenticate(Username As %String, Password As %String) As %Boolean
{
}

/// Allow a process with %Admin_Secure:U, but not %DB_IRISSYS:RW, to save an OpenAMIdentityServices object.
/// (A process with %DB_IRISSYS:RW can use %Save.)
Method Save() As %Status
{
}

/// Require %AdminSecure:U
Method %OnBeforeSave(insert As %Boolean) As %Status [ Internal, Private ]
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

/// Caller of %Delete must have %Admin_Secure:U.
ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

ClassMethod StartEMS() As %Status [ Internal ]
{
}

/// Allow a process with %Admin_Secure:U, but not %DB_IRISSYS:RW, to delete an OpenAMIdentityServices object.
/// (A process with %DB_IRISSYS:RW can use %Save.)
ClassMethod DeleteId(Name As %String) As %Status
{
}

/// Test whether this instance is correctly configured to use OpenAM Identity Web Services.
Method Test() As %Boolean
{
}

/// OpenAMIdentityService exists.<br>
/// This method checks for the existence of a OpenAMIdentityService in the security database.<br>
/// Parameters:<br>
/// Name - Name of the OpenAMIdentityService to check existence of<br>
/// Return values:<br>
/// If Value of the method = 0 (OpenAMIdentityService does not exist, or some error occured)<br>
/// OpenAMIdentityService = Null<br>
/// Status = OpenAMIdentityService "x" does not exist, or other error message<br><br>
/// If Value of the method = 1 (OpenAMIdentityService exists)<br>
/// OpenAMIdentityService = Object handle to OpenAMIdentityService<br>
/// Status = $$$OK<br>
ClassMethod Exists(Name As %String, ByRef OpenAMIdentityService As %ObjectHandle, ByRef Status As %Status) As %Boolean
{
}

/// This method exports OpenAMIdentityService records to a file in xml format.<br>
/// Parameters:<br>
/// Filename -  Output file name<br>
/// NumExported (byref) -  Returns number of records exported.<br>
/// OpenAMIdentityServices - Comma separated list of OpenAMIdentityServices to export, "*" = All<br>
ClassMethod Export(FileName As %String = "OpenAMIdentityServicesExport.xml", ByRef NumExported As %Integer, OpenAMIdentityServices As %String = "*") As %Status
{
}

/// Get a OpenAMIdentityService's properties.<br>
/// Gets a OpenAMIdentityServices's properties from the security database.<br>
/// Parameters:<br>
/// OpenAMIdentityService - Object handle to a OpenAMIdentityServices record<br>
/// Return values:<br>
/// Properties - See the Get method for more information on properties returned
ClassMethod GetProperties(OpenAMIdentityService As %ObjectHandle, ByRef Properties As %String) As %Status
{
}

/// Import OpenAMIdentityService records from an xml file.<br>
/// Parameters:<br>
/// FileName - Filename to import OpenAMIdentityService records from<br>
/// NumImported (byref) - Returns number of records imported<br>
/// Flags - Control import<br>
/// Bit 0 - Do not import records, just return count<br>
/// Note: On failure, no records will be imported<br>
ClassMethod Import(FileName As %String = "OpenAMIdentityServicesExport.xml", ByRef NumImported As %Integer, Flags As %Integer = 0) As %Status
{
}

/// Modify a OpenAMIdentityService.<br>
/// Modify an existing OpenAMIdentityService's properties in the security database.<br>
/// Parameters:<br>
/// Name - Name of the OpenAMIdentityService to modify<br>
/// Properties - Array of properties to modify.<br>
/// See the Get() method for a description of the Properties parameter.<br>
/// If a specific property is not passed in the properties array,
/// the value is not modified.<br>
ClassMethod Modify(Name As %String, ByRef Properties As %String) As %Status
{
}

/// Upload all OpenAMIdentityServices from Enterprise Management System to requesting client.
ClassMethod Upload(GUID As %String, ByRef Data As %List) As %Status [ Internal ]
{
}

}
