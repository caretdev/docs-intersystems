/// This class implements a custom response format and serves as the basis for all
/// Atelier REST APIs
Class %Atelier.REST Extends %CSP.REST
{

/// %Atelier.REST classes are unlikely to actually define messages with $$$Text
/// %Utility seems like a catch-all, and should have all languages defined,
/// so the %session/%response language can be set properly.
Parameter DOMAIN = "%Utility";

/// Use our special format Http500 handler
ClassMethod Http500(pE As %Exception.AbstractException) As %Status
{
}

/// User our special format handler for other status codes
ClassMethod ReportHttpStatusCode(pHttpStatus, pSC As %Status = {$$$OK}) As %Status
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
ClassMethod ServeDoc(pDocName As %String, pStatus As %Status, pMsgArray As %DynamicArray, ByRef pResArray As %String, pTimeStamp As %String = "", pUpToDate As %Boolean, pExtensionContent As %DynamicObject) As %Status
{
}

/// This private helper method server wraps the message and document and returns it to the caller
ClassMethod ServeXml(pDocName As %String, pStatus As %Status, pMsgArray As %DynamicArray, pStream As %Stream, pTimeStamp As %String = "") As %Status
{
}

/// Render the three-part Response Body which contains an status, console, and a result part
ClassMethod RenderResponseBody(pStatus As %Status, pMsgPart As %DynamicArray, pResPart As %DynamicObject) As %Status
{
}

/// Sets the response's localization domain (something that %CSP.REST should do, in theory) and then invokes default super class behavior
ClassMethod Page(skipheader As %Boolean = 1) As %Status [ ProcedureBlock = 0 ]
{
}

}
