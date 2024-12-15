Class %CSP.Monitor.Server Extends %SOAP.WebService [ System = 4 ]
{

/// This is the namespace of the web service
Parameter NAMESPACE = "http://tempuri.org";

/// This is the name of the web service.
Parameter SERVICENAME = "SOAPMonitor";

Parameter SOAPSESSION As BOOLEAN = 1;

ClassMethod GetMatrix(Type As %String = "Cache", Parameter As %String = "") As %CSP.Monitor.Matrix [ WebMethod ]
{
}

Method MessageSearch(FilterObjStr As %Stream.GlobalCharacter, Timeout As %Numeric = -1, NextId As %Integer = 0, Type As %String = "Search") As %XML.DataSet [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
}

/// Returns NewHeaderId
Method ResendDuplicatedMessage(OriginalHeaderId As %String, OriginalHeader As %Stream.GlobalBinary, NewTarget As %String, NewBody As %Stream.GlobalBinary, NewSource As %String, HeadOfQueue As %Boolean, pBodyUseOriginalNode As %String) As %String [ Final, ProcedureBlock = 1, SoapBindingStyle = document, SoapBodyUse = literal, WebMethod ]
{
}

ClassMethod returnStatusError(pStatusCode As %Status)
{
}

ClassMethod getCacheMatrix(Output pMatrix As %CSP.Monitor.Matrix, pParameter As %String = "") As %String
{
}

}
