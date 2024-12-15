/// Page to define SQL Table/View column privileges.
Class %CSP.UI.Portal.Dialog.ColumnPriv Extends (%CSP.Portal.standardDialog, %CSP.UI.Component.SelectBoxUtils) [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter AUTONS As BOOLEAN = 1;

Parameter CSPURL = "/csp/sys/sec/%CSP.UI.Portal.Dialog.ColumnPriv.zen";

Parameter RESOURCE = "%Admin_Secure:USE";

/// Displayed name of this page.
Parameter PAGENAME = "Column Privileges";

/// Domain used for localization.
Parameter DOMAIN = "%Utility";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 1;

/// User or Role whose privileges are being granted
Property PID As %String(ZENURL = "PID");

/// Flag indicating whether user checked the "Include System Items" checkbox.
Property IncludeSystem As %Integer(ZENURL = "IncludeSystem") [ InitialExpression = 0 ];

/// Namespace indicating where the schemas/tables/views are coming from.
Property Namespace As %String(ZENURL = "$NAMESPACE");

/// ObjName = null for Add, or Table name or View name for Edit
Property ObjName As %String(ZENURL = "ObjName");

/// "TABLE" or "VIEW".
Property ObjectType As %String(ZENURL = "Type");

/// User selected schema name
Property Schema As %String;

/// User selected table name
Property Table As %String;

/// Table column name if user is editing or revoking
Property Column As %String;

/// Total number of existing columns for edit
Property TotalColumns As %Integer [ InitialExpression = 0 ];

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

/// User selected a table. Load Available/Selected list boxes.
ClientMethod changeTable(newVal) [ Language = javascript ]
{
}

ClientMethod uncheckAllBoxes() [ Language = javascript ]
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

/// User clicked "Add Columns" to add more columns to existing schema.table
ClientMethod doAddColumn(newVal) [ Language = javascript ]
{
}

/// User clicked "Edit" to edit existing column priv
ClientMethod doEditColumn(column) [ Language = javascript ]
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

/// User clicked "Revoke" to revoke existing column priv
ClientMethod doRevokeColumn(column) [ Language = javascript ]
{
}

/// When editing existing column priv, this method loads existing column priv into check boxes
ClassMethod ColumnEdit(pSchema, pTable, pColumn) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Save column priv data to server
/// If this is to revoke column priv, then pRevoke = 1, pPrivs and pGrant will be null.
ClassMethod SaveData(pProxy As %ZEN.proxyObject) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Load fields into Available/Selected list boxes.
ClassMethod UpdateDetails(Schema As %String, Table As %String, PID As %String, IncludeSystem As %Integer) As %ZEN.proxyObject [ ZenMethod ]
{
}

Method PopulateSchemas() As %Status
{
}

/// Return existing columns
ClassMethod GetColumns(PID As %String, Schema As %String, Table As %String, IncludeSystem As %Integer, Output Columns As %String) As %Status
{
}

Method DrawSelectBoxes(seed As %String) As %Status
{
}

/// Draws table for existing table column priv allowing user to edit or revoke.
Method DrawTable(seed As %String) As %Status
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
