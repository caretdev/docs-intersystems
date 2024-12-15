/// Actions for Local Databases: Delete DB.
Class %CSP.UI.Portal.Dialog.DatabaseDelete Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Dialog.DatabaseDelete.zen";

Parameter EMSSERVICE = "Namespace";

Parameter RESOURCE = "%Admin_Manage:USE";

/// Displayed name of this page.
Parameter PAGENAME = "Delete Database";

Property DBName As %ZEN.Datatype.string(ZENURL = "DBName");

Property Directory As %ZEN.Datatype.string(ZENURL = "Dir");

Property CacheDatExists As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

Property Remote As %ZEN.Datatype.boolean(ZENURL = "Remote");

Property SynonymDBs As %ZEN.Datatype.string;

/// Total number of namespaces associated with the DB
Property TotalNamespaces As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Contents of this page:
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// Commit Deletion now
ClientMethod doSave() [ Language = javascript ]
{
}

ClassMethod DrawPageTitle(pSeed As %String) As %Status
{
}

/// This method checks the state of the database and draw necessary message or prompts.
ClassMethod DrawCheckDatabase(pSeed) As %Status
{
}

ClassMethod GetWebApp(ByRef Nsp, ByRef WebApp) As %Status
{
}

ClassMethod DrawMappings(mappings As %String) As %Status
{
}

/// Delete database from server.
ClassMethod Delete(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod DisableEnsNamespace(namespace As %String) As %Status
{
}

/// This callback is called after the server-side page
/// object and all of its children are created.<br/>
/// Subclasses can override this to add, remove, or modify
/// items within the page object model, or to provide values
/// for controls.
Method %OnAfterCreatePage() As %Status
{
}

/// Get the (localized) title string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) subtitle string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetSubtitle() As %String
{
}

}
