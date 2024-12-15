/// This persistent class represents a widget template that is part of the Widget library.<br/>
/// This is used when a user saves a widget as a template. The template can then be used as
/// the basis for new widgets added to a dashboard. Note that these are copied from the template
/// at the time they are created. Subsequent changes to the widget template do not affect earlier
/// copies.
Class %DeepSee.Dashboard.WidgetTemplate Extends %DeepSee.UserLibrary.FolderItem [ System = 4 ]
{

Parameter XMLNAME = "widgetTemplate";

Parameter ITEMTYPE = "widget";

Parameter ICON = "deepsee/blueprint_plan_24.gif";

Parameter LARGEICON = "deepsee/blueprint_plan_48.gif";

Parameter LISTED = 0;

/// The widget definition.
Property widget As Widget(XMLNAME = "widget", XMLPROJECTION = "element");

/// Return the URL for this item.
Method %GetURL() As %String
{
}

/// Return the localized type name for this item.
Method %GetTypeName() As %String
{
}

}
