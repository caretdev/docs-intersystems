/// Monitor page for the Interoperability Management Portal.
Class %CSP.UI.Portal.EnsembleMonitor Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Name of this page.
Parameter PAGENAME = "System Monitor";

/// If true, register visits to this page in the recent list.
Parameter RECENT = 1;

/// If true, auto-switch namespace to whatever $NAMESPACE is passed in.
Parameter AUTONS As BOOLEAN = 0;

/// User needs USE permissions on the %Ens_Dashboard resource to access this page.
Parameter RESOURCE = "%Ens_Dashboard:USE";

/// The help address that links to the "Help" (next to the "Logout" link) documentation
Property HelpAddress As %ZEN.Datatype.string [ InitialExpression = {$$$PRODUCT2_", "_..#PAGENAME} ];

/// Server-side reference to the pane object so that the head and body sections can be added to the page correctly.
Property %Pane As %CSP.Util.Pane [ ServerOnly = 1 ];

/// Flag to indicate whether <property>%Pane</property>'s OnDrawHEAD() method has been executed.
Property paneDone As %Boolean;

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Get the (localized) title string for the page.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) name of the page.
Method %OnGetPageName() As %String
{
}

/// Draw the contents of the diagram header.
Method DrawStats(pSeed As %String) As %Status
{
}

/// Adjust sizes of components on the page.
ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

ClientMethod updateStats(timer) [ Language = javascript ]
{
}

/// Instantiate <property>%Pane</property>.
Method %OnAfterCreatePage() As %Status
{
}

/// Add the HEAD section for <property>%Pane</property> and override some CSS styles if HTML5 is enabled.
/// Without these overrides, the font size is calculated to be 0.8px and padding is calculated to be 0 for the header cells..
Method %OnDrawHTMLHead() As %Status
{
}

ClassMethod GetDetailPane(pInstance As %CSP.Util.PageInstance) As %CSP.Util.Pane [ Language = objectscript ]
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link) <br/>
/// Overridden to show Interoperability->Monitor->ProductionMonitor.
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Custom handler for hyperEvent handlers to be (optionally) less
/// intrusive if the cause of the error was an auto-refresh timer
/// losing commectivity with the host.
/// Modified from %ZEN.Portal.standardPage because auto-refresh is hard-coded
ClientMethod onServerMethodError(err, errObject) [ Language = javascript ]
{
}

}
