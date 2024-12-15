/// <p>This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// Edit SQL View for Management Portal
Class %CSP.UI.Portal.Dialog.SQLView Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.Dialog.SQLView.zen";

/// Displayed name of this page.
Parameter PAGENAME = "SQLViewEdit";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 0;

/// Security requirement
Parameter RESOURCE = "%Development";

Property NAMESPACE As %ZEN.Datatype.string(ZENURL = "NAMESPACE");

/// Indicate whether this is to create or edit view.
Property isNew As %ZEN.Datatype.string(ZENURL = "isNew");

/// Schema name, may or may not be available.
Property SCHEMA As %ZEN.Datatype.string(ZENURL = "SCHEMA");

/// When editing, this is passed in.
Property VIEWNAME As %ZEN.Datatype.string(ZENURL = "VIEWNAME");

Property BuilderPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/exp/%25CSP.UI.SQL.QueryBuilderWindow.cls",,1)} ];

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

ClientMethod showNewSchema() [ Language = javascript ]
{
}

ClientMethod doQueryBuilder() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
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

/// If creating a new view, make sure that the view name is not empty.
ClientMethod validate() [ Language = javascript ]
{
}

ClientMethod doSave() [ Language = javascript ]
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

ClassMethod DrawPageTitle(pSeed As %String) As %Status
{
}

/// VIEWNAME, Schema, ViewName, ViewText, CheckOption, ReadOnly
ClassMethod SaveData(isNew, Schema, ViewName, ViewText, CheckOption, GrantPublic) As %String [ ZenMethod ]
{
}

/// Method for executing the schemas query.
Method ListSchemas(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

}
