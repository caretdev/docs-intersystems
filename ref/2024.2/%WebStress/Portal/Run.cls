Class %WebStress.Portal.Run Extends %WebStress.Portal.standardPage [ LegacyInstanceContext, System = 4 ]
{

/// Set this to the appropriate application class.
Parameter APPLICATION = "%WebStress.Portal.Application";

/// Set this to the correct domain.
Parameter DOMAIN = "%WebStress";

/// Name of this page.
Parameter PAGENAME = "Webstress Portal";

Property MyId As %Integer;

Property Running As %Boolean [ InitialExpression = 0 ];

Property TestId As %Integer;

Property RunId As %Integer;

Property RunDesc As %String(MAXLEN = 200);

XData Style
{
}

XData detailPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method GetRunsArray(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

Method GetControlArray(ByRef pParameters, Output pMetaData, Output pData) As %Status
{
}

ClientMethod renderControl() [ Language = javascript ]
{
}

ClientMethod renderRuns() [ Language = javascript ]
{
}

ClientMethod controlTimer() [ Language = javascript ]
{
}

ClientMethod runTest(state) [ Language = javascript ]
{
}

Method getRunId() As %Status [ ZenMethod ]
{
}

Method Run(testid, state, desc) [ ZenMethod ]
{
}

///
///
///
/// Return the array of links to show in the locator bar.<br/>
///
///
///
/// pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

///
///
///
/// This class method callback is called just before the server-side page
///
///
///
/// object is created.
Method %OnAfterCreatePage() As %Status
{
}

///
///
///
/// Get the (localized) title string for the page.
///
///
///
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

Method Purge(type As %Integer) As %Status [ ZenMethod ]
{
}

ClientMethod loadRuns() [ Language = javascript ]
{
}

}
