/// Abstract definition of a Sensor collector for a Dashboard. This a special instance of a Sensor,
/// which will collect the Sensors defined by calling CreateSensor() and then store the collected values
/// in %SYS.Monitor.Sensor.Readings. The graphic Dashboard API will then be able to fetch the Sensor data
/// from there for display.
/// <br><br>
/// User may implement Dashboard Sensors by inheriting from this class and implementing the Start() method
/// (to create the Sensor definitions) and the GetSensors() method (to store the data).
Class %SYS.Monitor.AbstractDashboard Extends %SYS.Monitor.AbstractSensor
{

/// Time that the collection was started. This may be set by the child class so that
/// all Readings are recorded at the same time. If it's left null, then AddDashboardEntry
/// will fill in the current time for each Sensor/Item recorded.
Property ReadTime As %TimeStamp;

/// For Dashboard sensors we just save the sample Value in %SYS.Monitor.Sensor.Reading
Method SetSensor(Sensor As %String, Value As %String, Item As %String = "") As %Integer [ Internal ]
{
}

/// Create (or update) a Dashboard Sensor definition. User-defined Sensors should call this in Start().
/// See %SYS.Monitor.Sensor for an explanation of each argument (property), but users should call here
/// rather than use the class API so the Sensor is correctly associated with their Dashboard collector Class.
/// This only creates the Sensor if it doesn't already exist. Updating Critical/Warning Values or other
/// properties can be done through the Class API once the Sensor is created.
ClassMethod CreateSensor(Sensor As %String, Item As %String = "", CriticalValue As %String = "", WarningValue As %String = "", Alert As %String = "", Units As %String = "", Operator As %String = "", Description As %String = "") As %Status
{
}

/// Sensors which have reached their CriticalValue will call here to post an Alert.
/// By default this will post a message to messages.log which will trigger an alert by the System Monitor.
/// User-defined Sensors may override that behavior by replacing this method.
Method Alert(Sensor As %String, Item As %String, Value As %String)
{
}

/// Check to see if any Dashboard history needs to be purged.
/// This should be called once a day by %SYS.Monitor.Control.
ClassMethod Purge() [ Internal ]
{
}

}