/// This class implements a custom response format and serves as the basis for all
/// DocDB REST APIs
Class %DocDB.REST Extends %CSP.REST
{

Parameter DOMAIN = "%DOCDB";

/// Use our special format Http500 handler
ClassMethod Http500(pE As %Exception.AbstractException) As %Status
{
}

/// User our special format handler for other status codes
ClassMethod ReportHttpStatusCode(httpStatus, status As %Status = {$$$OK}) As %Status
{
}

/// Render the three-part Response Body which contains an status, console, and a result part
ClassMethod RenderResponseBody(httpStatus As %String = "", error As %DynamicAbstractObject = "", content As %DynamicAbstractObject = "") As %Status
{
}

/// Get the clients version of the server hash
ClassMethod GetClientServerHash() As %String [ CodeMode = expression, Internal ]
{
}

/// Set the clients version of the server hash
ClassMethod SetClientServerHash(pHash As %String)
{
}

/// This private helper method server wraps the message and document and returns it to the caller
ClassMethod ServeXml(pDocName As %String, pStatus As %Status, pMsgArray As %DynamicArray, pStream As %Stream, pTimeStamp As %String = "") As %Status
{
}

/// Sets the response's localization domain (something that %CSP.REST should do, in theory) and then invokes default super class behavior
ClassMethod Page(skipheader As %Boolean = 1) As %Status [ ProcedureBlock = 0 ]
{
}

ClassMethod getRequestBody() As %DynamicAbstractObject
{
}

/// This method returneds a list of accessible namespaces</Description>
ClassMethod AccessibleNamespaces()
{
}

/// 	set status = exception.AsStatus()
/// 	do ..StatusToJSON(status,.statusObject)
/// All exceptions can have an inner exception
/// Status exceptions can also have NextException, forming a linked list structure
/// This can be normalized by converting the exception to a dynamic object and then we process the dynamic object
ClassMethod exceptionToHttpResponse(exception As %Exception.AbstractException) As %String
{
}

/// Map an exception graph to an http status code
ClassMethod exceptionToHttpStatus(exception As %Exception.AbstractException) As %Library.DynamicAbstractObject
{
}

ClassMethod SQLCODEToHttpStatus(SQLCODE As %Integer) As %String
{
}

}
