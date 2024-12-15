/// Recent activity log for Object Gateway Servers.
Class %Net.Remote.ActivityLog Extends %Persistent [ System = 3 ]
{

Property DateTime As %TimeStamp;

Property RecordType As %String(DISPLAYLIST = ",Debug,Info,Warning,Error", VALUELIST = ",0,1,2,3");

Property GatewayName As %String;

Property GatewayType As %String;

Property Server As %String;

Property Port As %String;

Property Text As %String(MAXLEN = "");

Property Job As %String;

/// Lookup by Gateway Name.
/// Lookup by Gateway Name and DateTime range.
/// Lookup all Gateways by DateTime range.
/// Purge Gateway activity log records older than a given number of days (default 7 days).
ClassMethod Purge(pDays As %Integer = 7, Output pDeleted As %Integer) As %Status
{
}

}
