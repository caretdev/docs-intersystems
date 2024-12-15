/// An SQL exception is instantiated using SQLCODE and %msg. It provides a convenient
/// mechanism for reporting SQLCODE errors using exceptions. The resulting exception
/// can be processed as a %Status value using the AsStatus() method or the original
/// SQLCODE value along with the %msg value can be retrieved as Code and Data respectively.
/// Authors of catch tException { } can test for an SQL exception using
/// tException.%IsA("%Exception.SQL") to perform error handling and reporting
/// specific to SQL.
Class %Exception.SQL Extends %Exception.AbstractException
{

/// Instantiate an exception from SQLCODE and %msg.
ClassMethod CreateFromSQLCODE(pSQLCODE As %Integer, pMessage As %String(MAXLEN="")) As %Exception.SQL
{
}

/// Override this method to provide a custom conversion of an exception to a status
/// SQL exceptions are converted to %Status values using $$$SQLCode as the status
/// message id.
Method OnAsStatus() As %Status [ CodeMode = expression, Private ]
{
}

/// Override this method to provide a custom conversion of an exception to an SQLCODE value
Method OnAsSQLCODE() As %Integer [ CodeMode = expression, Private ]
{
}

/// This returns a string that represents the SQL %msg string. Users should feel free
/// to modify the format and content in subclasses
Method SQLMessageString(pLevel As %Integer = 0) As %String
{
}

}
