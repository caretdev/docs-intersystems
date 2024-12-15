/// The <class>%Exception.SystemException</class> class provides access to information
/// about the most recent system error.  It is the type of object assigned to
/// the CATCH variable when a system error occurs inside a TRY block.
/// Only the System should create an instance of this class.
///
/// For system exceptions, the values of the properties should be interpreted as follows:<BR>
/// <BR>
/// Name: 		The name of the exception, such as &LT;UNDEFINED&GT;.<BR>
/// Code: 		A numerical code that represents the exception, defined by the system.<BR>
/// Location: 	A string containing the routine and line where the exception occured.<BR>
/// Data: 		Depending upon the actual exception, extra data about the exception. For example,
///       		for an &LT;UNDEFINED&GT; error this would be the name of the variable that was undefined.
///
Class %Exception.SystemException Extends %Exception.AbstractException [ Final ]
{

Method %OnNew(pName As %String = "", pCode As %String = "", pLocation As %String = "", pData As %String = "", pInnerException As %Exception.AbstractException = {$$$NULLOREF}, pStack As %String) As %Status [ Private ]
{
}

/// Force Name to be Read-Only
Method NameSet(pName As %String) As %Status [ Internal, Private ]
{
}

/// Force Code to be Read-Only
Method CodeSet(pCode As %Integer) As %Status [ Internal, Private ]
{
}

/// Force Location to be Read-Only
Method LocationSet(pLocation As %String) As %Status [ Internal, Private ]
{
}

/// Force Data to be Read-Only
Method DataSet(pData As %String) As %Status [ Internal, Private ]
{
}

/// Force InnerException to be Read-Only
Method InnerExceptionSet(pInnerException As %Exception.AbstractException) As %Status [ Internal, Private ]
{
}

/// Convert this system exception to a traditional $ZE string
Method AsSystemError() As %String [ CodeMode = expression ]
{
}

/// Override this method to provide a custom conversion of an exception to a status
Method OnAsStatus() As %Status [ CodeMode = expression, Private ]
{
}

Method OnAsSQLMessage() As %String(MAXLEN="")
{
}

}
