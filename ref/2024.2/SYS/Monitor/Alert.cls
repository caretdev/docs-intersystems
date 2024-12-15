Class SYS.Monitor.Alert Extends %Persistent [ ClassType = persistent, ProcedureBlock, System = 3 ]
{

/// Name of sensor
Property Sensor As %String(MAXLEN = 250);

/// Alert message
Property Msg As %String(MAXLEN = 500);

/// Previous state
Property PrevState As %Integer [ Required ];

/// Current state
Property State As %Integer [ Required ];

/// Date/Time of Alert
Property AlertTime As %String [ Required ];

/// Purge old alerts, up to specified date/time. Date/time is in $zdt($h,3) format.
ClassMethod Purge(Time As %String) As %Status [ Internal ]
{
}

/// Return the alerts between current state, and previous green state
/// Return the alerts for a given date/time range. Date/time is in $zdt($h,3) format.
/// Return the alert(s) for a given sensor, for a given date/time range. Date/time is in $zdt($h,3) format.
}
