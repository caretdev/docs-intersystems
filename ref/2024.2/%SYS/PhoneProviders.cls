Class %SYS.PhoneProviders Extends (%Persistent, %XML.Adaptor, %SYSTEM.Help) [ System = 4 ]
{

Parameter EMSSERVICE [ Internal ] = "Users";

Parameter VERSION [ Internal ] = 1;

Parameter SOURCECONTROL [ Internal ] = {"Revision path: $Id: //iris/2024.3.0/databases/sys/cls/SYS/PhoneProviders.xml#1 $"_$c(13,10)_"Last Change:   $DateTime: 2024/10/02 10:58:11 $"_$c(13,10)_"Changelist #:  $Change: 7247250 $"};

/// Business name
Property Name As %String [ Required ];

/// DNS name of SMTP-to-SMS gateway
Property SMSGateway As %String [ Required ];

/// Version number of the record. <br>
/// Used for Export/Import.<br>
Property Version As %Decimal(SCALE = 1) [ Internal ];

/// PhoneProvider exists.<br>
/// This method checks for the existence of a PhoneProvider in the security database.<br>
/// Parameters:<br>
/// Name - Name of the PhoneProvider to check existence of<br>
/// Return values:<br>
/// If Value of the method = 0 (PhoneProvider does not exist, or some error occured)<br>
/// PhoneProvider = Null<br>
/// Status = PhoneProvider "x" does not exist, or other error message<br><br>
/// If Value of the method = 1 (PhoneProvider exists)<br>
/// PhoneProvider = Object handle to PhoneProvider<br>
/// Status = $$$OK<br>
ClassMethod Exists(Name As %String, ByRef PhoneProvider As %ObjectHandle, ByRef Status As %Status) As %Boolean
{
}

/// This method exports PhoneProvider records to a file in xml format.<br>
/// Parameters:<br>
/// Filename -  Output file name<br>
/// NumExported (byref) -  Returns number of records exported.<br>
/// PhoneProviders - Comma separated list of PhoneProviders to export, "*" = All<br>
ClassMethod Export(FileName As %String = "PhoneProvidersExport.xml", ByRef NumExported As %Integer, PhoneProviders As %String = "*") As %Status
{
}

ClassMethod Get(PhoneProvider As %String, ByRef Properties As %String) As %Status
{
}

/// Get a PhoneProvider's properties.<br>
/// Gets a PhoneProviders's properties from the security database.<br>
/// Parameters:<br>
/// PhoneProvider - Object handle to a PhoneProviders record<br>
/// Return values:<br>
/// Properties - See the Get method for more information on properties returned
ClassMethod GetProperties(PhoneProvider As %ObjectHandle, ByRef Properties As %String) As %Status
{
}

/// Import PhoneProvider records from an xml file.<br>
/// Parameters:<br>
/// FileName - Filename to import PhoneProvider records from<br>
/// NumImported (byref) - Returns number of records imported<br>
/// Flags - Control import<br>
/// Bit 0 - Do not import records, just return count<br>
/// Note: On failure, no records will be imported<br>
ClassMethod Import(FileName As %String = "PhoneProvidersExport.xml", ByRef NumImported As %Integer, Flags As %Integer = 0) As %Status
{
}

ClassMethod Initialize() As %Status [ Internal, ProcedureBlock = 0 ]
{
}

/// The following methods added to make the UI API consistent between %SYS and EMS
ClassMethod Create(Name As %String, ByRef Properties As %String) As %Status
{
}

ClassMethod Delete(Name As %String) As %Status
{
}

/// Modify a PhoneProvider.<br>
/// Modify an existing PhoneProvider's properties in the security database.<br>
/// Parameters:<br>
/// Name - Name of the PhoneProvider to modify<br>
/// Properties - Array of properties to modify.<br>
/// See the Get() method for a description of the Properties parameter.<br>
/// If a specific property is not passed in the properties array,
/// the value is not modified.<br>
ClassMethod Modify(Name As %String, ByRef Properties As %String) As %Status
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

/// Caller of %Save must have %Admin_Secure:U.
Method %OnBeforeSave(insert As %Boolean) As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

/// Caller of %Delete must have %Admin_Secure:U.
ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

/// Caller of %DeleteId must have %Admin_Secure:U.
ClassMethod %OnDeleteId(oid As %ObjectIdentity) As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

}
