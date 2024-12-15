/// This class provides a lazy rendering of the modified documents in a database.
/// It is tightly tied to the execution style of the GetModified api.
Class %Atelier.v1.Utils.LazyModifiedDb Extends %RegisteredObject
{

Property Args As %String;

Method %OnNew(pGbl As %String, pDB As %String, pHash As %String, pCrHash As %String) As %Status
{
}

Method %ToJSON(Output outstr) As %String
{
}

}
