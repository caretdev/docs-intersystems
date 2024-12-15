/// Abstract class for a Sensor<p>
/// User classes inherit from this class to become a Sensor for System Monitor.
Class %SYS.Monitor.AbstractSensor Extends %RegisteredObject [ Abstract, System = 3 ]
{

/// logfile
Property Logfile As %String [ InitialExpression = {$zu(12)_"SystemMonitor.log"}, Internal ];

/// Array of sensor name / value pairs
Property SensorReading [ Internal, MultiDimensional ];

/// Array of sensor name / high water mark value pairs [deprecated]
Property SensorMaxValue [ Internal, MultiDimensional ];

/// Runtime state
Property State As %String [ InitialExpression = " " ];

Property Notifications [ MultiDimensional ];

/// USER MAY IMPLEMENT THIS METHOD<p>
/// The System Monitor Controller calls this method once when it starts.
/// The user may initialize the properties, counters, etc.<p>
/// A return code of $$$OK indicates there were no errors.
/// A return code of 0 indicates a failure.
Method Start() As %Status
{
}

/// USER MUST IMPLEMENT THIS METHOD<p>
/// The System Monitor Controller calls this method to get sensor readings. It is called every 10 seconds by default.<p>
/// Users may return readings for multiple sensors (but only one reading per sensor on each call).
/// User calls SetSensor(sensorname, value[,type]) for every sensor reading. The sensors are kept in the property SensorReading(sensor)=value,
/// and SensorType(sensor)=type.
/// The controller picks up the sensors and their values after the return from GetSensors().<p>
/// A return code of $$$OK indicates there were no errors.
/// A return code of 0 indicates a failure.
Method GetSensors() As %Status [ Abstract ]
{
}

/// USER DOES NOT IMPLEMENT THIS METHOD
/// The user must call this method to set a sensor reading. Readings are picked up by the controller after GetSensors() returns.<p>
Method SetSensor(Sensor As %String, Value As %String, Qualifier As %String = "") As %Integer
{
}

/// USER DOES NOT IMPLEMENT THIS METHOD
/// The controller calls this to initialize the SensorReadings array.
Method ClearSensors() As %Integer [ Final ]
{
}

/// USER DOES NOT IMPLEMENT THIS METHOD
/// This method is called to clear notifications for the SYS.Monitor Controller
Method ClearNotifications() As %Integer [ Final ]
{
}

/// USER DOES NOT IMPLEMENT THIS METHOD
/// This method is called to post a notification
Method Notify(Sensor As %String, Severity As %Integer, Msg As %String) As %Integer [ Final ]
{
}

/// USER DOES NOT IMPLEMENT THIS METHOD<p>
Method OpenLog() As %Status [ Final ]
{
}

/// USER DOES NOT IMPLEMENT THIS METHOD<p>
/// User may call this method to log information to the SystemMonitor.log file in the mgr directory.
Method LogMsg(msg As %String = "") As %Status [ Final ]
{
}

/// USER DOES NOT IMPLEMENT THIS METHOD<p>
/// User may call this method to post alerts directly to the messages.log file.
Method LogCon(Msg As %String = "", Severity As %Integer = 0) As %Status [ Final ]
{
}

}
