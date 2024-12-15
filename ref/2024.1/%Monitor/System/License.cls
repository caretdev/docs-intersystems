/// This class can sample the status of the License Units, both local and distributed,
/// and provide values for each Property listed.
/// <br> <br>
/// It may also be used to create an alert based on the results. The simplest
/// way to create an alert is to set a minimum level using the SetAlert() class method.
/// Then use %MONAPPMGR to 'activate' this class in the %SYS namespace. When the
/// Application Manager calls the GetSample() method to sample the license counts, if they fall
/// below the minimum level the method will generate an entry in the cconsole.log file (which
/// may then be emailed via the System Monitor). See the SetAlert() method for more
/// details.
/// <br> <br>
/// Users may also use this Class and the sampled Property values to create an
/// Alert with the %Monitor.Alert Class. This allows for more complex checks and/or
/// generating more specific alerts.
///
Class %Monitor.System.License Extends %Monitor.System.Adaptor [ ProcedureBlock, System = 4 ]
{

Parameter APPLICATION [ Internal ] = "CACHE";

/// The current number of local license units used.
Property CurrentUsedLocal As %Monitor.Integer;

/// A highwater-mark for the maximum number of local license units used since InterSystems IRIS was started.
Property MaxUsedLocal As %Monitor.Integer;

/// The total number (used and unused) of local license units available.
Property AvailableLocal As %Monitor.Integer;

/// The current number of distributed license units used.
Property CurrentUsedDist As %Monitor.Integer;

/// A highwater-mark for the maximum number of distributed license units used since InterSystems IRIS was started.
Property MaxUsedDist As %Monitor.Integer;

/// The total number (used and unused) of distributed license units available.
Property AvailableDist As %Monitor.Integer;

/// Initialize routine metrics.
Method Initialize() As %Status
{
}

/// Get routine metric sample. Fetches current license unit values for each Property
/// and may generate an entry in cconsole.log if the unused License Units fall below
/// a minimum value (see SetValue method).
/// <br><br>
/// A return code of $$$OK indicates there is a new sample instance.<br>
/// A return code of 0 indicates there is no sample instance.
Method GetSample() As %Status
{
}

/// Stores a minimum level of available license units to be checked by the
/// GetSample() method.
/// <br> <br>
/// If the value of (AvailableLocal - CurrentUsedLocal) or (AvailableDist - CurrentUsedDist)
/// falls below this value, then the GetSample method will log an error in the cconsole.log, which
/// will trigger an alert by the System Monitor. Note that the %Monitor.System.License
/// Class must be "activated" in the Application Monitor (run ^%MONAPPMGR in the %SYS namespace).
/// <br> <br>
/// A value of "0" will disable this alert.
/// <br> <br>
/// Returns the previous value. If Minimum="", it returns the current value but does not change it.
ClassMethod SetAlert(Minimum As %Integer) As %Integer
{
}

}