/// This class provides a lazy rendering of a document. For performance reasons, it's best to
/// render one document at a time.
Class %Atelier.v1.Utils.LazyIndex Extends %RegisteredObject
{

Property Args As %String;

Method %OnNew(pName As %String, pDB As %String, pTS As %String, pSC As %Status, pCat As %String, pGen As %String, pOth As %String, pUpToDate As %Boolean) As %Status [ Private, ServerOnly = 1 ]
{
}

Method %ToJSON(Output outstr) As %String
{
}

}
