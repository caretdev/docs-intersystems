/// This dialog lets the user edit a default value for a control within a Dashboard widget.
Class %DeepSee.UI.Dialog.DashboardEditDefaultValue Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Dashboard name.
Property dashboardName As %ZEN.Datatype.string(ZENURL = "DASHBOARD");

/// Data source name.
Property dataSource As %ZEN.Datatype.string(ZENURL = "DATASOURCE");

/// Default value.
Property defaultValue As %ZEN.Datatype.string(ZENURL = "VALUE");

/// Display text to be presented to the user. This is primarily used
/// as a return value.
Property defaultText As %ZEN.Datatype.string(ZENURL = "TEXT");

/// Current filter name.
Property filterName As %ZEN.Datatype.string(ZENURL = "FILTER");

/// Current mode: filter or setting.
Property currMode As %ZEN.Datatype.string;

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Draw overview content.
Method DrawOverview(pSeed As %String) As %Status
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

/// User selected a radio button.
ClientMethod rbChanged() [ Language = javascript ]
{
}

/// Update controls to match current state.
ClientMethod updateControls() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

}
