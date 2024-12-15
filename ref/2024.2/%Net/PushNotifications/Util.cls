/// Implements Push Notification Utilities [ Internal ]
Class %Net.PushNotifications.Util
{

/// Helper method to double up quotes in a string
ClassMethod ConvertArrayToJSON(ByRef pArray) As %String [ Internal ]
{
}

/// Helper method to double up quotes in a string
ClassMethod Quote(pInput As %String, pForce As %Boolean = 1) As %String [ Internal ]
{
}

/// Helper method to convert a $HOROLOG into UNIX time (seconds since 00:00 Jan 1, 1970 UTC)
ClassMethod TimeStampToUnix(pTimestamp As %TimeStamp, pIsUTC As %Boolean) As %Integer [ Internal ]
{
}

/// Helper to compute the delta between two timestamps
ClassMethod TimeStampDelta(pTimestamp As %TimeStamp, pEpoch As %TimeStamp = "", pIsUTC As %Boolean) As %Integer [ Internal ]
{
}

/// Helper class to generate a UTC timestamp with optional offset
ClassMethod UTCTimeStamp(pDelta As %Integer = 0, pHorolog As %String = {$H}, pIsUTC As %Boolean = 0) As %String [ Internal ]
{
}

}
