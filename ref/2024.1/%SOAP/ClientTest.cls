/// HTTP page that tests a SOAP client class.
Class %SOAP.ClientTest Extends %CSP.StudioTemplateSuper [ System = 3 ]
{

ClassMethod OnPreHTTP() As %Boolean
{
}

ClassMethod OnPage() As %Status
{
}

/// Invoke a SOAP client method
ClassMethod InvokeMethod(pCls As %String, pMethod As %String) As %Status [ PublicList = (tExec, tArgs, tResp) ]
{
}

/// Get list of input arguments for the given method
ClassMethod BuildInputArgs(pCls As %String, pMethod As %String, ByRef pArgs, ByRef pHasReturn)
{
}

/// find the value for this argument (from the %request parms)
ClassMethod GetArgValue(Output pValue As %String, pName As %String, pType As %String, pOwner As %String = "") As %String
{
}

/// Display the WebMethods of a SOAP client class
ClassMethod ShowMethods(pCls As %String, pType As %String)
{
}

/// Display the details page for a specific Web Method
ClassMethod ShowMethodDetails(pCls As %String, pMethod As %String)
{
}

ClassMethod ShowArgument(pName As %String, pType As %String, pValue As %String, pOwner As %String = "")
{
}

/// Display the list of SOAP client classes
ClassMethod ShowClasses()
{
}

}
