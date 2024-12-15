Class %Atelier.v1.Utils.DocumentStreamAdapter Extends %RegisteredObject
{

Property Document As %ZEN.proxyObject;

/// This method  renders the document as a JSON object containing these fields :-
/// {
/// 	"content":"<?xml version=\"1.0\" ...",
/// 	"db":"USER",
/// 	"name":"User.Example.cls",
/// 	"status":"",
/// 	"ts":"2015-01-28 13:50:00.000",
/// 	"type":"CLS"
/// }}
///
/// content: Contains the content of the document. If an error has occurred, will be the empty string
/// db: This is the database from which the document was derived (from namespace mappings)
/// name: This is the name of the document
/// status: This contains the error status for this particular document only
/// ts: This is the server timestamp normalized to 3 decimal places
/// type: This is the type of the item.
Method %ToJSON(pLevel As %Integer = 0, pFormat As %String = "aelotws") As %Status
{
}

Method %OnNew(pStream As %Stream = {$$$NULLOREF}, pName As %String, pDocStatus As %String, pTimeStamp As %String) As %Status [ Private, ServerOnly = 1 ]
{
}

}
