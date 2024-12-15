/// Class to hold %Status style exceptions
/// <br>If you wish to create one with %New then the 4th argument is a $lb of data values to the error %Status, e.g.<br>
/// Set exception=##class(%Exception.StatusException).%New(Name,Code,Location,$lb(arg1,arg2,arg3,arg4))
Class %Exception.StatusException Extends %Exception.AbstractException
{

/// Container for additional exceptions in the %Status value
Property NextException As %RawString;

/// Convert a %Status into an exception
ClassMethod CreateFromStatus(pSC As %Status) As %Exception.AbstractException
{
}

/// Override this method to provide a custom conversion of an exception to a status
Method OnAsStatus() As %Status [ Private ]
{
}

/// This returns a string that represents the exception. Users should feel free
/// to modify the format in subclasses
Method DisplayString(pLevel As %Integer = 0) As %String
{
}

/// Override this method to provide a custom conversion of an exception to an SQLCODE value
Method OnAsSQLCODE() As %Integer [ Private ]
{
}

/// This returns a string that represents the SQL %msg string. Users should feel free
/// to modify the format and content in subclasses
/// DEPRECATED - use AsSQLMessage() instead. Override OnAsSQLMessage() to customize the value returned
/// by AsSQLMessage().
Method SQLMessageString(pLevel As %Integer = 0) [ Deprecated ]
{
}

Method OnAsSQLMessage() As %String(MAXLEN="")
{
}

/// If <code>sc</code> is an &lt;INTERRUPT&gt; or a hard error like &lt;FILEFULL&gt; or &lt;DATABASE&gt;,
/// use ZTRAP to re-throw the error. For any other error status, turn it into an exception and return that.
/// This method should not be called with an OK status.
ClassMethod ThrowIfInterrupt(sc As %Status) As %Exception.AbstractException
{
}

}
