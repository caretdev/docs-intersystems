/// Abstract class for a Subscriber<p>
/// User classes inherit from this class to become a Subscriber for System Monitor.
Class %SYS.Monitor.AbstractSubscriber Extends %RegisteredObject [ Abstract, System = 3 ]
{

/// logfile
Property Logfile As %String [ InitialExpression = {$zu(12)_"SystemMonitor.log"}, Internal ];

/// Sensor readings passed from Sensor classes
/// Sensor(<sensor>, <qualifier>) = value
Property SensorReading [ MultiDimensional ];

/// Sensor subscription lists. If Subscription(type)=1 OR Subscription(name)=1
/// Subscription(<sensor>)= 1
Property SensorName [ MultiDimensional ];

Property Notifications [ MultiDimensional ];

/// Runtime state
Property State As %String [ InitialExpression = " " ];

/// USER MAY IMPLEMENT THIS METHOD
/// This method is called when the subscriber class is created.
Method Start() As %Status
{
}

/// USER MUST IMPLEMENT THIS METHOD
/// This method is called when the sensor array is filled.
Method Receive() As %Status [ Abstract ]
{
}

/// USER DOES NOT IMPLEMENT THIS METHOD
/// This method is called to clear sensor readings for the SYS.Monitor Controller
Method ClearSensors() As %Integer [ Final ]
{
}

/// USER DOES NOT IMPLEMENT THIS METHOD
/// This method is called to get sensor readings. For a given sensor / qualifier pair, returns the next qualifier and the associated value.<br>
/// Returns 1 if value, 0 if no more values, -1 if invalid Sensor.
Method GetNextSensor(Sensor As %String, ByRef qHandle As %Binary, ByRef Qualifier As %String, ByRef Value As %String) As %Integer [ Final ]
{
}

/// USER DOES NOT IMPLEMENT THIS METHOD
/// This method is called to get sensor readings. For a given sensor / qualifier pair, returns the value.<br>
/// Returns 1 if value, 0 if no value, -1 if invalid Sensor.
Method GetSensor(Sensor As %String, Qualifier As %String = "", ByRef Value As %String = "") As %Integer [ Final ]
{
}

/// USER DOES NOT IMPLEMENT THIS METHOD
/// This method is called to get sensor names. For a given sensor, returns the next sensor.<br>
/// Returns sensor name or "" if no more sensors.
Method GetNextSensorName(ByRef Sensor As %String = "") As %Status [ Final ]
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

Method OpenLog() As %Status [ Final ]
{
}

Method LogMsg(msg As %String = "") As %Status
{
}

Method LogCon(Msg As %String = "", Severity As %Integer = 0) As %Status [ Final ]
{
}

/// Query method to traverse the SensorReading property. Starting from a null Sensor, returns Sensor, Qualifier, Value, and Sensor Name.<br>
/// Returns 0 when there are no more sensor readings.
Method GetAllSensors(ByRef qHandle As %Binary, ByRef Sensor As %String, ByRef Qualifier As %String, ByRef Value As %String) As %Integer [ Final ]
{
}

}
