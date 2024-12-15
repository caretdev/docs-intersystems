/// This dialog lets the user save a DeepSee widget definition to the widget catalog.
Class %DeepSee.UI.Dialog.WidgetSave Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// Name.
Property widgetName As %ZEN.Datatype.string(ZENURL = "PIVOT");

/// Description.
Property widgetDescription As %ZEN.Datatype.string(MAXLEN = 32000, ZENURL = "DESC");

/// Keywords.
Property widgetKeywords As %ZEN.Datatype.string(MAXLEN = 32000, ZENURL = "WORDS");

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

/// Test if the given widget already exists.
ClassMethod WidgetExists(pName As %String) As %Integer [ ZenMethod ]
{
}

}
