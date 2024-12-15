/// Language independent accessors for selected system variables
Class %SYSTEM.SYS Extends Help [ Final, System = 4 ]
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

/// Contains the UTC time in $H format.
ClassMethod TimeStamp() As %String
{
}

/// Contains the time zone offset from GMT
ClassMethod TimeZone() As %String
{
}

/// Contains the maximum local string length of the current job.
ClassMethod MaxLocalLength() As %Integer
{
}

}
