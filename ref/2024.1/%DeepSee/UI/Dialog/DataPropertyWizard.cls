/// This dialog creates a new data property for a dashboard widget.
/// (Copied from old control data property dialog).
Class %DeepSee.UI.Dialog.DataPropertyWizard Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

Parameter JSINCLUDES = "dsparser.js";

/// Index of property within parent dialog list or "" for new.
Property itemNumber As %ZEN.Datatype.string(ZENURL = "NUMBER");

/// Dashboard name.
Property dashboardName As %ZEN.Datatype.string(ZENURL = "DASHBOARD");

/// Data source name.
Property dataSource As %ZEN.Datatype.string(ZENURL = "DATASOURCE");

/// Name of widget.
Property widgetName As %ZEN.Datatype.string(ZENURL = "WIDGETNAME");

/// Type of widget, used to decide what controls to show.
Property widgetType As %ZEN.Datatype.string(ZENURL = "WIDGETTYPE");

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

Method %OnAfterCreatePage() As %Status
{
}

/// Change to summary value control.
ClientMethod changeSummary() [ Language = javascript ]
{
}

/// Change to "hidden" control.
ClientMethod changeHidden() [ Language = javascript ]
{
}

/// Change to "autoLabel" control.
ClientMethod changeAutoLabel() [ Language = javascript ]
{
}

/// Change to "display" control.
ClientMethod changeDisplay() [ Language = javascript ]
{
}

/// Validate the value (expression) within the given control.
ClientMethod validateValue(ctrl) [ Language = javascript ]
{
}

}
