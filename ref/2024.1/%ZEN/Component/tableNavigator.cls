/// This composite component provides a set of navigation buttons for
/// a <class>%ZEN.Component.tablePane</class>.<br>
/// For a more sophisticated component, use <class>%ZEN.Component.tableNavigatorBar</class>.<br>
Class %ZEN.Component.tableNavigator Extends composite [ Deprecated, System = 4 ]
{

Parameter DOMAIN = "%ZEN";

Parameter SYSMODULE = "table";

/// id of <class>%ZEN.Component.tablePane</class> component this
/// navigator is associated with.<br>
/// Note: if this component is placed within a composite element, then the
/// tablePane must be within the same composite element.
Property tablePaneId As %ZEN.Datatype.id(COMPONENTTYPE = "tablePane");

Property msgPage As %ZEN.Datatype.caption;

Property msgOf As %ZEN.Datatype.caption;

Property msgFirstPage As %ZEN.Datatype.caption;

Property msgLastPage As %ZEN.Datatype.caption;

Property msgNextPage As %ZEN.Datatype.caption;

Property msgPreviousPage As %ZEN.Datatype.caption;

/// defines style sheet used by this component
XData Style
{
}

/// Contents of this composite component:
/// This is a set of paging buttons as well as text controls
/// to show the current page number.
XData Contents
{
}

ClientMethod checkEnter(event) [ Language = javascript ]
{
}

/// This method is used to force a blur() of the text input box under IE.
/// Most browsers will fire an onchange event when the enter key is hit in
/// a text box but IE requires that the box lose focus before triggering
/// an onchange event.
/// This method is called from the associated tablePane when
/// it changes state. The navigator responds by updating the
/// state of its controls.
ClientMethod updateState() [ Language = javascript ]
{
}

/// Move to the specified page in the associated tablePane.
/// where can be 'first','last','next','prev' or a page number.
ClientMethod gotoPage(where) [ Language = javascript ]
{
}

/// Set the value of a named property.<br>
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

Method %DrawHTML()
{
}

/// Client-side method to render this control.
/// In this case, we perform client-side connection to the tablePane.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// This callback is called after the children of this composite
/// component have been created.
Method %OnAfterCreateComposite() As %Status
{
}

}
