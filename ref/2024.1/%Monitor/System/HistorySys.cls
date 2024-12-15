/// %Monitor class to collect and manage part of the Monitor History Database.
/// This class collects the SYS.History.SysData samples for the System Usage Metrics,
/// as defined in the Usage and Database classes, at somewhat longer intervals than the
/// History class (default of 5 minutes).
/// <br><br>
/// By default the SysData collection is kept for 7 days and then purged.
/// The number of days to keep may be modified using SYS.History.PerfData:SetPurge()
/// The SysData samples can be automatically rolled up at the end of each day into
/// Hourly (SYS.History.Hourly) or Daily (SYS.History Daily) summaries, which can be
/// kept for longer periods.
Class %Monitor.System.HistorySys Extends %Monitor.System.Adaptor [ System = 4 ]
{

/// Keep track of last date to see of it's time to purge/summarize
Property Day As %Integer [ Internal ];

/// Keep a copy of the last PerfData sample for calculating deltas
Property Last As SYS.History.SysData [ Internal ];

/// Keep a copy of the last UserSys sample for calculating deltas
Property User As %RegisteredObject [ Internal ];

/// Keep a list of properties for 'counter' type user classes
Property CtrList As array Of %List [ Internal ];

/// Length of last sample
Property Length As %Monitor.Integer;

/// Status of last sample
Property Status As %Monitor.String;

/// Keep count of consecutive errors
Property Errors As %Integer [ Internal ];

/// Initialize property values
Method Startup() As %Status
{
}

/// Get the basic SYS.History.SysData sample for the Monitor History Database.
/// This method also handles purging and accumulation of the Detail metrics
/// into the long term database (SYS.History.Hourly and SYS.History.Daily).
Method GetSample() As %Status
{
}

}
