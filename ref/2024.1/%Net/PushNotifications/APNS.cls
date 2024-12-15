/// // Implements Apple Push Notification Service connectivity
Class %Net.PushNotifications.APNS Extends %RegisteredObject
{

Parameter BUFFERSIZE As INTEGER = 16384;

Parameter DEVICETOKENLENGTH As INTEGER = 32;

/// Hostname of the Apple Push Notification Server.
Property PushServerAddress As %String(MAXLEN = 1024) [ Required ];

/// Port for the Apple Push Notification Server interface.
Property PushServerPort As %String [ Required ];

/// Configuration name in the table of SSL configurations.  The SSL is associated with the app and must be provided by Apple for the APNS service.
Property SSLConfig As %String [ Required ];

/// SSL Connection timeout period in seconds.  The connection is terminated after this period of inactivity.
Property ConnectTimeout As %Integer [ InitialExpression = 30, Required ];

/// Time period in seconds to wait for a response to a connection request.
Property ResponseTimeout As %Integer [ InitialExpression = 5, Required ];

/// I/O device
Property Device As %String [ Internal, Private ];

/// Connect to the Apple Push Notification Service
Method Connect() As %Status
{
}

Method Disconnect() As %Status
{
}

/// Send a "simple" push notification.  The pDeviceToken represents a device identifier, the pNotificationData
/// is an array of the aps values (see the APNS docs) and pCustomData contains any additional data items
/// to be included.
Method SimplePushNotification(pDeviceToken As %String, ByRef pNotificationData) As %Status
{
}

/// Send a notification using the "enhanced" mechanism. The pDeviceToken represents a device identifier, the pNotificationData
/// is an array of the aps values (see the APNS docs) and pCustomData contains any additional data items
/// to be included.
Method EnhancedPushNotification(pDeviceToken As %String, pRequestId As %Integer, pExpiresUTC As %TimeStamp, ByRef pNotificationData) As %Status
{
}

/// Pack the token string into a 32-byte binary buffer
ClassMethod PackDeviceToken(pToken As %String, ByRef pTokenData As %Binary) As %Status [ Internal ]
{
}

Method doMessageIO(pSend As %String, ByRef pRecv As %String, pRecvSize As %Integer = 0) As %Status [ Internal ]
{
}

}
