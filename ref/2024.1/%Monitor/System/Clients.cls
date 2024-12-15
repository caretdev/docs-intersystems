/// Monitor Server clients.<br>
Class %Monitor.System.Clients Extends (%Monitor.System.Adaptor, %Monitor.System.Globals) [ Inheritance = right, System = 4 ]
{

Parameter APPLICATION [ Internal ] = "CACHE";

Property Data As %String [ Internal, MultiDimensional ];

Property Count As %Integer [ Internal ];

Parameter INDEX [ Internal ] = "ClientName";

/// Client name
Property ClientName As %Monitor.String;

/// Buffers for a client
Property Buffers As %Monitor.Integer;

/// Global kills sent to a client
Property GloKills As %Monitor.Integer;

/// Global refs sent to client
Property GloRefs As %Monitor.Integer;

/// Global sets sent to a client
Property GloSets As %Monitor.Integer;

/// Network cache hits
Property Hits As %Monitor.Integer;

/// Outgoing network IJC writes for a client
Property IJCw As %Monitor.Integer;

/// Lock commands sent to a client
Property Locks As %Monitor.Integer;

/// Network cache misses
Property Misses As %Monitor.Integer;

/// Requests sent by a client
Property Requests As %Monitor.Integer;

/// Retransmits for a client
Property Retransmits As %Monitor.Integer;

/// On Startup enable PERFMON
Method Startup() As %Status
{
}

/// Initialize client metrics
Method Initialize() As %Status
{
}

/// Get client metric sample
/// A return code of $$$OK indicates there is a new sample instance.
/// A return code of 0 indicates there is no sample instance.
Method GetSample() As %Status
{
}

}
