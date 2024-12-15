/// Storage for Health Monitor Sensors. Each Sensor may have multiple Charts attached (for different time Periods)
/// to evaluate when a Sensor deviates from 'normal' values.
Class SYS.Monitor.Health.SensorObject Extends (%Persistent, %XML.Adaptor) [ ClassType = persistent, ProcedureBlock, System = 3 ]
{

Property Sensor As %String [ Required ];

Property Threshold As %String [ InitialExpression = 0 ];

Property AlertValue As %String [ InitialExpression = 0 ];

Property MaxMult As %String [ InitialExpression = 0 ];

Property WarnValue As %String [ InitialExpression = 0 ];

Property WarnMult As %String [ InitialExpression = 0 ];

/// Container Group
Relationship Charts As SYS.Monitor.Health.Chart [ Cardinality = many, Inverse = SensorObject ];

/// Set the Sensor properties.
/// WarnValue and WarnMult are optional. If present, there must also be a corresponding AlertValue or MaxMult
Method %OnNew(Sensor As %String, Threshold As %Integer = 0, MaxVal As %Integer = 0, MaxMult As %Integer = 0, WarnVal As %Integer = 0, WarnMult As %Integer = 0) As %Status
{
}

Method %OnValidateObject() As %Status
{
}

/// A list of all sensors
/// A list of all sensors with a AlertValue defined
/// A list of sensors without AlertValue defined
}
