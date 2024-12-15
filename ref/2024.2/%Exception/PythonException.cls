/// The <class>%Exception.PythonException</class> class provides access to information
/// about the most recent python error.  It is the type of object assigned to
/// the CATCH variable when a python error occurs inside a TRY block.
/// Only the System should create an instance of this class.
///
Class %Exception.PythonException Extends %Exception.AbstractException [ Final ]
{

Property ExceptionObject;

Method %OnNew(pName As %String = "", pCode As %String = "", pLocation As %String = "", pData As %String = "", pInnerException As %Exception.AbstractException = {$$$NULLOREF}, pStack As %String, pObject As %SYS.Python = {$$$NULLOREF}) As %Status [ Private ]
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

/// Force Object to be Read-Only
Method ObjectSet(pObject As %SYS.Python) As %Status [ Internal, Private ]
{
}

/// Convert this exception to a traditional $ZE string
Method AsSystemError() As %String [ CodeMode = expression ]
{
}

/// Custom conversion of an exception to a status
Method OnAsStatus() As %Status [ CodeMode = expression, Private ]
{
}

/// Custom conversion of an exception to the SQL %msg string
Method OnAsSQLMessage() As %String(MAXLEN="")
{
}

/// Return a string that represents the exception
Method DisplayString(pLevel As %Integer = 0) As %String
{
}

}
