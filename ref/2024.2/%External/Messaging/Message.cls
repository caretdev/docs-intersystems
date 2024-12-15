/// Base Message class
Class %External.Messaging.Message Extends (%RegisteredObject, %JSON.Adaptor) [ Abstract ]
{

/// Convert message object to JSON String
Method ToJSON() As %String
{
}

/// Set up message object from JSON string
Method FromJSON(json As %String) As %Status
{
}

/// Set up message object from remote gateway object
Method FromRemoteObject(o As %Net.Remote.Object) As %Status
{
}

}
