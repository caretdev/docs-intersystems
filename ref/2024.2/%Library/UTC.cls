Class %Library.UTC Extends %DataType [ ClientDataType = TIMESTAMP, OdbcType = TIMESTAMP, SqlCategory = TIMESTAMP, System = 2 ]
{

ClassMethod LogicalToDisplay(%val As %TimeStamp) As %TimeStamp [ CodeMode = expression ]
{
}

ClassMethod DisplayToLogical(%val As %TimeStamp) As %TimeStamp [ CodeMode = expression ]
{
}

ClassMethod LogicalToOdbc(%val As %TimeStamp) As %TimeStamp [ CodeMode = expression ]
{
}

ClassMethod OdbcToLogical(%val As %TimeStamp) As %TimeStamp [ CodeMode = expression ]
{
}

ClassMethod StorageToLogical(%val As %TimeStamp) As %TimeStamp [ CodeMode = expression ]
{
}

/// Convert timstamp to horolog value
ClassMethod ConvertTimeStampToHorolog(%timestamp As %TimeStamp) As %String [ CodeMode = expression ]
{
}

/// Convert horolog to timstamp value
ClassMethod ConvertHorologToTimeStamp(%horolog As %String) As %TimeStamp [ CodeMode = expression ]
{
}

/// Return the current UTC timestamp
ClassMethod NowUTC() As %TimeStamp [ CodeMode = expression ]
{
}

/// Return the current local timestamp
ClassMethod NowLocal() As %TimeStamp [ CodeMode = expression ]
{
}

/// Convert UTC timestamp to local timestamp
ClassMethod ConvertUTCtoLocal(%timestamp As %TimeStamp) As %TimeStamp [ CodeMode = expression ]
{
}

/// Convert local timestamp to UTC timestamp
ClassMethod ConvertLocaltoUTC(%timestamp As %TimeStamp) As %TimeStamp [ CodeMode = expression ]
{
}

/// Compare two timestamps, return 0 if equal, >0 if %t1 is later, <0 if %t2 is later
ClassMethod Compare(%t1 As %TimeStamp, %t2 As %TimeStamp) As %Integer [ CodeMode = expression ]
{
}

/// Return the number of seconds difference between two timestamps.
/// if '%later' is earlier than '%earlier' then the result is a negative number.
ClassMethod Diff(%later As %TimeStamp, %earlier As %TimeStamp) As %Integer
{
}

/// Strip off trailing zeros and trailing dot for normalized form
ClassMethod Normalize(%val As %RawString) As %TimeStamp [ ServerOnly = 1 ]
{
}

/// Seconds since Jan 1 1970. Minimum timestamp="47117,0"
ClassMethod SecondsSinceUnixEpoch(TimeStamp As %String = {$ztimestamp}) As %Integer
{
}

/// Seconds since Dec 31, 1840. Minimum timestamp="0,0"
ClassMethod SecondsSinceCOSEpoch(TimeStamp As %String = {$ztimestamp}) As %Integer
{
}

/// Seconds since Jan 1 1601. Minimum timestamp="0,0"
ClassMethod SecondsSinceWin32Epoch(TimeStamp As %String = {$ztimestamp}) As %Integer
{
}

/// 100-nanoseconds since Jan 1 1601. Matches Windows FILETIME. Minimum timestamp="0,0"
ClassMethod Win32EpochFILETIME(TimeStamp As %String = {$ztimestamp}) As %Integer
{
}

/// Converts a Windows FILETIME value to a $H value.
/// Minimum FILETIME=75735648000000000 = 12/31/1840 = "0,0"
ClassMethod Win32EpochFILETIMEtoLocalH(Win32EpochFILETIME As %String) As %TimeStamp
{
}

}
