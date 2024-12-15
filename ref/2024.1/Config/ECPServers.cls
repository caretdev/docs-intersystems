/// This class allows you to modify and view the [ECPServers] section of the CPF file through
/// programatic APIs. While properties are usually modified through the System Management
/// portal, there may be some occasion where modifying them through the API's is best
/// for your system. In all the Config methods, if you do not specify the CPFFile parameter,
/// the currently active CPF file is used. If you wish to modify a CPF file which is not
/// the currently active one, then specify the CPFFile you wish to modify in the method call.<br>
/// The Flags parameter does not normally need to be specified; the defaults are usually
/// sufficient for most cases.<br>
/// You can use either the provided API's (Create/Get/Modify/Delete) to modify the properties by passing
/// in the correct parameters, or use Object syntax to open and directly manipulate the config
/// objects (Open() and Exists()). Most objects created here need only to specify the Name of the object,
/// and 1 or 2 properties since the the defaults are what are commonly used for most cases.
/// <br>
/// <br>
/// EXAMPLE:<br>
/// <br>
/// <pre>
/// ; Use class methods to create an instance
/// %SYS>s Name="SERVERA"
/// %SYS>s Properties("Address")="127.0.0.10"
/// %SYS>s Status=##Class(Config.ECPServers).Create(Name,.Properties)
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// ; Use class methods to modify properties
/// %SYS>s Status=##Class(Config.ECPServers).Get(Name,.Properties)
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// %SYS>zw Properties
/// Properties("Address")="127.0.0.1"
/// Properties("Port")=1973
/// %SYS>s Properties("Port")=1972
/// %SYS>s Status=##Class(Config.ECPServers).Modify(Name,.Properties)
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// ; Now use Objects to modify properties
/// %SYS>s Obj=##Class(Config.ECPServers).Open(Name)
/// ; We could have used i ##Class(Config.ECPServers).Exists(Name,.Obj) instead of Open()
/// %SYS>w Obj.Port
/// 1972
/// %SYS>s Obj.Port=1975
/// %SYS>s Status=Obj.%Save()
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// ; Now delete the object we just created
/// %SYS>s Status=##Class(Config.ECPServers).Delete(Name)
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// </pre>
Class Config.ECPServers Extends (%Persistent, Config.CommonMultipleMethods, Config.CommonProperties, %SYSTEM.Help) [ Final, Inheritance = right, System = 4 ]
{

/// Server name is always capitalized.<br>
Parameter CAPITALNAME = 1;

Parameter EMSSERVICE [ Internal ] = "Namespace";

/// IP Address to connect to.<br>
Property Address As Config.Host(MAXLEN = 256, MINLEN = 1) [ Required ];

/// ECP Server runs in batch mode.<br>
Property BatchMode As %Boolean [ InitialExpression = 0, Required ];

/// Force the Server name to be uppercase.<br>
Method NameSet(Val) As %Status [ Internal ]
{
}

/// Specifies the behavior of this connection with regard to mirrored database servers.
/// <p>
/// Value:
/// <li>0: Non-mirrored connection.  Access databases on non-mirror members.  Also
/// used to connect to async members to access mirror databases, configured by
/// their database paths.
/// <li>1: Mirrored connection. ECP will automatically find the primary mirror
/// member and will only connect to the primary. Access to mirrored databases
/// is configured by mirror database name.</li>
/// <li>-1: Mirrored connection restricted to the configured mirror member only. The
/// configured member is the one specified by <PROPERTY>Address</PROPERTY> and
/// <PROPERTY>Port</PROPERTY>. Like value '1', a connection will be established
/// if the configured member is primary and access to mirrored databases is
/// configured by mirror database name. Unlike '1', if the configured member is
/// a Disaster Recovery member, the connection will be established, allowing
/// read-only access to mirrored databases. If the DR member is promoted, the
/// connection will be dropped and will be re-established when it becomes primary.
/// <b>Warning</b>: This setting is not appropriate in typical configurations where
///  mirroring will automatically fail over, as the new primary won't be found.
/// This is for use in specialized DR configurations, or other long-distance
/// configurations, to prevent the application server from being automatically
/// redirected to a primary in a different data center while allowing local
/// read-only access. There is no system utility to set the value of '-1', but it
/// can be specified via this class interface.</li>
Property MirrorConnection As %Integer [ InitialExpression = 0, Required ];

/// Use SSL configuration (%ECPClient) for the ECP connection.<br>
Property SSLConfig As %Integer [ InitialExpression = 0, Required ];

/// IP Port to connect to.<br>
Property Port As %Integer [ InitialExpression = 1972, Required ];

/// Called by the Create method during import from a CPF file.<br>
ClassMethod CreateCallBack(Obj As %ObjectHandle, Data As %String) As %Status [ Internal ]
{
}

/// Load the parameters into memory and activate.<br>
/// Parameters:<br>
/// <b>Obj</b> = Handle to the object which caused the load. If "",
/// then load everything, only called from STU.<br>
/// If a delete operation, then Obj is the NAME of the item which was deleted
/// since the oject itself has already been deleted.<br>
/// <b>Flags</b> = Type of modification.<br>
/// 0 - Modify<br>
/// 1 - Create/Insert<br>
/// 2 - Delete<br>
ClassMethod Load(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]
{
}

/// handle ECP definitions.<br>
ClassMethod NetIsECP(Name As %String, Data As %String) As %Status [ Internal ]
{
}

ClassMethod ValidateIP(host As %String) As %String [ Internal ]
{
}

ClassMethod Debug() [ Internal ]
{
}

/// Called from %OnDelete().<br>
/// Any error returned here will cause the delete to fail.<br>
ClassMethod %OnDeleteCallBack(Obj As %ObjectHandle) As %Status [ Internal ]
{
}

/// This method is called during %Save().<br>
/// Any error returned here will cause the save to fail.<br<
Method %OnValidateObject() As %Status [ Internal ]
{
}

/// List ECPServers in a CPF file.<br>
/// <br>
/// Parameters:<br>
/// <b>Names</b> - Comma separated list of ECPServer names<br>
/// <var>"*"</var> - All records match<br>
/// <var>"String,String1"</var> - Any records matching one of these elements<br>
/// <var>"String*"</var> - Any record starting with "String"<br>
/// <var>"String,String1*,String2"</var> - Any record matching one of these elements, or starting with "String1"<br>
/// <b>CPFFile</b> - Name of the CPF file to use. A null string means use the active CPF file.<br>
/// <b>Flags</b> - Currently ignored.<br>
/// <b>Format</b> <br>
/// <var>0</var> - Standard report list format<br>
/// <var>1</var> - ^CONFIG global format<br>
/// <var>2</var> - CPF file format format<br>
/// Note: This query may change in future versions<br>
ClassMethod ListExecute(ByRef %qHandle As %Binary, Names As %String = "*", CPFFile As %String = "", Flags As %Integer = 0, Format As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod ListFetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

ClassMethod ListClose(ByRef %qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

/// Return the status of ECP servers.<br>
/// Internal use only.<br>
ClassMethod StatusListExecute(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

ClassMethod StatusListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = StatusListExecute ]
{
}

ClassMethod StatusListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = StatusListExecute ]
{
}

/// Return the status of ECP servers for SMP display.<br>
/// Internal use only.<br>
ClassMethod StatusListSMPExecute(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

ClassMethod StatusListSMPFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = StatusListSMPExecute ]
{
}

ClassMethod StatusListSMPClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = StatusListSMPExecute ]
{
}

ClassMethod StatusListSMPFilterExecute(ByRef qHandle As %Binary, Filter As %String = "") As %Status [ Internal ]
{
}

ClassMethod StatusListSMPFilterFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = StatusListSMPFilterExecute ]
{
}

ClassMethod StatusListSMPFilterClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = StatusListSMPFilterExecute ]
{
}

}
