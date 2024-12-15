/// Simple exception class that can be throw in user code.
/// You can throw this with code similar to:
/// <EXAMPLE>
/// Throw ##class(%Exception.General).%New(name,numericCode,location,data)
/// </EXAMPLE>
/// The <var>name</var> is a string name for the exception, the <var>numericCode</var> is a numeric error code.
/// If the <var>location</var> field is blank and $$$envCallerErrorInfo is defined
/// then the system will attempt to fill in this location where the exception was thrown from automatically.
/// You can pass additional exception data in the <var>data</var> argument.
Class %Exception.General Extends AbstractException
{

Method %OnNew(pName As %String = "", pCode As %String = "", pLocation As %String = "", pData As %String = "", pInnerException As %Exception.AbstractException = {$$$NULLOREF}) As %Status [ Private ]
{
}

Method OnAsStatus() As %Status [ CodeMode = expression, Private ]
{
}

}
