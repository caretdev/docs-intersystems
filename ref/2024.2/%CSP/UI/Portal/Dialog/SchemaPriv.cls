/// Page to define SQL Table/View column privileges.
Class %CSP.UI.Portal.Dialog.SchemaPriv Extends (%CSP.Portal.standardDialog, %CSP.UI.Component.SelectBoxUtils) [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter AUTONS As BOOLEAN = 1;

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Dialog.SchemaPriv.zen";

/// Displayed name of this page.
Parameter PAGENAME = "Schema Privileges";

Parameter RESOURCE = "%Admin_Secure:USE";

/// Domain used for localization.
Parameter DOMAIN = "%Utility";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 1;

/// User or Role whose privileges are being granted
Property PID As %String(ZENURL = "PID");

/// Flag indicating whether user checked the "Include System Items" checkbox.
Property IncludeSystem As %Integer(ZENURL = "IncludeSystem") [ InitialExpression = 0 ];

Property IsProcedure As %Boolean;

Property IsNotProcedure As %Boolean;

Property IsRelation As %Boolean;

Property IsNotRelation As %Boolean;

Property IsMLConfiguration As %Boolean;

Property IsNotMLConfiguration As %Boolean;

Property IsForeignServer As %Boolean;

Property IsNotForeignServer As %Boolean;

Property HideUse As %Boolean;

/// Namespace indicating where the schemas/tables/views are coming from.
Property Namespace As %String(ZENURL = "$NAMESPACE");

/// ObjName = null for Add, or Table name or View name for Edit
Property ObjName As %String(ZENURL = "ObjName");

/// ObjName = null for Add, or Table name or View name for Edit
Property ObjPriv As %String(ZENURL = "ObjPriv");

/// "TABLE" or "VIEW".
Property ObjectType As %String(ZENURL = "Type");

Property Schema As %String;

Property Tables As %String;

/// Total number of existing columns for edit
Property TotalTables As %Integer [ InitialExpression = 0 ];

Property PrivCount As %Integer;

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This XML block defines the contents of this page.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Disable or enable the apply,cancel, and ok buttons for this dialog.
/// Overriding %ZEN.Dialog.standardDialog
/// (called by dialogFinish() and dialogCancel())
ClientMethod disableButtons(flag) [ Language = javascript ]
{
}

ClientMethod onSelectBoxMove(flag, isPage) [ Language = javascript ]
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

ClientMethod toggleSave(enable) [ Language = javascript ]
{
}

ClientMethod doModified() [ Language = javascript ]
{
}

/// User changed or selected a schema. Load Table list based on the schema selected.
ClientMethod changeSchema(newVal) [ Language = javascript ]
{
}

/// User clicked the Privilege/Grant Admin checkbox.
ClientMethod toggleChecks(g, newVal) [ Language = javascript ]
{
}

/// User changed a checkbox.
ClientMethod checkboxModified(id, g) [ Language = javascript ]
{
}

/// Check if Priv or Grant are all checked.
/// check chkPriv/chkGrant if all its checkboxes are checked; uncheck if at least one is unchecked.
ClientMethod checkAll(ID) [ Language = javascript ]
{
}

ClientMethod isSomethingChecked() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// Save column priv data to server
/// If this is to revoke column priv, then pRevoke = 1, pPrivs and pGrant will be null.
ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method PopulateSchemas() As %Status
{
}

ClassMethod MatchSchema(PID As %String, Schema As %String, Output Defined As %String) As %Status
{
}

/// tables based on object type and schema name
ClassMethod ListTables(PID As %String, objtype As %String, schema As %String, Output tSC As %Status) As %Integer
{
}

Method DrawSelectBoxes(seed As %String) As %Status
{
}

/// Set Locator bar and determine whether to show change password option.
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
