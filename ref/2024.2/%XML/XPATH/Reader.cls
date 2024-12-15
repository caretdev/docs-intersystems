///
/// *** Deprecated class, please use %XML.XPATH.Document for XPATH expression evaluation ***
///
Class %XML.XPATH.Reader Extends %RegisteredObject [ Deprecated, System = 4 ]
{

Property Results As list Of %XML.XPATH.Result;

/// Evaluate an XPATH expression on a previously obtained XPATH document. Return an %XML.XPATH.Reader object which
/// provides facilities to access the results in a simple manner
ClassMethod Evaluate(pDocument As %XML.XPATH.Document, pContext As %String, pExpression As %String, Output pReader As %XML.XPATH.Reader) As %Status
{
}

Property Keys As array Of %Integer;

/// Initialize
Method %OnNew(initvalue As %RawString) As %Status [ Private, ProcedureBlock = 1 ]
{
}

ClassMethod Example()
{
}

}
