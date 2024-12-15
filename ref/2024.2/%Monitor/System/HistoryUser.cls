/// %Monitor class to collect and manage part of the Monitor History Database.
/// This class collects the SYS.History.User samples for the user-defined metrics.
/// See the SYS.History.Adaptor class for more details on how to create user-defined metrics.
Class %Monitor.System.HistoryUser Extends %Monitor.System.Adaptor [ System = 4 ]
{

/// Keep track of last date to see of it's time to purge/summarize
Property Day As %Integer [ Internal ];

/// Keep a copy of the last sample for calculating deltas
Property User As %RegisteredObject [ Internal ];

/// Keep a list of properties for 'counter' type classes
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

/// Get the basic SYS.History.User sample for the Monitor History Database.
/// This method also handles purging and accumulation of the Interval metrics
/// into the long term database (SYS.History.UserHourly and SYS.History.UserDaily).
Method GetSample() As %Status
{
}

}
