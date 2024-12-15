///  Zen page for System Management Portal - Edit Local Database Properties
Class %CSP.UI.Portal.Database Extends %CSP.UI.Portal.DatabaseTemplate [ System = 4 ]
{

///  Displayed name of this page.
Parameter PAGENAME = "Database Properties";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Database.zen";

Parameter HELPADDRESS = "Home,Configuration,Local Databases,Database Properties";

Property CanBeMirrored As %Boolean;

///  MirrorSetName is not null if this window is called from Mirroring Settings
Property MirrorSetName As %ZEN.Datatype.boolean(ZENURL = "MirrorSetName");

Property NoJournalWarningDBs As %ZEN.Datatype.string [ InitialExpression = ",IRISLIB,IRISTEMP,DOCBOOK,IRISLOCALDATA," ];

Property ResourcePage As %ZEN.Datatype.caption [ InitialExpression = {..Link("/csp/sys/sec/%CSP.UI.Portal.Dialog.Resource.zen",,1)} ];

Property OldMaxSize As %ZEN.Datatype.integer;

XData Style
{
}

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

///  if user unchecked Journal State, show warning
ClientMethod changeJournal(newVal) [ Language = javascript ]
{
}

ClientMethod changeMaxSize(newVal) [ Language = javascript ]
{
}

ClientMethod changeReadOnly(newVal) [ Language = javascript ]
{
}

///  Add db to mirror
ClientMethod doAddMirror() [ Language = javascript ]
{
}

ClientMethod doSave() [ Language = javascript ]
{
}

ClientMethod validate(proxy) [ Language = javascript ]
{
}

/// Get the max size for the DB, based on the current block size.
ClientMethod getDBSizeLimit() [ Language = javascript ]
{
}

ClientMethod updateDirectory(NewDirectory) [ Language = javascript ]
{
}

///  Set focus to the Name field.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

///  Return the array of links to show in the locator bar.<br/>
///  pLink(n)=$LB(caption,link)
Method %GetLocatorLinks(Output pLink) As %Status
{
}

/// Get the (localized) name of the page.
///  This should be implemented in a subclass.
Method %OnGetPageName() As %String
{
}

///  Save general association data to server.<br/>
///  Returns proxy.ok = 1 (save successful) or 0 (error occurred)<br/>
///  proxy.Message (save successful, with warning message: require restart)<br/>
///  proxy.ErrorMessage (save failed and display this error message).
///  If proxy.ok is 1 and no messages returned then we return to Database list page.
ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClientMethod doResource() [ Language = javascript ]
{
}

///  This method is called from JavaScript if user is modifying IRISEMP and changed to a different directory<br>
///  We check here to see if the newly selected directory is a IRISTEMP type of database. Returns a number.
ClassMethod checkCACHETEMP(newdir As %String) As %Integer [ ZenMethod ]
{
}

}
