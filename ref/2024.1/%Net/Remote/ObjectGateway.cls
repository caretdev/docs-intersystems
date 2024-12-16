/// <p>
/// This class is maintained for backward compatibility only and it is deprecated. All users should convert their use
/// of this class to the $system.external interface as soon as possible.
/// </p>
/// <p>
/// Object Gateway Server definitions.
/// </p>
Class %Net.Remote.ObjectGateway Extends %Persistent [ Deprecated, StorageStrategy = ObjectGatewayStorage, System = 3 ]
{

/// Lookup by Gateway name.
ClassMethod ByNameExecute(ByRef qHandle As %Binary, name As %String) As %Status [ Internal ]
{
}

ClassMethod ByNameFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetAllClassesExecute ]
{
}

ClassMethod ByNameClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetAllClassesExecute ]
{
}

/// Lookup all Gateways; include current state.
ClassMethod ByGatewayExecute(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

ClassMethod ByGatewayFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetAllClassesExecute ]
{
}

ClassMethod ByGatewayClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetAllClassesExecute ]
{
}

/// See method ##class(%Net.Remote.Service).IsGatewayRunning(pServer, pPort, pVerbose, .status, pPing, pInterface).
ClassMethod GatewayState(port As %String, interface As %String = "", server As %String = "127.0.0.1") As %Integer [ Internal ]
{
}

/// Check if there exists a Gateway with a given name.
ClassMethod GatewayExists(name As %String) As %Boolean
{
}

/// The Resource name that controls access to this gateway.<br>
/// If no resource is defined, then it is a public gateway which
/// anyone can use.<br>
Property Resource As %String(MAXLEN = 64, MINLEN = 0);

Property Type As %String(DISPLAYLIST = ",Java,.NET,Python", VALUELIST = ",1,2,3") [ Required ];

Property Name As %String [ Required ];

Property Server As %String [ InitialExpression = "127.0.0.1", Required ];

Property Port As %Integer(MAXVAL = 65535, MINVAL = 1) [ Required ];

Property LogFile As %String(MAXLEN = 1023);

Property HeartbeatInterval As %Integer(MAXVAL = 3600, MINVAL = 0) [ InitialExpression = 10 ];

Property HeartbeatFailureTimeout As %Integer(MAXVAL = 86400, MINVAL = 0) [ InitialExpression = 30 ];

Property HeartbeatFailureAction As %String(DISPLAYLIST = ",None,Restart,Alert,Restart and Alert", VALUELIST = ",N,R,A,RA") [ InitialExpression = "R" ];

Property HeartbeatFailureRetry As %Integer(MAXVAL = 86400, MINVAL = 0) [ InitialExpression = 300 ];

Property InitializationTimeout As %Integer(MAXVAL = 300, MINVAL = 2) [ InitialExpression = 5 ];

Property ConnectionTimeout As %Integer(MAXVAL = 300, MINVAL = 2) [ InitialExpression = 5 ];

Property UsePassphrase As %Boolean [ InitialExpression = 1 ];

Property passphraseList As %String [ Transient ];

Property JavaHome As %String(MAXLEN = 1023);

Property ClassPath As %String(MAXLEN = 32000);

Property JVMArgs As %String(MAXLEN = 32000);

Property MainClassName As %String [ InitialExpression = {$$$javaGatewayClass} ];

Property AllowedIPAddresses As %String [ InitialExpression = "127.0.0.1" ];

Property FilePath As %String(MAXLEN = 1023);

Property DotNetCorePath As %String(MAXLEN = 1023);

Property Exec32 As %Boolean [ InitialExpression = 1 ];

Property DotNetVersion As %String(DISPLAYLIST = ",F4.6.2,F3.5,N5.0,N6.0,N7.0,N8.0", VALUELIST = ",4.6.2,3.5,Net5.0,Net6.0,Net7.0,Net8.0") [ InitialExpression = "Net6.0" ];

Property PythonPath As %String(MAXLEN = 1023);

Property PyOptions As %String(MAXLEN = 32000);

/// This method is normally generated by the storage class for persistent classes using
/// <class>%Storage.Persistent</class> or <class>%Storage.SQL</class>. Persistent
/// classes using some other storage class, such as <class>%Library.CustomStorage</class> must override this
/// method.
ClassMethod %DeleteData(id As %String, concurrency As %Integer) As %Status [ Private, ServerOnly = 1 ]
{
}

/// %LoadData() - loads an object from storage. This method is
/// implemented by the storage class.
Method %LoadData(id As %String) As %Status [ Private, ServerOnly = 1 ]
{
}

/// %SaveData() - saves an object to disk, checks uniqueness and referential
/// integrity constraints, and maintains index structures. This method is
/// implemented by the storage class.
Method %SaveData(id As %String) As %Status [ Private, ServerOnly = 1 ]
{
}

Method toDao() As %Library.DynamicObject
{
}

Method fromDao(dao As %Library.DynamicObject)
{
}

/// Checks to see if the object identified by the ID <var>id</var> exists in the extent.
///
/// <p>Returns <CLASS>%Boolean</CLASS> TRUE is it exists, FALSE if it does not.
ClassMethod %ExistsId(id As %String) As %Boolean [ ServerOnly = 0 ]
{
}

}