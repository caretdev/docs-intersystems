/// Monitor system metrics by globals.<br>
/// <br>This class, and others that inherit from %Monitor.System.Abstract, provides an object
/// API to the same system metrics as the ^PERFMON utility. Instantiating this class also
/// starts the collection of ^PERFMON system metrics, which can have a significant
/// impact on a busy system. Note that stopping ^PERFMON will also disable the sampling here.<br><br>
/// Properties are inherited from AbstractGlobals.
Class %Monitor.System.Globals Extends (%Monitor.System.Adaptor, %Monitor.System.Abstract, %Monitor.System.AbstractGlobals) [ Inheritance = right, System = 4 ]
{

Parameter APPLICATION [ Internal ] = "CACHE";

Property Data As %String [ Internal, MultiDimensional ];

Property GloCount As %Integer [ Internal ];

Parameter INDEX [ Internal ] = "Name";

/// Full Global name
Property Name As %Monitor.String;

/// Directory where Global is
Property Directory As %Monitor.String;

/// Name of the Global
Property GlobalName As %Monitor.String;

/// On Startup enable PERFMON
Method Startup() As %Status
{
}

/// Initialize global metrics
Method Initialize() As %Status
{
}

/// Get global metric sample
/// A return code of $$$OK indicates there is a new sample instance.
/// A return code of 0 indicates there is no sample instance.
Method GetSample() As %Status
{
}

}
