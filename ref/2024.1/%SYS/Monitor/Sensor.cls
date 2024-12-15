/// The persistent definition of a System Monitor Dashboard Sensor.
/// This also includes the history of all Sensor Readings.
Class %SYS.Monitor.Sensor Extends %Persistent
{

/// Name of the Sensor
Property Name As %String(MAXLEN = 100);

/// Some sensors may define multiple values or 'subitems', such disk space for a specific database.
/// If the sensor is only a single value, then this property contains a "-" to identify as a single
/// or base level sensor.
Property Item As %String(MAXLEN = 500) [ InitialExpression = "-" ];

/// Text description of the Sensor for documentation.
Property Description As %String(MAXLEN = 200);

/// Number of seconds between each reading
/// This value is inherited by %SYS.Monitor.Control in all cases, but could be extended so sensors have induvidual reading delays
Property ReadingInterval As %String;

/// Value used to check for warning status. Note that if WarningValue, CriticalValue, and AlertFlag
/// are null for a specific Sensor.Item, then that Item will use the values of the base ("-") Sensor.
Property WarningValue As %String;

/// Value used to check for critical/alert status
Property CriticalValue As %String;

/// Boolean flag ("0" or  "1") to indicate if System Monitor generates an alert on CriticalValue
Property Alert As %String;

/// Logical operator used to compare Warning/Critial values. Default is ">", with option of "<".
Property Operator As %String [ InitialExpression = ">" ];

/// Description of units used, for display and documentation only.
Property Units As %String;

/// Class which created this Sensor, so we can delete if class is unregistered.
Property Owner As %String(MAXLEN = 220) [ Internal ];

/// The function or use of this Sensor. Sensors may be grouped by Function so that Subscribers and
/// Notifications can decide how to handle or whether they are interested certain Sensors.
/// Right now only "%Dashboard" is implemented, but we could use this for System or Health Monitor sensors
/// in the future.
Property Function As %String [ Internal ];

Relationship Readings As %SYS.Monitor.Reading [ Cardinality = children, Inverse = Sensor ];

/// Open an exisiting Sensor for editing Critical and Warning Values or other properties.
/// 'Item' may be "" to open a top level Sensor. Setting Critical/Warning Values for a specific
/// Item will override the Values from the top level.
/// <br><br>
/// Note that internal properties for 'Owner' and 'Function' should not be modified by users.
ClassMethod Open(Sensor As %String, Item As %String = "", ByRef Status As %Status) As Sensor
{
}

/// Called by CreateSensor() in the Dashboard Sensor class. Only creates a new Sensor, does not update an existing one.
/// Properties for existing Sensors (e.g. CriticalValue and WarningValue) can be update using the standard class APIs.
ClassMethod CreateDashboardSensor(Sensor As %String, Item As %String = "-", CriticalValue As %String, WarningValue As %String, Alert As %String, Units As %String, Operator As %String, Description As %String, ClassName As %String) As %Status [ Internal ]
{
}

/// Fetch Properties (as an array) for an Item which can be "inherited" from the top level Sensor.
/// This includes "CriticalValue", "WarningValue", "Alert", "Operator", "Units" and "Description"
ClassMethod GetInherited(Sensor As %String, Item As %String, ByRef Properties As %String) As %Status [ Internal ]
{
}

/// Delete all Sensor and Readings associated with a ClassName (i.e. "Owner")
ClassMethod DeleteByClass(ClassName As %String) As %Status
{
}

/// A list of all top level Sensor IDs
/// A list of all top level Sensor Names
/// A list of all Sensor.Items for a given Sensor
/// Loop through all registered Namespaces and return all registered Dashboard Sensors.
/// If a Sensor has specific Items, do not include the top-level Sensor definition.
ClassMethod AllDashboardSensorsExecute(ByRef qHandle As %Binary) As %Status
{
}

ClassMethod AllDashboardSensorsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

ClassMethod AllDashboardSensorsClose(ByRef qHandle As %Binary) As %Status
{
}

}
