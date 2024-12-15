Class %SOAP.WebServiceInvoke Extends %CSP.Page [ System = 3 ]
{

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

Parameter CHARSET = "UTF-8";

/// Ensure user has %Development:USE
ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

ClassMethod OnPage() As %Status
{
}

}
