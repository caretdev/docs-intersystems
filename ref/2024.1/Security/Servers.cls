/// Superservers defined for the system.
/// <br><br>
/// The table for this class should be manipulated only through object access, the published API's
/// or through the System Management Portal. It should not be updated through direct SQL access. <br>
Class Security.Servers Extends (%Persistent, %XML.Adaptor, %SYSTEM.Help) [ Inheritance = right, System = 4 ]
{

Parameter SOURCECONTROL [ Internal ] = {"Revision path: $Id: //projects/security/databases/sys/cls/Security/Servers.xml#10 $"_$c(13,10)_"Last Change:   $DateTime: 2022/02/11 15:37:29 $"_$c(13,10)_"Changelist #:  $Change: 5260560 $"};

Parameter VERSION [ Internal ] = 1;

Parameter IGNOREPROPERTIES [ Internal ] = "SSLECPConfig,SSLECPSupportLevel,SSLMirrorConfig,SSLMirrorSupportLevel,Version";

Property BindAddress As Config.Host(MAXLEN = 256, MINLEN = 0) [ Required ];

/// Description `of the Server
Property Description As %String(MAXLEN = 256);

/// Used only by Initialize()
Property DoNotStart As %Integer [ InitialExpression = 0, Private, Transient ];

Property EnableCacheDirect As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];

Property EnableClients As Security.Datatype.BooleanYN [ InitialExpression = 1, Required ];

Property EnableCSP As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];

Property EnableDataCheck As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];

Property EnableECP As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];

Property EnableMirror As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];

Property EnableNodeJS As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];

Property EnableShadows As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];

Property EnableSharding As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];

Property EnableSNMP As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];

Property EnableWebLink As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];

/// Server enabled
Property Enabled As Security.Datatype.BooleanYN [ InitialExpression = 1, Required ];

/// This is part of an Import() operation<br>
Property ImportOperation As %Boolean [ InitialExpression = 0, Internal, Transient ];

Property Port As %Integer(MAXVAL = 65535, MINVAL = 100) [ Required ];

/// SSL configuration used for client connections.
Property SSLConfig As %String(MAXLEN = 64);

/// Use SSL/TLS for Client connections.<br>
/// 0 = None<br>
/// 1 = Accept<br>
/// 2 = Require<br>
Property SSLSupportLevel As %Integer(MAXVAL = 2, MINVAL = 0) [ InitialExpression = 0 ];

/// SSL configuration used for ECP connections. (not currently used)
Property SSLECPConfig As %String(MAXLEN = 64) [ Internal ];

/// Use SSL/TLS for ECP connections. (not currently used)<br>
/// 0 = None<br>
/// 1 = Accept<br>
/// 2 = Require<br>
Property SSLECPSupportLevel As %Integer [ Internal ];

/// SSL configuration used for Mirror connections. (Not currently used)
Property SSLMirrorConfig As %String(MAXLEN = 64) [ Internal ];

/// Use SSL/TLS for Mirror connections. (Not currently used)<br>
/// 0 = None<br>
/// 1 = Accept<br>
/// 2 = Require<br>
Property SSLMirrorSupportLevel As %Integer [ Internal ];

Property SystemDefault As Security.Datatype.BooleanYN [ InitialExpression = 0 ];

/// Version number of the record. <br>
/// Used for Export/Import.<br>
Property Version As %Decimal(SCALE = 1) [ Internal ];

/// Create a Server.<br>
/// Create a Server in the Security database.
/// Parameters:<br>
/// Port - Port number for Server to run on.<br>
/// BindAddress - IP address for Server to Bind to (default=0.0.0.0).<br>
ClassMethod CreateCSPDefault(Properties As %String) As %Status [ Internal ]
{
}

/// Makes sure there is an entry in the Security.Servers table for the port defined in the CPF file.<br>
ClassMethod CheckDefaultPort(DefaultPort As %Integer, DefaultPortBindAddress As %String = "") As %Status [ Internal ]
{
}

ClassMethod CheckIfPortFree(Port As %Integer, BindAddress As %String = "") As %Status [ Internal ]
{
}

/// Create a superserver.<br>
/// Port - Port of the Server to modify.<br>
/// BindAddress - BindAddress of the Server to modify.<br>
ClassMethod Create(Port As %Integer, BindAddress As %String = "", Properties As %String) As %Status
{
}

ClassMethod CreateOne(ByRef Properties As %String) As %Status [ Internal ]
{
}

/// Delete a Server.<br>
/// This method will delete an Server from the security database.<br>
/// Parameters:<br>
/// Port - Port of the Server to delete.<br>
/// BindAddress - BindAddress of the Server to delete.<br>
ClassMethod Delete(Port As %String, BindAddress As %String = "") As %Status
{
}

ClassMethod DeleteOne(ByRef Properties As %String) As %Status [ Internal ]
{
}

/// Server exists.<br>
/// This method checks for the existence of a Server in the security database.<br>
/// Parameters:<br>
/// Port - Port of the Server.<br>
/// BindAddress - BindAddress of the Server.<br>
/// Return values:<br>
/// If Value of the method = 0 (Server does not exist, or some error occured)<br>
/// Server = Null<br>
/// Status = Server "x" does not exist, or other error message<br><br>
/// If Value of the method = 1 (Server exists)<br>
/// Server = Object handle to Server<br>
/// Status = $$$OK<br>
ClassMethod Exists(Port As %String, BindAddress As %String = "", ByRef Server As %ObjectHandle, ByRef Status As %Status) As %Boolean
{
}

/// This method exports Server records to a file in xml format.<br>
/// Parameters:<br>
/// Filename -  Output file name<br>
/// NumExported (byref) -  Returns number of records exported.<br>
/// Servers - Comma separated list of Servers to export, "*" = All<br>
ClassMethod Export(FileName As %String = "ServersExport.xml", ByRef NumExported As %Integer, Ports As %String = "*", BindAddresses As %String = "*") As %Status
{
}

/// Get a Server's properties.<br>
/// Gets a Server's properties from the security database.<br>
/// Parameters:<br>
/// Port - Port of the Server.<br>
/// BindAddress - BindAddress of the Server.<br>
/// Return values:<br>
/// Properties - Array of properties<br>
ClassMethod Get(Port As %String, BindAddress As %String = "", ByRef Properties As %String) As %Status
{
}

/// Returns a comma separated list of properties in the class.<br>
/// This is used internally by some of the API's.
/// Parameters:<br>
/// <b>IgnoreProperties</b> - Comma separated list of properties NOT to return<br>
/// <b>Properties</b> by ref - Comma separated list of properties for the class, with IgnoreProperties removed<br>
ClassMethod GetClassProperties(IgnoreProperties As %String = "", ByRef Properties As %String) As %Status [ Internal ]
{
}

ClassMethod GetDefaultServer(ByRef Obj As %ObjectHandle) As %Status [ Internal ]
{
}

/// Get a Servers's properties.<br>
/// Gets a Servers's properties from the security database.<br>
/// Parameters:<br>
/// Server - Object handle to a Server record<br>
/// Return values:<br>
/// Properties - See the Get method for more information on properties returned
ClassMethod GetProperties(Obj As %ObjectHandle, ByRef Properties As %String) As %Status [ Internal ]
{
}

/// Get the first superserver which has the requested services enabled.<br>
/// If the System Default superserver has the services enabled, that is the one which will be returned.<br>
/// Note that if the superserver is not enabled, then it will not be returned.<br><br>
/// Parameters:<br>
/// Flags - Bit map of required services<br>
/// EnableCacheDirect- Bit 0 <br>
/// EnableClients 	 - Bit 1 <br>
/// EnableCSP 		 - Bit 2 <br>
/// EnableDataCheck  - Bit 3 <br>
/// EnableECP 		 - Bit 4 <br>
/// EnableMirror 	 - Bit 5 <br>
/// EnableNodeJS 	 - Bit 6 <br>
/// EnableShadows 	 - Bit 7 <br>
/// EnableSharding 	 - Bit 8 <br>
/// EnableSNMP 		 - Bit 9 <br>
/// EnableWebLink 	 - Bit 10 <br><br>
/// Return Values:<br>
/// Port - Port number of a superserver which has the requested services enabled.<br>
/// BindAddress - IP addess of the superserver which has the requested services enabled.<br>
/// PortBindAddress - Array of ports and adresses of all superservers which match the criteria. PortBindAddress(Port,Address)=""
/// 0.0.0.0 as an address means its listening on all addresses on that machine.<br>
ClassMethod GetEnabled(Flags As %Integer, ByRef Port As %Integer, ByRef BindAddress As %String, ByRef PortBindAddress As %String) As %Status [ Internal ]
{
}

/// Import Server records from an xml file.<br>
/// Parameters:<br>
/// FileName - Filename to import Server records from<br>
/// NumImported (byref) - Returns number of records imported<br>
/// Flags - Control import<br>
/// Bit 0 - Do not import records, just return count<br>
/// Note: On failure, no records will be imported<br>
ClassMethod Import(FileName As %String = "ServersExport.xml", ByRef NumImported As %Integer, Flags As %Integer = 0) As %Status
{
}

/// Initialize the Server during an initial ^INSTALL (not upgrade).<br>
ClassMethod Initialize(Port As %Integer = 0, DoNotStart = 0) [ Internal ]
{
}

/// Modify a Server's properties.<br>
/// Modifies a Server's properties from the security database.<br>
/// Parameters:<br>
/// Port - Port of the Server.<br>
/// BindAddress - BindAddress of the Server.<br>
/// Properties - Array of properties to modify.<br>
/// See the Get() method for a description of the Properties parameter.<br>
/// If a specific property is not passed in the properties array,
/// the value is not modified. Note that some system defined properties are not changeable.<br>
ClassMethod Modify(Port As %Integer, BindAddress As %String = "", ByRef Properties As %String) As %Status
{
}

ClassMethod ModifyOne(ByRef Properties As %String) As %Status [ Internal ]
{
}

/// Stop all servers.<br>
ClassMethod StopAll() As %Status [ Internal ]
{
}

/// Stop One Server.<br>
/// We stash the port and address in the user defined piece of the partition "Port:Address"<br>
/// Port - Port of the Server.<br>
/// BindAddress - BindAddress of the Server.<br>
ClassMethod StopOne(Port As %Integer, BindAddress As %String) As %Status [ Internal ]
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called after
/// the object's data has been successfully written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
/// If the Server name is %Server Terminal, reinitialize the memory which depends on it.
Method %OnAfterSave(insert As %Boolean) As %Status [ Internal ]
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
/// [Previously private]
ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Internal ]
{
}

/// This callback method is invoked by the <METHOD>%Delete</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> has been deleted.
/// The callback occurs immediately after %DeleteData has been called. If %DeleteData returns
/// an error then %OnAfterDelete is not called.
///
/// <P>If %OnAfterDelete returns an error (%Status) then the transaction is rolled back.
ClassMethod %OnAfterDelete(oid As %ObjectIdentity) As %Status [ Private, ServerOnly = 1 ]
{
}

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

/// Detail list of Servers.<br>
/// Ports - Comma separated list of Port numbers, "*" = All<br>
/// BindAddresses - Comma separated list of BindAddresses, "*" = All<br>
/// Note: This query may change in future versions<br>
ClassMethod DetailExecute(ByRef %qHandle As %Binary, Ports As %String = "*", BindAddresses As %String = "*") As %Status [ Internal ]
{
}

ClassMethod DetailFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = DetailExecute ]
{
}

ClassMethod DetailClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = DetailExecute ]
{
}

/// List of Servers.<br>
/// Ports - Comma separated list of Port numbers, "*" = All<br>
/// BindAddresses - Comma separated list of BindAddresses, "*" = All<br>
/// Note: This query may change in future versions<br>
ClassMethod ListExecute(ByRef %qHandle As %Binary, Ports As %String = "*", BindAddresses As %String = "*") As %Status [ Internal ]
{
}

ClassMethod ListFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

ClassMethod ListClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

ClassMethod ListFilterExecute(ByRef qHandle As %Binary, Filter As %String = "") As %Status [ Internal ]
{
}

ClassMethod ListFilterFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListFilterExecute ]
{
}

ClassMethod ListFilterClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListFilterFetchExecute ]
{
}

Trigger NoSQL [ Event = INSERT/UPDATE/DELETE, Final, Foreach = row, Language = objectscript, Order = 1 ]
{
}

}
