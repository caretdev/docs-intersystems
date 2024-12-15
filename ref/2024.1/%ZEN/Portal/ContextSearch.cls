/// Provides the basic search capabilities for context-based
/// searching within the Portal.
Class %ZEN.Portal.ContextSearch Extends %RegisteredObject [ Abstract, Deprecated, System = 4 ]
{

/// Set this to the correct domain.
Parameter DOMAIN = "%ZEN";

/// Perform a search. Return a list of results.<br/>
/// <var>pContext</var> is the search context string. This is parsed
/// and the actual search class and method are invoked.<br/>
/// <var>pSearchKey</var> is the value in the search control when the user invoked
/// the search.<br/>
/// <var>pTopResults</var> contains the list of most likely results (if any).<br/>
/// <var>pResults</var> contains the list of all results.<br/>
/// Both arrays take the form:<br/>
/// pResults(n) = result (string)<br/>
ClassMethod %Search(Output pCaption As %String, Output pTopResults, Output pResults, pContext As %String, pSearchKey As %String) As %Status [ Final ]
{
}

/// Parse a context string.
ClassMethod %ParseContext(pContext As %String, Output pClassName As %String, Output pMethodName As %String, Output pParms) As %Status
{
}

/// Search method: Classes.<br/>
/// Execute a class name search.<br/>
/// Parameters can include:<br/>
/// <var>super</var> or <var>subclasses</var> = show only classes derived from the specified class.<br/>
/// <var>system</var> = 1|0 show system classes.<br/>
/// <var>internal</var> = 1|0 show internal classes.<br/>
/// <var>hideAbstract</var> = 1|0 hide classes marked as abstract.<br/>
/// <var>classtype</var> = datatype|persistent|serial|stream|view show only classes of the specified type. Default is empty string for all types.
ClassMethod Classes(Output pCaption As %String, Output pTopResults, Output pResults, ByRef pParms As %String, pSearchKey As %String) As %Status
{
}

/// Search method: Packages.<br/>
/// Execute a package name search.<br/>
/// <i>system</i> = 1|0 show system classes.<br/>
ClassMethod Packages(Output pCaption As %String, Output pTopResults, Output pResults, ByRef pParms As %String, pSearchKey As %String) As %Status
{
}

/// Search method: Properties.<br/>
/// Execute a class property search.<br/>
/// Parameters can include:<br/>
/// <var>class</var> = class name<br/>
ClassMethod Properties(Output pCaption As %String, Output pTopResults, Output pResults, ByRef pParms As %String, pSearchKey As %String) As %Status
{
}

/// Search method: CustomResource.<br/>
/// Execute a search for resources and custom resources.<br/>
ClassMethod CustomResource(Output pCaption As %String, Output pTopResults, Output pResults, ByRef pParms As %String, pSearchKey As %String) As %Status
{
}

}
