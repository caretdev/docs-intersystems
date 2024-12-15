/// Extend to this class for pages that use tablePane as main component and needs auto-refresh to be shown on the ribbon bar.
///
/// For example, Home->Operations->Databases or Processes.
///
Class %CSP.UI.Portal.Utils Extends (%CSP.UI.Portal.Template, %CSP.UI.Portal.UtilsNav) [ Abstract, System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "Template with Auto-Refresh";

Property CurrentColumn As %ZEN.Datatype.string;

Property CurrentSort As %ZEN.Datatype.string [ InitialExpression = "asc" ];

Property captionLastUpdate As %ZEN.Datatype.string [ InitialExpression = {$$$TextJS("Last update: ")} ];

XData Style
{
}

/// *****        Refresh Feature for tablePane pages in SMP     ***** <br/>
/// <p>The following methods are used by pages that want to display Refresh on/off and allow to enter refresh rate (number of seconds.)
/// Sub-classes may over-ride them but please do not modify them unless you take care of all pages that use them and test each page thoroughly.
/// When used, the tablePane on your page may be refreshed at the rate you define, and will remember the state, rate, current column and sort order.</p>
/// <p>To use this feature, do the following (see %CSP.UI.Portal.OpDatabases.cls for example):</p>
/// <ul>
/// <li>Class extend to %CSP.UI.Portal.Utils</li>
/// <li>Add the following code: <code><timer id="refreshTimer" timeout="0" ontimeout="zenPage.refreshHandler();"/></code></li><br/>
/// <li>Use tablePane with id="table" and add event onheaderClick for column sort.</li><br/>
/// <li>Add to %OnAfterCreatePage to get TableState and AutoRefreshRate set into timeout.</li><br/>
/// <li>In method OnDrawRibbon, add <code>Do ..DrawAutoRefresh(..%GetPageName())</code></li><br/>
/// <li>Override updateView() if your class has Filter turned on for tableNavigatorBar.</li><br/>
/// </ul>
/// This method can be called from OnDrawRibbon of your UI Zen page. Pass in the page name which should be consistent with how the temp global is saved.
ClassMethod DrawAutoRefresh(pRefreshName)
{
}

/// User clicked a column header to sort. Save that so we can come back to it when page is refreshed.
ClientMethod columnSort(currColumn, sortOrder) [ Language = javascript ]
{
}

/// Check if user hit [Enter] on refreshRate textbox.
ClientMethod refreshkeyUp(evnt, value) [ Language = javascript ]
{
}

/// Turn auto-refresh mode on and off.
ClientMethod setRefreshMode(newMode) [ Language = javascript ]
{
}

/// This method returns current date and time in $ZDT($ZU(188),3,,3) format
ClientMethod getTime() [ Language = javascript ]
{
}

ClientMethod zeroFill(value) [ Language = javascript ]
{
}

ClientMethod updateTime() [ Language = javascript ]
{
}

/// Table auto-refresh timer handler.
ClientMethod refreshHandler() [ Language = javascript ]
{
}

/// User changed refresh rate. Validate it and save value to server.
ClientMethod setRefreshRate(newRate) [ Language = javascript ]
{
}

/// Update / Reload table. Subclass may override this method. Do not modify this method unless you are going to take care of all pages that use it.
ClientMethod updateView() [ Language = javascript ]
{
}

ClassMethod LastUpdateTime() As %String [ ZenMethod ]
{
}

/// Save auto refresh rate (how many seconds user entered) to server.
ClassMethod UpdateAutoRefreshRate(refreshrate As %Integer) [ ZenMethod ]
{
}

/// Save auto refresh state (Refresh on or off) ito server.
ClassMethod UpdateAutoRefreshState(refreshstate) [ ZenMethod ]
{
}

/// Save current column and state to server so that when page is refreshed or reloaded the sort and state remain the same.
ClassMethod UpdateTableState(currColumn As %String, sortOrder As %String) [ ZenMethod ]
{
}

/// *****      End of Refresh Feature for tablePane    *****
/// ********************************************************///
/// If Refresh Feature is turned on, then clearTimer before exist.
ClientMethod onunloadHandler() [ Language = javascript ]
{
}

/// Use this method to build a meter for Dashboard. (See example for usage in %CSP.UI.Portal.ProcessDetails.cls)
ClassMethod BuildMeter(pLabel, pProperty, pWidth, pLink, pDetails) As %CSP.Util.HTMLValueMeter
{
}

/// Be sure to do ##super() when overriding.
Method %OnAfterCreatePage() As %Status
{
}

}
