/// Base class for Zen data documents.
/// A data document presents a document (object graph) that can be served to a web page
/// (via a jsonProvider) and consumed by various visual components.
Class %ZEN.DataModel.AbstractDocument Extends %RegisteredObject [ Abstract, Deprecated, System = 3 ]
{

/// Logical name of this document class.
/// If not provided, the document class name is used.
/// Names are case-sensitive.
Parameter DOCUMENTCLASS As STRING;

/// Return the logical name of this document class.
ClassMethod %GetDocumentName() As %String [ CodeMode = objectgenerator, Final ]
{
}

/// Retrieve a data document.<br/>
/// <var>pID</var> is the document instance id.<br/>
/// <var>pParms</var> is an optional set of additional parameters (passed in from a jsonProvider).<br/>
/// <var>pDocument</var> is the data document.<br/>
ClassMethod %GetDocument(pID As %String, ByRef pParms, Output pDocument As %ZEN.proxyObject) As %Status [ Final ]
{
}

/// Process a request for a data document.
/// This is implemented by subclasses.<br/>
/// <var>pID</var> is the document instance id.<br/>
/// <var>pParms</var> is an optional set of additional parameters (passed in from a jsonProvider).<br/>
/// <var>pDocument</var> is the data document.<br/>
Method %OnGetDocument(pID As %String, ByRef pParms, Output pDocument As %ZEN.proxyObject) As %Status
{
}

}
