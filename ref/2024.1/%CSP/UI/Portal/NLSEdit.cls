/// Zen page for System Management Portal - NLS Local Properties
Class %CSP.UI.Portal.NLSEdit Extends %CSP.UI.Portal.Template [ System = 4 ]
{

/// Displayed name of this page.
Parameter PAGENAME = "NLS Edit";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.NLSEdit.zen";

Parameter HELPADDRESS = "Home,Configuration,Locale Definitions";

Parameter EMSSERVICE = "Config";

Parameter PARENTPAGE = "/csp/sys/mgr/%CSP.UI.Portal.NLS.zen";

Parameter RECENT = 0;

/// Security requirement
Parameter RESOURCE = "%Admin_Manage";

/// Do not switch namespace for this page: it needs to stay in %SYS
Parameter AUTONS As BOOLEAN = 0;

Property msgIOTableName As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please enter a table name.")} ];

Property msgIOTableOutput As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please enter a value for Output.")} ];

Property msgIOTableInput As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please enter a value for Input.")} ];

Property msgConfirmIOTable As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Are you sure you want to remove this table from this locale?")} ];

Property msgPatternTables As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please select at least one Pattern match table.")} ];

Property msgIdenTables As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please select at least one Identifier table.")} ];

Property msgCollationTables As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please select at least one Collation table.")} ];

Property msgXYTables As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Please select at least one $X/$Y action table.")} ];

Property msgSaved As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Change has been saved.")} ];

Property CharacterSet As %ZEN.Datatype.string;

Property cmbLocale As %ZEN.Datatype.string(ZENURL = "cmbLocale");

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User clicked a menu. menu=0 means to return to Local Properties.
ClientMethod selectMenu(menu) [ Language = javascript ]
{
}

/// User selected a Input/Output table. Fill in edit fields.
ClientMethod selectIOTables(comp) [ Language = javascript ]
{
}

/// Reset the form programmatically
ClientMethod newIOTable() [ Language = javascript ]
{
}

/// User clicked the Remove button for IO table
ClientMethod removeIOTable() [ Language = javascript ]
{
}

/// User clicked the Save button for IO table
ClientMethod saveIOTable() [ Language = javascript ]
{
}

/// User clicked a Save button
ClientMethod save(menu) [ Language = javascript ]
{
}

/// Set Locator bar and determine whether to show change password option.
Method %OnAfterCreatePage() As %Status
{
}

/// Load Default Internal Tables
Method DrawIntTables()
{
}

Method DrawLocale(pSeed As %String) As %Status
{
}

/// Method for loading I/O Tables Output to field.
Method ExecuteOutputTo(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

/// Method for loading I/O Tables Input from field.
Method ExecuteInputFrom(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

/// Save values to Basics properties
ClassMethod SaveBasics(pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

/// Save values to Date, Time, Number Formats
ClassMethod SaveFormats(pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

ClassMethod SaveIntTables(pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

/// Load I/O table details
ClassMethod EditIOTable(table, tablename) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Validate and Save values to Input/Output Tables.
ClassMethod SaveIOTables(pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

/// Remove an existing IO table from locale
ClassMethod RemoveIOTables(pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

/// Save values to Defaults for Internal Tables (InternalDefaults)
ClassMethod SaveInternalDefaults(pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

/// Save values to Defaults for Input/Output (IODefaults)
ClassMethod SaveIODefaults(pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

/// Save values to Defaults for Input/Output (IODefaults)
ClassMethod SaveStrings(pProxy As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

/// Draw All Properties of a Locale
Method DrawProperties(pSeed As %String) As %Status
{
}

/// ------------------ Utility Methods for Moving between lstboxes ------------------ ///
/// Moving a list item from one box to the next, then remove it from the original box ///
ClientMethod arrowClick(from, to) [ Language = javascript ]
{
}

/// Return additional tables from array. Used by DrawProperties.
/// name = table name, e.g. PatternTables, CollationTables
/// def  = default, e.g. LocProps("CollationTable")
/// LocProps = array containing all current settings
ClassMethod ArrayToString(name As %String, def As %String, ByRef LocProps As %String, delim As %String = ", ") As %String
{
}

/// Return the array of links to show in the locator bar.<br/>
/// pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Get the (localized) name of the page.
Method %OnGetPageName() As %String
{
}

}
