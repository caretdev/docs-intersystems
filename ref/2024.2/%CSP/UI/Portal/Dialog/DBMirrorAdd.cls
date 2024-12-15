/// <p>This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// Add to Mirror dialog for Management Portal.
Class %CSP.UI.Portal.Dialog.DBMirrorAdd Extends (%CSP.UI.Portal.Dialog.WizardTemplate, %CSP.UI.Portal.UtilsNav) [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/mgr/%CSP.UI.Portal.Dialog.DBMirrorAdd.zen";

/// Displayed name of this page.
Parameter PAGENAME = "AddToMirror";

Parameter RESOURCE = "%Admin_Manage:USE";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

/// DB name to be added to mirror.
Property DBName As %ZEN.Datatype.string(ZENURL = "DBName");

/// DB directory to be added to mirror.
Property Dir As %ZEN.Datatype.string(ZENURL = "Dir");

/// Primary Mirror name for DB to be added.
Property MirDBName As %ZEN.Datatype.string(ZENURL = "MirDBName");

/// Indicates whether multiple databases can be added.
Property Multi As %ZEN.Datatype.boolean(ZENURL = "Multi") [ InitialExpression = 0 ];

/// Indicates how many databases the user is adding.
Property MultiCount As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This XML block defines the contents of this pane.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onstartHandler() [ Language = javascript ]
{
}

ClientMethod rowSelect(selectedRows) [ Language = javascript ]
{
}

ClientMethod validate() [ Language = javascript ]
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

/// User entered something in to the filter. Re-load the table with filter value.
ClientMethod filterChanged(value) [ Language = javascript ]
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

/// This callback is called after the server-side page
/// object and all of its children are created.<br/>
/// Subclasses can override this to add, remove, or modify
/// items within the page object model, or to provide values
/// for controls.
Method %OnAfterCreatePage() As %Status
{
}

Method ToggleFinishButton(Enabled As %Boolean) As %Status [ ZenMethod ]
{
}

ClassMethod DrawPageTitle(pSeed As %String) As %Status
{
}

ClassMethod DrawMultiText(pSeed As %String) As %Status
{
}

ClassMethod SaveData(Dir As %String, MirDBName As %String) As %String [ ZenMethod ]
{
}

ClassMethod SaveDataMulti(DBNames As %String, Background As %Boolean) As %String [ ZenMethod ]
{
}

}
