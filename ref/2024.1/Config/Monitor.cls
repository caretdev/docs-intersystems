/// This class allows you to modify and view the [Monitor] section of the CPF file through
/// programatic APIs. While properties are usually modified through the System Management
/// portal, there may be some occasion where modifying them through the API's is best
/// for your system. In all the Config methods, if you do not specify the CPFFile parameter,
/// the currently active CPF file is used. If you wish to modify a CPF file which is not
/// the currently active one, then specify the CPFFile you wish to modify in the method call.<br>
/// The Flags parameter does not normally need to be specified; the defaults are usually
/// sufficient for most cases.<br>
/// You can use either the provided API's (Get/Modify) to modify the properties by passing
/// in the correct parameters, or use Object syntax to open and directly manipulate the config
/// objects.
/// <br>
/// <br>
/// EXAMPLE:<br>
/// <br>
/// <pre>
/// ; Use class methods to modify properties
/// %SYS>s Status=##Class(Config.Monitor).Get(.Properties)
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// %SYS>zw Properties
/// Properties("PatrolCollectionInterval")=30
/// Properties("PatrolDisplayMode")=0
/// Properties("PatrolEnabled")=0
/// Properties("PatrolTopProcesses")=20
/// Properties("SNMPEnabled")=0
/// Properties("WMIEnabled")=0
/// %SYS>s Properties("PatrolCollectionInterval")=40
/// %SYS>s Status=##Class(Config.Monitor).Modify(.Properties)
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// ; Now use Objects to modify properties
/// %SYS>s Obj=##Class(Config.Monitor).Open()
/// %SYS>w Obj.PatrolCollectionInterval
/// 40
/// %SYS>s Obj.PatrolCollectionInterval=60
/// %SYS>s Status=Obj.%Save()
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// </pre>
Class Config.Monitor Extends (%Persistent, Config.CommonSingleMethods, Config.CommonProperties, %SYSTEM.Help) [ Final, Inheritance = right, System = 4 ]
{

/// Automatically starts the SNMP agent when the system is started.<br>
/// <br><br>
/// Modifying this property will require a restart of the system to make it active.
Property SNMPEnabled As %Boolean [ InitialExpression = 0, Required ];

/// Load the parameters into memory and activate.<br>
/// Parameters:<br>
/// <b>Obj</b> = Handle to the object which caused the load. If "",
/// then load everything, only called from STU.<br>
/// <b>Flags</b> = Type of modification.<br>
/// 0 - Modify<br>
/// 1 - Create/Insert<br>
ClassMethod Load(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status
{
}

}
