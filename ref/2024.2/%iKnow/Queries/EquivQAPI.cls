/// <p>This is an automatically generated class, offering a functionally equivalent set of methods and queries as <class>%iKnow.Queries.EquivAPI</class>, exposed as SqlProc methods.</p><p>See the classdocs for <class>%iKnow.Queries.EquivAPI</class> for more information.</p>
Class %iKnow.Queries.EquivQAPI Extends %iKnow.Queries.AbstractQAPI [ Deprecated, System = 4 ]
{

ClassMethod CreateSet(domainid As %Integer, name As %Integer, Output scText As %String = "") As %Library.Integer [ SqlProc ]
{
}

ClassMethod DefineTerms(domainid As %Integer, setId As %Integer, uniId1 As %Integer, uniId2 As %Integer, expand As %Integer = 0) As %Boolean [ SqlProc ]
{
}

ClassMethod DropSet(domainid As %Integer, setId As %Integer) As %Boolean [ SqlProc ]
{
}

ClassMethod GetTermsExecute(ByRef qHandle As %Binary,  domainid As %Integer, setId As %Integer, uniId As %Integer, page As %Integer = 1, pagesize As %Integer = 10) As %Status [ Internal ]
{
}

ClassMethod GetTermsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetTermsExecute ]
{
}

ClassMethod GetTermsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetTermsExecute ]
{
}

ClassMethod RemoveTerms(domainid As %Integer, setId As %Integer, uniId1 As %Integer, uniId2 As %Integer) As %Boolean [ SqlProc ]
{
}

}
