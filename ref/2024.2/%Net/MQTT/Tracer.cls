/// This class allows tracing to performed of the calls made within the paho-c library. One instantiates an instance
/// of the tracer and attaches an instance of %Net.MQTT.Logger by setting the Logger property. The Tracer class then
/// delegates log requests to the Logger class. If you don't provide a Logger instance then the default implementation
/// uses this class (which is itself a logger) to perform the logging with a default implementation that just writes to the console.
Class %Net.MQTT.Tracer Extends %Net.MQTT.Logger
{

/// Logger delegate, initially is self
Property Logger As %Net.MQTT.Logger [ InitialExpression = {$this} ];

/// This is the trace level required
Property TraceLevel As %Integer [ InitialExpression = {$$$MQTTCLIENTTRACEFATAL} ];

/// Start tracing
Method Start() As %Status
{
}

/// Stop tracing
Method Stop() As %Status
{
}

/// Set the trace level (see %Net.MQTT.inc for appropriate values)
Method TraceLevelSet(level As %Integer) As %Status
{
}

/// Error Text Domain
Parameter DOMAIN = "%ObjectErrors";

/// Property setter, attach a delegate
Method LoggerSet(logger As %Net.MQTT.Logger) As %Status
{
}

/// Private, Decode an error reported by the library and form status
Method DecodeError(list As %String) As %Status [ Private ]
{
}

/// Dispatch to delegate (could be $this)
Method Trace(level As %Integer, message As %String) [ Final, Internal ]
{
}

/// Minimal implementation, normally would delegate
Method Log(level As %Integer, message As %String)
{
}

Method %OnNew() As %Status
{
}

}
