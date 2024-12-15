/// Editor logic for a Zen Application Studio Document.
///
Class %ZEN.StudioDocument.ZENAppEditor Extends %ZEN.StudioDocument.AbstractEditor [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

XData Style
{
}

/// Contents of application editor page;
XData Contents
{
}

/// This callback is called after the server-side page
/// object and all of its children are created.<br>
/// Subclasses can override this to add, remove, or modify
/// items within the page object model, or to provide values
/// for controls.
Method %OnAfterCreatePage() As %Status
{
}

/// DrawHTMLTitle for title bar.
Method DrawHTMLTitle(seed As %ZEN.Datatype.string) As %Status
{
}

/// DrawHTMLContent for page list.
Method DrawHTMLContent(seed As %ZEN.Datatype.string) As %Status
{
}

/// openPage: Open a Studio window for the given page.
ClientMethod openPage(page) [ Language = javascript ]
{
}

/// selectPage: Point navigator to this page.
ClientMethod selectPage(page) [ Language = javascript ]
{
}

/// User click on node within Navigator.
ClientMethod selectNode(nav) [ Language = javascript ]
{
}

/// Rebuild the array of nodes used by the Navigator
/// to show pages linked <var>page</var>.
ClassMethod UpdateNav(appName As %String, page As %String, nav As %ZEN.SVGComponent.radialNavigator) As %Boolean [ ZenMethod ]
{
}

/// This client event, if present, is fired when the page
/// is first loaded or whenever it is resized.<br>
/// If this is called at load time, then <var>load</var> will
/// be true.
ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

}
