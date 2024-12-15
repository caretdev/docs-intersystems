/// Language independent accessors for selected system variables
Class %Library.Function Extends %RegisteredObject [ Final, System = 4 ]
{

/// Contains the current date and time as integer counters.
ClassMethod Horolog() As %String
{
}

/// Contains the ID of the current process.
ClassMethod ProcessID() As %Integer
{
}

/// Contains the current namespace name.
ClassMethod NameSpace() As %String
{
}

/// Contains the current date and time in Coordinated Universal Time format.
ClassMethod TimeStamp() As %String
{
}

/// Contains the time zone offset from GMT
ClassMethod TimeZone() As %String
{
}

/// Return current host name
ClassMethod HostName() As %String
{
}

/// Returns specified host IPs (comma separated)
///
/// Note: it returns configured IPs not necessarily the actual NIC IPs
///
/// If host name is not specified returns current host IPs.
ClassMethod IPAddresses(HName As %String) As %String
{
}

}
