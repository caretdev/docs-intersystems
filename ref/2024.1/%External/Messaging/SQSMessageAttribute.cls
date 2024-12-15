Class %External.Messaging.SQSMessageAttribute Extends (%SerialObject, %JSON.Adaptor)
{

/// Key of the attribute
Property key As %String;

/// Data type. Possible values are String, Number and Binary
Property dataType As %String;

/// String value of type String and Number
Property stringValue As %String(MAXLEN = "");

/// Binary value of type Binary
Property binaryValue As %GlobalBinaryStream;

}
