Class %WebStress.Portal.Script Extends %WebStress.Portal.standardPage [ LegacyInstanceContext, System = 4 ]
{

/// Set this to the appropriate application class.
Parameter APPLICATION = "%WebStress.Portal.Application";

/// Name of this page.
Parameter PAGENAME = "Webstress Portal";

Property MyId As %Integer;

XData Style
{
}

XData detailPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method GetParamsTypesArray(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

Method GetParamsArray(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

Method GetHeaderArray(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

Method GetScriptsArray(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

Method SubmitScripts(pCommand As %String, pProvider As %ZEN.Auxiliary.jsonProvider, pSubmitObject As %RegisteredObject, Output pResponseObject As %RegisteredObject) As %Status
{
}

Method SubmitParams(pCommand As %String, pProvider As %ZEN.Auxiliary.jsonProvider, pSubmitObject As %RegisteredObject, Output pResponseObject As %RegisteredObject) As %Status
{
}

Method SubmitHeaders(pCommand As %String, pProvider As %ZEN.Auxiliary.jsonProvider, pSubmitObject As %RegisteredObject, Output pResponseObject As %RegisteredObject) As %Status
{
}

ClientMethod renderGrid() [ Language = javascript ]
{
}

ClientMethod renderParams(node) [ Language = javascript ]
{
}

ClientMethod renderHeadGrid(node) [ Language = javascript ]
{
}

ClientMethod removeParam(node, id) [ Language = javascript ]
{
}

ClientMethod updateParam(node, id) [ Language = javascript ]
{
}

ClientMethod removeHeadRow(node, id) [ Language = javascript ]
{
}

ClientMethod updateHeadRow(node, id) [ Language = javascript ]
{
}

ClientMethod removeRow(id) [ Language = javascript ]
{
}

ClientMethod addURL() [ Language = javascript ]
{
}

ClientMethod addParam(node) [ Language = javascript ]
{
}

ClientMethod addHeadRow(node) [ Language = javascript ]
{
}

ClientMethod saveItem() [ Language = javascript ]
{
}

Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// This class method callback is called just before the server-side page
/// object is created.
Method %OnAfterCreatePage() As %Status
{
}

/// Get the (localized) title string for the page.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

ClientMethod toggleSearchTable() As %Status [ Language = javascript ]
{
}

ClientMethod getRecord(id As %Integer) As %Status [ Language = javascript ]
{
}

ClientMethod copyRecord() [ Language = javascript ]
{
}

Method CopyRec() As %Status [ ZenMethod ]
{
}

ClientMethod deleteRec() As %Status [ Language = javascript ]
{
}

ClientMethod fixDelay() [ Language = javascript ]
{
}

ClassMethod FixScripts(id, maxval, newval) As %Status [ ZenMethod ]
{
}

ClassMethod DeleteMe(del As %Integer) As %Status [ ZenMethod ]
{
}

ClientMethod hideSearchTable() As %Status [ Language = javascript ]
{
}

/// Refresh the table of records on the form.
ClientMethod refreshSearchTable() As %Status [ Language = javascript ]
{
}

ClientMethod saveRec() As %Status [ Language = javascript ]
{
}

ClientMethod cleanDiv(mydiv) [ Language = javascript ]
{
}

ClassMethod GenRoutine(id, name As %String) As %Status [ ZenMethod ]
{
}

ClientMethod removeArray(array, from, to) [ Language = javascript ]
{
}

ClientMethod renderDrop(json, name, rowid, grid) [ Language = javascript ]
{
}

}
