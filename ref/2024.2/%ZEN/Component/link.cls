/// link component.<br>
/// This component places a link (HTML anchor element) within a ZEN page.<br>
Class %ZEN.Component.link Extends component [ Deprecated, System = 3 ]
{

/// Text to display for the link.<br>
/// This value is interpreted as text, not HTML.
Property caption As %ZEN.Datatype.caption(ZENEXPRESSION = 1);

/// Optional title (tooltip) to display for the link.
Property title As %ZEN.Datatype.caption(ZENEXPRESSION = 1);

/// HREF (URL) to use for the link.
Property href As %ZEN.Datatype.uri(ZENEXPRESSION = 1);

/// Optional CSS style expression to apply to this link.
Property style As %ZEN.Datatype.style;

/// The HTML target value applied to the link.<br/>
/// This controls where the new document will be displayed when the
/// user clicks on a link. Typically this is the name of a frame.<br/>
/// HTML also defines for special values for target:
/// <ul>
/// <li>"_blank" - open the link in a new window.</li>
/// <li>"_parent" - open the link in our parent window.</li>
/// <li>"_self" - open the link in current window.</li>
/// <li>"_top" - open the link in topmost window.</li>
/// </ul>
Property target As %ZEN.Datatype.string;

/// If true, this link is disabled.<br>
/// A disabled link is redisplayed without an anchor tag to ensure
/// that it is truly disabled.
Property disabled As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// onclick event handler:
/// This event is fired when the mouse is clicked on the link.
Property onclick As %ZEN.Datatype.eventHandler;

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// Internal method: Handle user click on the link element.
ClientMethod onClickHandler() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
