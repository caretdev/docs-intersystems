/// The <class>%Exception.AbstractException</class> defines the interface to exceptions
/// that may be caught and thrown via the Try/Catch exception handling facilities. Users wishing
/// to define new exception classes should inherit from this interface class. Only instances of classes
/// that inherit from %Exception.AbstractException may be thrown with the 'throw' command.
Class %Exception.AbstractException Extends %Exception.CPPException [ Abstract ]
{

Method %OnNew(pName As %String = "", pCode As %String = "", pLocation As %String = "", pData As %String = "", pInnerException As %Exception.AbstractException = {$$$NULLOREF}) As %Status [ Private ]
{
}

/// This outputs the string representation of the exception to the current device, recursively
/// outputing any inner exceptions.
Method OutputToDevice(pLevel As %Integer = 0) [ ServerOnly = 1 ]
{
}

/// This outputs the string representation of the exception to the supplied stream, recursively
/// outputting any inner exceptions.
Method OutputToStream(pStream As %CharacterStream, pLevel As %Integer = 0)
{
}

/// This returns a string that represents the exception. Users should feel free
/// to modify the format in subclasses.
Method DisplayString(pLevel As %Integer = 0) As %String
{
}

Method BinDisplayString(pLevel As %Integer = 0) As %Binary [ Internal ]
{
}

/// This returns a string that represents the SQL %msg string. Users should feel free
/// to modify the format and content in subclasses.<br>
/// DEPRECATED - use AsSQLMessage() instead. Override OnAsSQLMessage() to customize the value returned
/// by AsSQLMessage().
Method SQLMessageString(pLevel As %Integer = 0) [ Deprecated ]
{
}

/// Convert this exception to a %Status compatible value.
Method AsStatus() As %Status [ Final ]
{
}

/// Override this method to provide a custom conversion of an exception to a status.
Method OnAsStatus() As %Status [ CodeMode = expression, Private ]
{
}

/// Return the SQLCODE value corresponding to the exception.
Method AsSQLCODE() As %Integer [ Final ]
{
}

/// Override this method to provide a custom conversion of an exception to an SQLCODE value.
Method OnAsSQLCODE() As %Integer [ CodeMode = expression, Private ]
{
}

/// Return the SQL %msg string describing details of the exception.
Method AsSQLMessage() As %String(MAXLEN="") [ Final ]
{
}

/// Override this method to provide a custom conversion of an exception to the SQL %msg string.
Method OnAsSQLMessage() As %String(MAXLEN="") [ CodeMode = expression, Private ]
{
}

/// Call the log function (LOG^%ETN) to log this exception.
/// You can view this log at the terminal with 'Do ^%ER' utility or from the system management portal.
Method Log() As %Status
{
}

/// This method sets an array that is passed by reference to the execution stack at the time of the exception.
/// The top unsubscripted value is the number of execution levels.<br><br>
/// array(n) is a string that indicates how the next
/// level was created. It is empty for the current level. The value may be:<br>
/// DO - issued a DO command<br>
/// $$ - called an extrinsic function<br>
/// XECUTE - issued an XECUTE command<br>
/// BREAK - entered a debug prompt because of a &LT;BREAK><br>
/// ERROR - entered a debug prompt because of an error<br>
/// $ETRAP - executed a $ETRAP<br>
/// CALLIN - entered via a callin<br><br>
/// array(n,"PLACE") is the location of the last command executed at this level. It is a line reference followed
/// by the command number on that line.
Method StackAsArray(ByRef array) As %Status
{
}

}
