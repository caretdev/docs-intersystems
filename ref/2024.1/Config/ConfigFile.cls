/// This class allows you to modify and view the [ConfigFile] section of the CPF file through
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
/// %SYS>s Status=##Class(Config.ConfigFile).Get(.Properties)
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// %SYS>zw Properties
/// Properties("Version")=2009.1
/// </pre>
Class Config.ConfigFile Extends (%Persistent, Config.CommonSingleMethods, Config.CommonProperties, %SYSTEM.Help) [ Final, Inheritance = right, System = 4 ]
{

Property Product As %String(MAXLEN = 64, MINLEN = 1) [ InitialExpression = "IRIS", Required ];

/// Version of the CPF file.<br>
Property Version As %String(MAXLEN = 7, MINLEN = 1) [ InitialExpression = {$parameter("Config.CPF","CPFCURRENTVERSION")}, Required ];

}
