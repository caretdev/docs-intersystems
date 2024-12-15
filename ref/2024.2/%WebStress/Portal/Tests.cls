Class %WebStress.Portal.Tests Extends %WebStress.Portal.standardPage [ LegacyInstanceContext, System = 4 ]
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

Method GetParamsArray(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

Method GetScriptsArray(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

Method GetGeneratorsArray(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

Method GetWebServersArray(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

ClientMethod renderGrid() [ Language = javascript ]
{
}

ClientMethod renderDrop(json, name, rowid, grid) [ Language = javascript ]
{
}

ClientMethod addResult() [ Language = javascript ]
{
}

ClientMethod saveResults() [ Language = javascript ]
{
}

Method SubmitParams(pCommand As %String, pProvider As %ZEN.Auxiliary.jsonProvider, pSubmitObject As %RegisteredObject, Output pResponseObject As %RegisteredObject) As %Status
{
}

ClientMethod firePopup(row) [ Language = javascript ]
{
}

/// Subclass need to include the case "switchNamespace" if it is enabling "Switch" next to namespace.<br>
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

Method GetURL(value As %String) As %Status [ ZenMethod ]
{
}

ClientMethod removeResult(id) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
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

ClientMethod hideSearchTable() As %Status [ Language = javascript ]
{
}

ClientMethod newRec() As %Status [ Language = javascript ]
{
}

/// Refresh the table of records on the form.
ClientMethod refreshSearchTable() As %Status [ Language = javascript ]
{
}

ClientMethod saveRec() As %Status [ Language = javascript ]
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
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

ClientMethod isValidTime(timeStr) [ Language = javascript ]
{
}

}
