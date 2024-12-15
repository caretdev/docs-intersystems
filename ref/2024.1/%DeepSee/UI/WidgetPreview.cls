/// DeepSee Widget Preview page.
/// Displays a transient version of a widget for the widget builder page.
/// (Restored)
Class %DeepSee.UI.WidgetPreview Extends %ZEN.Component.page [ System = 4 ]
{

Parameter CSPURL = "%DeepSee.UI.WidgetPreview";

/// All DeepSee pages require %DeepSee_Portal USE.
Parameter RESOURCE = "%DeepSee_Portal";

Parameter PAGENAME = "Widget Preview";

/// Name of dashboard containing widget.
Property dashboardName As %ZEN.Datatype.string(ZENURL = "DASHBOARD");

/// Name of catalog containing widget.
Property catalogName As %ZEN.Datatype.string(ZENURL = "CATALOG");

XData Style
{
}

/// Contents of this page:
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

/// Add include files to support color schemes.
Method %OnDrawHTMLHead() As %Status
{
}

}
