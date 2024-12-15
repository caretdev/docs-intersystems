/// This dialog creates a new control for a dashboard widget.
/// (Copied from old control edit dialog).
Class %DeepSee.UI.Dialog.ControlWizard Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Index of control within parent dialog list or "" for new.
Property controlNumber As %ZEN.Datatype.string(ZENURL = "NUMBER");

/// Dashboard name.
Property dashboardName As %ZEN.Datatype.string(ZENURL = "DASHBOARD");

/// Data source name.
Property dataSource As %ZEN.Datatype.string(ZENURL = "DATASOURCE");

/// Name of widget.
Property widgetName As %ZEN.Datatype.string(ZENURL = "WIDGETNAME");

/// List of all widget names.
Property widgetNames As %ZEN.Datatype.csv(ZENURL = "WIDGETNAMES");

/// This provides the ability to initialize the Target field on load.
Property defaultTarget As %ZEN.Datatype.string(ZENURL = "TARGET");

/// Logical value of the control default
Property defaultCtrlValue As %ZEN.Datatype.string;

/// Display text of the control default
Property defaultCtrlText As %ZEN.Datatype.string;

/// List of action types.
Property actionTypes As list Of %ZEN.Datatype.string;

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
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

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

/// Updates the datasources field in the control wizard when the user picks a data source from a finder dialog.
ClientMethod updateForm(val) [ Language = javascript ]
{
}

/// User selected a new control type.
ClientMethod controlTypeChange(type) [ Language = javascript ]
{
}

/// User selected a new action type.
ClientMethod actionChange(clear) [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Change of filter property.
ClientMethod changeProperty() [ Language = javascript ]
{
}

/// Launch the dashboard finder.
ClientMethod browseDashboards() [ Language = javascript ]
{
}

ClientMethod browseTermLists() [ Language = javascript ]
{
}

ClientMethod browseDataSources() [ Language = javascript ]
{
}

/// Launch the value editor.
ClientMethod showDefaultValueEditor() [ Language = javascript ]
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

}
