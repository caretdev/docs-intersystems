/// Monitor Audit event counts.<br>
///
Class %Monitor.System.AuditEvents Extends %Monitor.System.Adaptor [ System = 4 ]
{

Parameter APPLICATION [ Internal ] = "CACHE";

Parameter INDEX = "EventIdx";

/// Index of the Event in list
Property EventIdx As %Monitor.Integer;

/// Full name of the event
Property EventName As %Monitor.String;

/// Timestamp
Property EventTime As %Monitor.String;

/// Username
Property EventUser As %Monitor.String;

Property Rset As %Library.ResultSet [ Internal ];

Property LastTime As %String [ Internal ];

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
