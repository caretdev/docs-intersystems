/// Monitor system metrics by routine.<br>
/// <br>This class, and others that inherit from %Monitor.System.Abstract, provides an object
/// API to the same system metrics as the ^PERFMON utility. Instantiating this class also
/// starts the collection of ^PERFMON system metrics, which can have a significant
/// impact on a busy system. Note that stopping ^PERFMON will also disable the sampling here.<br><br>
/// Properties are inherited from AbstractMetrics and AbstractGlobals.
Class %Monitor.System.Routines Extends (%Monitor.System.Adaptor, %Monitor.System.Abstract, %Monitor.System.AbstractMetrics, %Monitor.System.AbstractGlobals) [ Inheritance = right, System = 4 ]
{

Parameter APPLICATION [ Internal ] = "CACHE";

Property Data As %String [ Internal, MultiDimensional ];

Property Count As %Integer [ Internal ];

Parameter INDEX [ Internal ] = "RoutineName";

/// Name of routine
Property RoutineName As %Monitor.String;

/// Directory where routine is
Property Directory As %Monitor.String;

/// On Startup enable PERFMON
Method Startup() As %Status
{
}

/// Initialize routine metrics.
Method Initialize() As %Status
{
}

/// Get routine metric sample.<br>
/// A return code of $$$OK indicates there is a new sample instance.<br>
/// A return code of 0 indicates there is no sample instance.
Method GetSample() As %Status
{
}

}
