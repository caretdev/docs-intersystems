/// A list of Database properties for the SysData interval collection class
/// <p>For details, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+SYS.History.Database">History Monitor</a>. </p>
Class SYS.History.Database Extends %SerialObject [ System = 3 ]
{

/// Size of each database file (in MB)
Property FileSize As %Numeric;

/// Freespace available in each database file (in MB)
/// <br>
/// NOTE: this value is fetched from the %Monitor.System.Freespace class samples,
/// so that must be "active" or this will be blank.
Property FreeSpace As %Numeric;

/// Fetch a list of detail properties for this class for Hourly and Daily summaries
ClassMethod PropList() As %String [ Internal ]
{
}

/// Configure the summary methods for this class for either the Hourly or Daily summaries.
/// This is a comma-delimited list of functions to use for the summary. The available functions
/// are Average, Maximum (high-water mark), Minimum (lowest value), Standard Deviation, Median, and
/// Total. These are abbreviated in the 'Function' argument as "Avg", "Max", "Min", StDev", Med",
/// and "Tot". If nothing is specified, the default is "Avg,Max,StDev". You may also specify the
/// string "None" for a summary period to disable that summary.
/// <br><br>
/// A null 'Function' argument will return the current summary setting in the 'Function' variable.
/// <br><br>
/// The 'Period' argument can be either "Hourly" or "Daily".
ClassMethod SetSummary(ByRef Function As %String, Period As %String) As %Status
{
}

}
