/// <p>This is an automatically generated class, offering a functionally equivalent set of methods and queries as <class>%iKnow.Queries.EquivAPI</class>, exposed as WebMethod methods.</p><p>See the classdocs for <class>%iKnow.Queries.EquivAPI</class> for more information.</p>
Class %iKnow.Queries.EquivWSAPI Extends %iKnow.Queries.AbstractWSAPI [ Deprecated, System = 4 ]
{

ClassMethod CreateSet(domainid As %Integer, name As %Integer) As %Library.Integer [ WebMethod ]
{
}

ClassMethod DefineTerms(domainid As %Integer, setId As %Integer, uniId1 As %Integer, uniId2 As %Integer, expand As %Integer = 0) As %Boolean [ WebMethod ]
{
}

ClassMethod DropSet(domainid As %Integer, setId As %Integer) As %Boolean [ WebMethod ]
{
}

ClassMethod GetTerms(domainid As %Integer, setId As %Integer, uniId As %Integer, page As %Integer = 1, pagesize As %Integer = 10) As %XML.DataSet [ WebMethod ]
{
}

ClassMethod RemoveTerms(domainid As %Integer, setId As %Integer, uniId1 As %Integer, uniId2 As %Integer) As %Boolean [ WebMethod ]
{
}

Parameter NAMESPACE = "http://www.intersystems.com/iKnow/Queries/EquivWSAPI";

Parameter SERVICENAME = "iKnow.Queries.EquivWSAPI";

Parameter USECLASSNAMESPACES = 1;

}
