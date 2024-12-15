/// Contains various API methods for Zen data documents.
Class %ZEN.DataModel.DocumentUtils Extends %RegisteredObject [ Abstract, Deprecated, System = 3 ]
{

/// Process a request for a data document.
/// Find the document class with the given document id (class/instance) and dispatch to it
/// to do the work.<br/>
/// <var>pParms</var> is an optional set of additional parameters (passed in from a jsonProvider).<br/>
/// <var>pDocument</var> is the data document.<br/>
ClassMethod %GetDocument(pDocumentId As %String, ByRef pParms, Output pDocument As %ZEN.proxyObject) As %Status [ Final ]
{
}

}
