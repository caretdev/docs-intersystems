/// XMLA.Server
Class %DeepSee.XMLA.Server Extends %SOAP.WebService [ ProcedureBlock, System = 4 ]
{

/// Name of the WebService.
Parameter SERVICENAME = "XMLA";

/// SOAP Namespace for the WebService
Parameter NAMESPACE = "urn:schemas-microsoft-com:xml-analysis";

/// Namespaces of referenced classes will be used in the WSDL.
Parameter USECLASSNAMESPACES = 1;

Parameter CONTENTTYPE = "text/xml";

Parameter CHARSET;

Parameter NOCHARSETCONVERT = 1;

Parameter XMLIGNORENULL = 1;

Parameter SOAPHEADERS = "BeginSession:%DeepSee.XMLA.BeginSessionHeader,EndSession:%DeepSee.XMLA.EndSessionHeader";

ClassMethod ParseRestrictions(property As %String, valueStr As %String, coln As %Collection.ListOfDT) As %Status
{
}

Method ImportRestrictions(arg As %String, className As %String, ByRef status As %Status = {$$$OK}) As DataSourcesRestrictions
{
}

Method Discover(RequestType As %XML.String, Restrictions As %XML.String, Properties As Properties) As %XML.GlobalCharacterStream(XMLNAME="return") [ SoapAction = "urn:schemas-microsoft-com:xml-analysis:Discover", WebMethod ]
{
}

Method DiscoverDataSources(restrictions As DataSourcesRestrictions) As %XML.GlobalCharacterStream
{
}

Method DiscoverEnumerations(restrictions As EnumerationsRestrictions) As %XML.GlobalCharacterStream [ PublicList = SQLCODE ]
{
}

Method DiscoverKeywords(restrictions As KeywordsRestrictions) As %XML.GlobalCharacterStream [ PublicList = SQLCODE ]
{
}

Method DiscoverLiterals(restrictions As LiteralsRestrictions) As %XML.GlobalCharacterStream [ PublicList = SQLCODE ]
{
}

Method DiscoverProperties(restrictions As PropertiesRestrictions) As %XML.GlobalCharacterStream [ PublicList = SQLCODE ]
{
}

Method DiscoverSchemas(restrictions As SchemasRestrictions) As %XML.GlobalCharacterStream [ PublicList = SQLCODE ]
{
}

Method Execute(Command As ExecuteCommand, Properties As Properties) As %XML.GlobalCharacterStream(XMLNAME="return") [ SoapAction = "urn:schemas-microsoft-com:xml-analysis:Execute", WebMethod ]
{
}

Method CalcCellInfo(value As %String, ByRef valueType As %String, formatValue As %String)
{
}

ClassMethod OnPreHTTP() As %Boolean [ Internal, ServerOnly = 1 ]
{
}

}
