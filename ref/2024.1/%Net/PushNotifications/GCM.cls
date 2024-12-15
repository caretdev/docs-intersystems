/// // Implements Google Cloud Messaging Service connectivity
Class %Net.PushNotifications.GCM Extends %RegisteredObject
{

/// URL for the Google Cloud Messaging REST interface.
Property PushServer As %String(MAXLEN = 2048) [ InitialExpression = "https://android.googleapis.com/gcm/send", Required ];

/// Configuration name in the table of SSL configurations.
Property SSLConfig As %String [ Required ];

/// REST response timeout period in seconds.
Property Timeout As %Integer [ InitialExpression = 30, Required ];

Property HttpRequest As %Net.HttpRequest [ Internal ];

Parameter SERVICETYPE As STRING = "GCM";

Method Connect() As %Status
{
}

Method Disconnect() As %Status
{
}

Method HTTPPushNotification(pAppIdentifier As %String, ByRef pNotification, ByRef pReply) As %Status
{
}

Method ParseGCMHTTPSuccessResponse(pGCMResponse As %ZEN.proxyObject, ByRef pReply) As %Status [ Internal ]
{
}

/// Parse the JSON response from the GCM HTTP server
Method ParseGCMHTTPFailureResponse(pGCMResponse As %ZEN.proxyObject) As %Status [ Internal ]
{
}

}
