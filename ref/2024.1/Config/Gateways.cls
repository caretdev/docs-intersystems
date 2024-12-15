/// This class allows you to modify and view the [Gateways] section of the CPF file through
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
/// %SYS>s Name="NewGateway"
/// %SYS>s Properties("Type")="Java"
/// %SYS>s Properties("Server")="127.0.0.1"
/// %SYS>s Properties("Port")=53273
/// %SYS>s Status=##Class(Config.Gateways).Create(Name,.Properties)
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// </pre>
/// IMPORTANT: If you are going to use Objects to manipulate the properties, you must set the Type of the
/// object before you set any of the other properties.<br>
/// <pre>
/// s Obj=##Class(Config.Gateways).%New()
/// s Obj.Name="NewGateway"
/// s Obj.Type="Java"
/// ; Set other properties here after Type
/// s Obj.Server="127.0.0.1"
/// s Obj.Port=53274
/// s Status=Obj.%Save()
/// </pre>
///
Class Config.Gateways Extends (%Persistent, Config.CommonMultipleMethods, Config.CommonProperties, %SYSTEM.Help) [ Final, Inheritance = right, System = 4 ]
{

/// Which IP address, among the several IP addresses that the machine has, that allows incoming connections.
/// The default is 127.0.0.1.
/// Specify 0.0.0.0 to listen on all IP addresses local to the machine (127.0.0.1, VPN address, etc.).
/// You can also specify a single existing local IP address to restrict the listener to that IP address.
/// <br>
Property AllowedIPAddresses As %String(MAXLEN = 32000) [ InitialExpression = "127.0.0.1" ];

/// Number of seconds to wait for a connection to be established with the Gateway Server.
Property ConnectionTimeout As %Integer(MAXVAL = 300, MINVAL = 2) [ InitialExpression = 5 ];

/// Field 1-n provide storage for specific connection types. They are aliased by the various fields.
Property Field1 As %String(MAXLEN = 32000) [ Internal ];

Property Field2 As %String(MAXLEN = 32000) [ Internal ];

Property Field3 As %String(MAXLEN = 32000) [ Internal ];

/// Number of seconds to wait for a response during initialization of the Gateway Server.
Property InitializationTimeout As %Integer(MAXVAL = 300, MINVAL = 2) [ InitialExpression = 5 ];

/// Fully qualified name of a file to log all communication between InterSystems IRIS and the Gateway Server.
/// Usually this setting should be left blank, and used only for trouble-shooting.
Property LogFile As %String(MAXLEN = 1023);

/// Name of the Gateway
Property Name As %String [ Required ];

/// TCP port number for communication between the Gateway Server and the proxy classes in InterSystems IRIS.
Property Port As %Integer(MAXVAL = 65535, MINVAL = 1) [ Required ];

/// The Resource name that controls access to this gateway.<br>
/// If no resource is defined, then it is a public gateway which
/// anyone can use.<br>
Property Resource As %String(MAXLEN = 64, MINLEN = 0) [ InitialExpression = {$$$GatewayObjectResourceName} ];

/// Type of the Object Gateway.  It can have one of the following values:
/// <br>Type = "Remote" for remote connections
/// <br>Type = "Java" for Gateway for Java
/// <br>Type = "XSLT" for Gateway for XSLT
/// <br>Type = "JDBC" for Gateway for JDBC
/// <br>Type = "ODBC" for Gateway for ODBC
/// <br>Type = "ML" for Gateway for Integrated ML
/// <br>Type = ".NET" for Gateway for .NET
/// <br>Type = "Python" for Gateway for Python
/// <br>Type = "R" for Gateway for R
/// <br>Note: JDBC, Java, IntegratedML, XSLT, and R gateways are all Java-based.
Property Type As %String [ Required ];

Method TypeSet(value As %String) As %Status
{
}

Property passphraseList As %String [ Transient ];

/// Use shared memory for connection if available.<br>
Property UseSharedMemory As %Boolean [ InitialExpression = 1, Required ];

/// Name of entry in Security.SSLConfigs class to be used for Server TLS/SSL
Property SSLConfigurationServer As %String(MAXLEN = 64);

/// Name of entry in Security.SSLConfigs class to be used for Client TLS/SSL
Property SSLConfigurationClient As %String(MAXLEN = 64);

/// Should TLS/SSL client do Host Name Verification
Property VerifySSLHostName As %Boolean [ InitialExpression = 0 ];

/// CLASSPATH containing the files required to be passed as an argument when starting the JVM.
/// The user should typically provide here the files containing the classes used via the Java-based Gateway.
/// There is no need to include InterSystems' .jar files used by the Java-based Gateway.
/// We assume that the user has properly quoted the classpath and supplied the correct separators for the platform
/// in case of multiple files.
/// <br>(This property applies only to Java-based Gateways.)
Property ClassPath As %String(MAXLEN = 32000) [ Calculated, SqlComputeCode = { s {*} = {Field1} }, SqlComputed ];

Method ClassPathSet(value As %String) As %Status
{
}

/// Location of the JVM (similar to the JAVA_HOME environment variable).  It is used to find the target JVM
/// and assemble the command to start the Gateway. <br>
/// Note: If there is a default JVM on the machine that is usable without the need to specify its location,
/// this setting may be left blank.
/// <br>(This property applies only to Java-based Gateways.)
Property JavaHome As %String(MAXLEN = 1023) [ Calculated, SqlComputeCode = { s {*} = {Field2} }, SqlComputed ];

Method JavaHomeSet(value As %String) As %Status
{
}

/// Optional arguments to be passed to the Java Virtual Machine (JVM) to include when assembling the
/// command to start the Gateway. <br>
/// For example, you can specify system properties: <b>Dsystemvar=value</b> <br>
/// or set the maximum heap size: <b>Xmx256mb</b> <br>
/// and so on, as needed.
/// <br>(This property applies only to Java-based Gateways.)
Property JVMArgs As %String(MAXLEN = 32000) [ Calculated, SqlComputeCode = { s {*} = {Field3} }, SqlComputed ];

Method JVMArgsSet(value As %String) As %Status
{
}

/// Specified the .NET version to be used. Possible values are N6.0, N5.0, F4.6.2, F3.5.
/// The default is N6.0.
Property DotNetVersion As %String(MAXLEN = 32) [ Calculated, SqlComputeCode = { s {*} = {Field1} }, SqlComputed ];

Method DotNetVersionSet(value As %String) As %Status
{
}

/// Location of the Gateway Server executable.
/// It is used to find the target executable and assemble the command to start the Gateway
/// on a local machine. <br>
/// If this setting is not specified, the default directory used is ...\dev\dotnet\bin\ under
/// the instance's installation directory, with the appropriate subdirectory selected according to the DotNetVersion setting.
/// <br>(This property applies only to .NET Gateways.)
Property FilePath As %String(MAXLEN = 1023) [ Calculated, SqlComputeCode = { s {*} = {Field2} }, SqlComputed ];

Method FilePathSet(value As %String) As %Status
{
}

/// On 64-bit platforms, indicates if the Object Gateway server is to be executed as 32-bit (default) or 64-bit.
/// <br>(This property applies only to .NET Gateways and to 64-bit platforms.)
Property Exec32 As %Boolean [ Calculated, SqlComputeCode = { s {*} = {Field3} }, SqlComputed ];

Method Exec32Set(value As %String) As %Status
{
}

/// Optional Python options to be passed to the Python interpreter to include when assembling the
/// command to start the Gateway. <br>
/// <br>(This property applies only to Python Gateways.)
Property PythonOptions As %String(MAXLEN = 32000) [ Calculated, SqlComputeCode = { s {*} = {Field1} }, SqlComputed ];

Method PythonOptionsSet(value As %String) As %Status
{
}

/// Location of the Python Executable Path.  It is used to find the target Python interpreter
/// and get the command to start the Gateway. <br>
/// Note: If there is a default Python interpreter on the machine that is usable without the need to specify its location,
/// this setting may be left blank.
/// <br>(This property applies only to Python Gateways.)
Property PythonPath As %String(MAXLEN = 1023) [ Calculated, SqlComputeCode = { s {*} = {Field2} }, SqlComputed ];

Method PythonPathSet(value As %String) As %Status
{
}

/// Server Address<br>
/// (This property applies only to Remote Gateways.)
Property Address As %String(MAXLEN = 1023) [ Calculated, SqlComputeCode = { s {*} = {Field1} }, SqlComputed ];

Method AddressSet(value As %String) As %Status
{
}

/// Called by the Create method during import from a CPF file.<br>
ClassMethod CreateCallBack(Obj As %ObjectHandle, Data As %String) As %Status [ Internal ]
{
}

/// Callback from Create() after Obj is populated. Allows us to set the data
/// into Field1-Field3 based on Type.
ClassMethod CreateCallBackOptions(Obj As %ObjectHandle, Data As %String) As %Status [ Internal ]
{
}

/// Callback from Create() after Obj is populates. Allows us to set the data
/// into Field1-Field3 based on Type.
/// Write a default Gateways section in a CPF file.<br>
/// This method assumes that a CPF file has been opened, and that a U CPFFile command
/// has been executed before this is called.
ClassMethod Default(CPFFile As %String) As %Status [ Internal ]
{
}

/// Only return properties for the specific Type.
ClassMethod GetClassPropertiesCallBackOptions(ByRef Properties As %String) [ Internal ]
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

/// This callback method is invoked by the <METHOD>%ValidateObject</METHOD> method to
/// provide notification that the current object is being validated.
/// <P>If this method returns an error then <METHOD>%ValidateObject</METHOD> will fail.
Method %OnValidateObject() As %Status [ Internal, Private, ServerOnly = 1 ]
{
}

ClassMethod %OnBeforeSaveCallBack(insert As %Boolean, Obj As %ObjectHandle) As %Status [ Internal, Private ]
{
}

/// List Gateways in a CPF file.<br>
/// <br>
/// Parameters:<br>
/// <b>Names</b> - Comma separated list of Gateway names<br>
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

/// List Gateways in a CPF file.<br>
/// <br>
/// Parameters:<br>
/// <b>Names</b> - Comma separated list of Gateway names<br>
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
ClassMethod ListShortExecute(ByRef qHandle As %Binary, Filter As %String = "", CPFFile As %String = "", Flags As %Integer = 0, Format As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod ListShortFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListShortExecute ]
{
}

ClassMethod ListShortClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListShortExecute ]
{
}

/// Delete an External Language Server definition
/// <br>
/// Parameters:<br>
/// <b>Name</b> - Name of the ELS to delete.<br>
/// <br>
/// Return values:<br>
/// %Status<br>
ClassMethod Delete(name As %String) As %Status
{
}

}
