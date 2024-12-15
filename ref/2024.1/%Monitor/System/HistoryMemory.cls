/// %Monitor class to collect and manage part of the Monitor History Database.
/// This class collects the SYS.History.HistoryMemory samples for the Shared Memory Heap Metrics,
/// at a default interval of 300 seconds.
/// <br>
Class %Monitor.System.HistoryMemory Extends %Monitor.System.Adaptor [ System = 4 ]
{

/// Keep track of last date to see of it's time to purge/summarize
Property Day As %Integer [ Internal ];

/// Status of last sample
Property Status As %Monitor.String [ Internal ];

/// Keep count of consecutive errors
Property Errors As %Integer [ Internal ];

/// Values to control sample times
Property LastTime As %Integer;

/// Interval between samples.
Property Interval As %Integer [ InitialExpression = 300 ];

/// Initialize property values
Method Startup() As %Status [ Internal ]
{
}

ClassMethod Purge() As %Status [ Internal ]
{
}

Method Initialize() As %Status [ Internal ]
{
}

Method Shutdown() As %Status [ Internal ]
{
}

/// <p>Get the basic SYS.History.PerfData sample for the Monitor History Database.
Method GetSample() As %Status
{
}

}
