/// Monitor Audit event counts.<br>
///
Class %Monitor.System.AuditCount Extends %Monitor.System.Adaptor [ System = 4 ]
{

Parameter APPLICATION [ Internal ] = "CACHE";

Parameter INDEX = "EventName";

/// Full name of the event
Property EventName As %Monitor.String;

/// Enabled
Property Enabled As %Monitor.String;

/// Audit events lost
Property Lost As %Monitor.Integer;

/// Audit events written
Property Written As %Monitor.Integer;

/// Total audit events
Property Total As %Monitor.Integer;

Property Rset As %Library.ResultSet [ Internal ];

/// On Startup initialize the query
Method Startup() As %Status
{
}

/// On Shutdown close the cconsole file
Method Shutdown() As %Status
{
}

/// Execute the query
Method Initialize() As %Status
{
}

/// Get the audit counts
/// A return code of $$$OK indicates there is a new sample instance.
/// A return code of 0 indicates there is no sample instance.
Method GetSample() As %Status
{
}

}
