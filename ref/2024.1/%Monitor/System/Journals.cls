Class %Monitor.System.Journals Extends %Monitor.System.Adaptor [ ProcedureBlock, System = 4 ]
{

Parameter APPLICATION [ Internal ] = "CACHE";

/// Journal space available (MB)
Property JournalSpace As %Monitor.Integer;

/// Journal status - 2 (Severe) less than 50mb, 1 (Warning) less than 250mb, 0 (OK) 250mb or more
Property JournalStatus As %Monitor.Integer;

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
