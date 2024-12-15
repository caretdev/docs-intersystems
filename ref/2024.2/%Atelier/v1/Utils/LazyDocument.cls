/// This class provides a lazy rendering of a document. For performance reasons, it's best to
/// render one document at a time.
Class %Atelier.v1.Utils.LazyDocument Extends %RegisteredObject
{

Property Args As %String;

Method %OnNew(pName As %String, pDB As %String, pTS As %String, pSC As %Status, pCat As %String, pBinary As %Boolean, pUpToDate As %Boolean) As %Status [ Private, ServerOnly = 1 ]
{
}

Method %ToJSON(Output outstr) As %String
{
}

}
