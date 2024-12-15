/// This dialog lets the user select a widget template from the DeepSee widget catalog.
Class %DeepSee.UI.Dialog.WidgetCatalog Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Name of dashbvoard that launched the dialog.
Property dashboardName As %ZEN.Datatype.string(ZENURL = "DASHBOARD");

/// Row number of selected widget.
Property widgetNo As %ZEN.Datatype.string;

/// Id of selected widget.
Property widgetId As %ZEN.Datatype.string;

/// Description of selected widget.
Property widgetDescription As %ZEN.Datatype.string;

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Zen page notification of an HTTP request.
ClassMethod %OnPreHTTP() As %Boolean [ Internal, ServerOnly = 1 ]
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

/// Adjust size and position of components on this page.
ClientMethod adjustSize() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// User selected a widget in the list.
ClientMethod selectWidget(no, id) [ Language = javascript ]
{
}

/// Render contents of the widget list.
Method DrawWidgetList(pSeed As %String) As %Status
{
}

/// Add a widget to the given dashboard definition.
Method AddWidgetToDashboard(pDashboardName As %String, pWidgetTemplateName As %String) As %String [ ZenMethod ]
{
}

/// Display a new preview widget.
Method ChangeWidget(pWidgetTemplateId As %String) As %String [ ZenMethod ]
{
}

/// Remove item from catalog.
ClientMethod removeFromList(name) [ Language = javascript ]
{
}

/// Remove item from catalog.
ClassMethod RemoveFromCatalog(pName As %String) As %String [ ZenMethod ]
{
}

}
