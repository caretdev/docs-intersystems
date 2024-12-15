/// This class is a Daily summary of the detail PerfData and SysData collections. For each class sample
/// collected you may chose to have the Average, Maximum, Minimum, Median, Standard Deviation, and Total
/// maintained for the day. By default Average, Maximum, and Standard Deviation are kept.
/// Use the SetSummary method in each individual class (Performance, SystemUsage, etc.) to modify this.
/// Performance counters (SYS.History.Performance) are normalized to a per-second rate for
/// all the calculations.
/// <br><br>
/// This data can be manually purged using the Purge() method.
/// <p>For details, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+SYS.History.Daily">History Monitor</a>. </p>
Class SYS.History.Daily Extends (%Persistent, %XML.Adaptor) [ System = 4 ]
{

/// Time of summary
Property DateTime As %TimeStamp [ SqlColumnNumber = 2 ];

/// Number of Performance samples in this Daily period
Property PerfCount As %Integer;

/// Number of SystemUsage samples in this Daily period
Property SysCount As %Integer;

/// Number of WriteDaemon cycles in this Daily period
Property WDCount As %Integer;

/// Performance metrics
Property Perf As array Of SYS.History.Performance;

/// WriteDaemon metrics
Property WD As array Of SYS.History.WriteDaemon;

/// System Usage metrics
Property Sys As array Of SYS.History.SystemUsage;

/// Database metrics
Property DB As array Of SYS.History.Database;

/// UTC date key
Property ZDATE As %Integer;

/// UTC time key
Property ZTIME As %Integer;

/// Purge Summary data. Purge all days prior to the 'Date' parameter (in YYYY-MM-DD format).
/// Returns the number of days purged.
ClassMethod Purge(Date As %String) As %Integer
{
}

/// Export Daily data for a time range in CSV format. The default is all of the
/// Perf, Sys and WD data currently in the Daily class.
/// <br><br>
/// The default FileName is HistoryDay_config_date_time.csv in the MGR directory.
/// <br>
/// 'Start' and 'End' times (if necessary) are in YYYY-MM-DD HH:MM:SS format.
/// <br>
/// 'Class' can be a comma-delimited list one or more of these classes of metrics: "Perf", "Sys", "WD".
/// Or it can be "DB" to select the Database properties. The Database class can not be mixed with
/// the other classes since it uses a different key structure to accommodate multiple databaes.
/// <br>
/// 'Function' can be a comma-delimited list one or more of these summary functions: "Avg", "Max", "Min", StDev", Med" or "Tot".
/// The default is to include all summary functions.
/// <br>
/// 'Database' can be used to select a specific database (by name). Only used if "DB" is selected in 'Class'
ClassMethod Export(FileName As %String, Start As %TimeStamp, End As %TimeStamp, Class As %String, Function As %String, Database As %String) As %Status
{
}

/// Full listing of Daily Performance metrics for a day or range of date/times. Default is yesterday.
/// Full listing of Daily SystemUsage metrics for a day or range of date/times. Default is yesterday.
/// Full listing of Daily WriteDaemon metrics for a day or range of date/times. Default is yesterday.
/// Full listing of Daily Database metrics for a day or range of date/times. Default is yesterday.
}
