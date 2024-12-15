/// Configuration parameters for SAM (System Alerting and Monitoring). <br><br>
/// This controls behavior of the SYS.Monitor.SAM.Sensors collector class.
Class SYS.Monitor.SAM.Config Extends %Persistent
{

Parameter METRICGROUPS = "Performance,Mirrors,Database,CPU,CSPGateway,Journal,License,Memory,Process,Shadows,Transactions,SharedMemory,WriteDemon,Diagnostic";

Property Key As %String [ InitialExpression = "SAM" ];

/// A list of Sensor Groups to omit from each collection.
/// <br><br>
/// Valid values are Performance, Mirrors, Database, CPU, CSPGateway, Journal,
/// License, Memory, Process, Shadows, Transactions, SharedMemory, WriteDemon and Diagnostic
/// <br><br>
/// To update: set sam=##class(SYS.Monitor.SAM.Config).Open(),sam.ExcludeMetrics=$lb("Shadows","Transactions") do sam.%Save()
Property ExcludeMetrics As %List;

/// An array of Application Classes/Namespaces to include with each collection.
/// Each class must inherit from %SYS.Monitor.SAM.Abstract and implement the GetSensors() method.
/// Classname is used as the key, and the value may be a single Namespace or a comma-delimited list.
Property ApplicationClasses As array Of %String [ Internal ];

/// Add an Application class name to be called during each SAM collection.
/// The class must inherit from %SYS.Monitor.SAM.Abstract and implement the GetSensors() method.
/// <br><br>
/// Note that the 'Namespace' argument is typically a single Namespace, but may be a comma-delimited list.
/// Calling this method for an existing ApplicationClass will replace the Namespace(s) for this Class.
/// For multiple Namespaces, the ApplicationClass must differentiate Sensor names for each Namespace.
ClassMethod AddApplicationClass(ClassName As %String, Namespace As %String) As %Status
{
}

/// Remove an Application class name from the list to be called during each SAM collection.
ClassMethod DeleteApplicationClass(ClassName As %String) As %Status
{
}

ClassMethod Open() As SYS.Monitor.SAM.Config [ Internal ]
{
}

Method %OnValidateObject() As %Status
{
}

/// Export all source code to enable Prometheus API on older versions
/// Creates SAM.XML in current directory. Returns status a list of 'errors'.
/// Use Do $System.OBJ.Load("SAM.xml","ck") to import.
ClassMethod ExportAPI(errors As %String) As %Status [ Internal ]
{
}

/// Create /api/monitor REST API
ClassMethod CreateWebApp() As %Status [ Internal ]
{
}

}
