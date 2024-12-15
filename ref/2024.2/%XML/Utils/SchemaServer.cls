/// Serves the XML schema for a class via an HTTP request.<BR>
/// The <i>CLASS</i> parameter contains the name of the class
/// to serve the schema for.
/// The <i>FILE</i> parameter contains the file path for the schema file.
Class %XML.Utils.SchemaServer Extends %CSP.Page [ Not ProcedureBlock, System = 3 ]
{

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

Parameter CONTENTTYPE = "text/xml";

Parameter CHARSET = "UTF-8";

/// Require USE permissions on the %Development resource for access to this page.
Parameter SECURITYRESOURCE = "%Development:USE";

/// utility used by new Atelier SOAP wizard
ClassMethod fetchWSDL(type, url, sslConfig, ByRef content) As %String [ Internal ]
{
}

ClassMethod OnPreHTTP() As %Boolean
{
}

ClassMethod GetEncoding(stream As %Stream.Object = "") As %String [ ProcedureBlock = 1 ]
{
}

ClassMethod AddStyleSheet(stream As %Stream.Object = "") As %Stream.Object [ ProcedureBlock = 1 ]
{
}

ClassMethod OnPage() As %Status
{
}

}
