/// Style edit control.<br/>
/// This provides a way to edit CSS styling for text elements.
/// The value for this control is a css style string.
Class %DeepSee.Component.styleEdit Extends %ZEN.Component.control [ System = 3 ]
{

Parameter NAMESPACE = "http://www.intersystems.com/deepsee";

Parameter DEFAULTENCLOSINGCLASS;

/// Set of features to display when in "style" mode:
/// These include: "font", "background", "color", "align", "reset".
Property features As %ZEN.Datatype.csv;

/// Operating mode of the control.<br/>
/// "style" (the default) edit a css style spec.<br/>
/// "color" edit a single color value.<br/>
Property mode As %ZEN.Datatype.string(VALUELIST = ",style,color") [ InitialExpression = "style" ];

/// Caption to display when in "color" mode.
Property caption As %ZEN.Datatype.caption;

/// Internal use only; client flag used to track if the
/// dropdown is visible.
Property isDropdownVisible As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0 ];

/// Current color set.
Property currColorSet As %ZEN.Datatype.string(XMLPROJECTION = "none");

/// Logical names of color sets.
Property colorSetNames As list Of %ZEN.Datatype.string(XMLPROJECTION = "none");

/// Captions of color sets.
Property colorSetCaptions As list Of %ZEN.Datatype.string(XMLPROJECTION = "none");

/// List of ;-delimited color set values for drop down.
Property colorSets As list Of %ZEN.Datatype.string(XMLPROJECTION = "none");

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// Client-side method to render this control.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Show the drop down.
ClientMethod showDropdown(which) [ Language = javascript ]
{
}

/// Notification that this component is about to become modal.
ClientMethod onStartModalHandler(zindex) [ Language = javascript ]
{
}

/// Notification that this component is about to stop being modal.
ClientMethod onEndModalHandler(zindex) [ Language = javascript ]
{
}

/// Show the drop down contents.
ClientMethod renderDropdown() [ Language = javascript ]
{
}

/// Show the drop down.
ClientMethod hideDropDown() [ Language = javascript ]
{
}

/// Timer handler for hide/reveal of drop down.
ClientMethod reveal() [ Language = javascript ]
{
}

/// Select color in drop down.
ClientMethod selectColor(which, color) [ Language = javascript ]
{
}

/// Select font in drop down.
ClientMethod selectFont(which, font) [ Language = javascript ]
{
}

/// Select font size in drop down.
ClientMethod selectFontSize(which, size) [ Language = javascript ]
{
}

/// Toggle text style.
ClientMethod textStyle(which) [ Language = javascript ]
{
}

/// Set text align.
ClientMethod textAlign(which) [ Language = javascript ]
{
}

/// Set a specific css value into the style values supported by this control.
ClientMethod setStyle(style, value) [ Language = javascript ]
{
}

/// Split a css value into the style values supported by this control.
/// Return an object containing these values.
ClientMethod parseStyle(style) [ Language = javascript ]
{
}

/// Clear the styles
ClientMethod resetStyles() [ Language = javascript ]
{
}

/// Find the div element used to display the dropdown box.
ClientMethod getDropDownDiv() [ Language = javascript ]
{
}

/// Adjust the placement and size of the dropdown box based on
/// current screen geometry and scrolling conditions.
ClientMethod adjustDropdownPosition() [ Language = javascript ]
{
}

ClientMethod onresizeHandler() [ Language = javascript ]
{
}

ClientMethod customColorChange(which) [ Language = javascript ]
{
}

/// Change the displayed color set.
ClientMethod colorSetChange(which) [ Language = javascript ]
{
}

/// Return a HTML for the table of color choices for the current color set.
ClientMethod getColorTableHTML(which) [ Language = javascript ]
{
}

/// Return an array of (arrays of) the current color set.
ClientMethod getColorSet() [ Language = javascript ]
{
}

}
