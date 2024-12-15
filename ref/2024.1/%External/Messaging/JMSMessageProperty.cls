Class %External.Messaging.JMSMessageProperty Extends (%SerialObject, %JSON.Adaptor)
{

/// Property key
Property key As %String;

/// Property type: String, Boolean, Byte, Short, Integer, Long, Float, Double
Property type As %String;

/// String representation of value
Property value As %String(MAXLEN = "");

}
