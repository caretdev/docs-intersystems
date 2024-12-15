/// A single value for a Dashboard Sensor gathered at a specific time.
/// The collected history of a Sensor is kept as children of %SYS.Monitor.Sensor.
Class %SYS.Monitor.Reading Extends %Persistent
{

/// UTC Timestamp for reading.
Property ReadTime As %TimeStamp [ InitialExpression = {$zdatetime($ztimestamp,3)}, Internal ];

/// Return Local Time based on UTC ReadTime.
Property LocalReadTime As %TimeStamp [ Calculated, Internal ];

Method LocalReadTimeGet() As %String [ CodeMode = expression, Internal ]
{
}

Property Value As %String;

Relationship Sensor As %SYS.Monitor.Sensor [ Cardinality = parent, Inverse = Readings ];

ClassMethod LocalTime(time) As %TimeStamp [ Internal, SqlProc ]
{
}

/// Add sensor history entry for Dashboard
ClassMethod AddDashboardEntry(Sensor As %String, Value As %String, Item As %String = "", ReadTime As %TimeStamp = "", ByRef Alert As %Integer) As %Integer [ Internal ]
{
}

/// Get max, min, mean, stdDev for a Sensor.Item.
/// 'BeginTime' is a UTC TimeStamp. Returns true if data, or false if not.
ClassMethod GetCalculatedValues(Sensor As %String, Item As %String, BeginTime As %TimeStamp, ByRef Values As %String) As %Boolean [ Internal ]
{
}

/// Returns 0:"OK",1:"Warning",2:"Critical".
ClassMethod GetState(sid As %String, iid As %String, max As %Integer, min As %Integer) As %Integer [ Internal ]
{
}

/// Purge old readings, up to 'Time' argument (in %TimeStamp format).
ClassMethod Purge(Time As %TimeStamp) As %Status
{
}

/// Return the sensor data for a given time range
/// Return the sensor data for a given time range. Uses UTC time for arguments and data.
/// Return the sensor data for a given Sensor.Item. 'Item' must be '-' for a top level Sensor.
/// Return the sensor data for a given Sensor.Item. 'Item' must be '-' for a top level Sensor.
/// Uses UTC time for arguments and data.
/// INPUTS
/// sid: A string defining the sensor's name, or null if all sensor's readings should be returned
/// iid: A string defining the sensor's item, or null if all sensor's readings should be returned
/// sPer: An integer defining the sample period of which to return readings
/// sTime: A string in timestamp format that defines the starting point to get data from
/// readings: A list of objects passed in by reference that will be populated with sensor data
/// RETURNS
/// code: the http code (204 if no data was found, 200 if data was found)
ClassMethod GetReadings(sid As %String = "", iid As %String = "", sPer As %Integer, sTime As %String, ByRef readings As %ListOfObjects) As %Integer
{
}

ClassMethod NewInterval(start As %TimeStamp, read As %TimeStamp, sPer As %Integer) As %Integer
{
}

}
