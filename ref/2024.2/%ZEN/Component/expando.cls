/// Specialized group that provides the ability to show or hide
/// its children.<br/>
/// The <property>framed</property> property controls the appearance
/// of the group. If false, then a caption is displayed at the top
/// of the group with a expando icon. Clicking on the icon will expand
/// or contract the group. If <property>framed</property> is true,
/// then a border is drawn around the entire group and the caption is
/// displayed within a more formal title box.<br/>
/// This type of component is also known as a "disclosure" within some
/// user interface systems.
Class %ZEN.Component.expando Extends group [ Deprecated, System = 3 ]
{

Parameter DEFAULTLAYOUT = "vertical";

Parameter DEFAULTGROUPCLASS = "expandoTable";

/// Default url of image used for expanded expando node.
Parameter IMAGEEXPANDED = "images/disclosure-expanded.gif";

/// Default url of image used for contracted expando node.
Parameter IMAGECONTRACTED = "images/disclosure-contracted.gif";

/// Value to display for expando node.
/// This text is <em>not</em> automatically HTML escaped.
Property caption As %ZEN.Datatype.caption(ZENEXPRESSION = 1);

/// If true (default is false), then display a solid
/// title area and frame around the contents of this group.
Property framed As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true (default is false), then animate the appearance
/// and disappearance of the group contents.
Property animate As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// onexpand event handler:
/// If defined, this event is fired just
/// before the children of this expando are made visible.
Property onexpand As %ZEN.Datatype.eventHandler;

/// oncontract event handler:
/// If defined, this event is fired just
/// before the children of this expando are hidden.
Property oncontract As %ZEN.Datatype.eventHandler;

/// Indicates whether this expando node is expanded (children visible)
/// or contracted (children not visible).
Property expanded As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Specifies amount child nodes should be indented.
Property childIndent As %ZEN.Datatype.length;

/// url of image used for expanded expando node.
Property imageExpanded As %ZEN.Datatype.uri [ InitialExpression = {..#IMAGEEXPANDED} ];

/// url of image used for contracted expando node.
Property imageContracted As %ZEN.Datatype.uri [ InitialExpression = {..#IMAGECONTRACTED} ];

/// If true, remember most recent expanded state in a session cookie.
Property remember As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Optional.
/// Name of Server-side callback method that provides additional HTML content
/// for this component.<br>
/// If defined, this callback is invoked on the server when this
/// component is drawn. It provides HTML content by using &html or
/// by using the WRITE command.<br>
/// This must be the name of a server-only method in the page
/// class that contains this view component.
Property OnDrawContent As %ZEN.Datatype.delegator(FORMALSPEC = "expando:%ZEN.Component.expando", RETURNTYPE = "%Status");

XData Style
{
}

Method %DrawHTML()
{
}

/// This callback, if defined, provides a way to add
/// content to the right side of the title bar when the
/// expando is in framed mode.<br/>
/// Any HTML written by this method will be injected into
/// the title bar.<br/>
/// This is expected to be implemented in a subclass.
Method %OnDrawTitleOptions()
{
}

/// Invoke user method to provide additional contents for this
/// component.
Method %DrawContent() As %Status
{
}

/// Toggle the current expanded state of this expando node.<br>
/// <var>tuple</var>, if supplied, is the current tuple number
/// for cases when this expando is used within a repeating group.
ClientMethod toggleExpanded(tuple) [ Language = javascript ]
{
}

/// Returns the current expanded state of this expando node.<br>
/// <var>tuple</var>, if supplied, is the current tuple number
/// for cases when this expando is used within a repeating group.
ClientMethod getExpanded(tuple) [ Language = javascript ]
{
}

/// Set the expanded state of this expando.<br>
/// <var>tuple</var>, if supplied, is the current tuple number
/// for cases when this expando is used within a repeating group.
ClientMethod setExpanded(flag, tuple) [ Language = javascript ]
{
}

/// Internal method that animates the expansion/contraction
/// of the group.
ClientMethod animateExpand(delta, divid) [ Internal, Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
