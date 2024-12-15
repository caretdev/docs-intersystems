/// Multi-line text input control.
/// This is a simple wrapper around the HTML textarea control.<br>
/// Note that many browsers do not cope well with long lines
/// of unbroken text (i.e., greater than 4K characters with no white space.)
Class %ZEN.Component.textarea Extends control [ Deprecated, System = 3 ]
{

Parameter DEFAULTCONTROLCLASS = "textarea";

/// Number of rows in the textarea control.
Property rows As %ZEN.Datatype.integer(MINVAL = 0);

/// Number of columns in the textarea control.
Property cols As %ZEN.Datatype.integer(MINVAL = 0);

/// Internal property.<br>
/// Keep track of whether user has modified this control.
Property modFlag As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];

/// If true, this control has spellcheck enabled. Assuming this is an HTML5 browser implementation. IE9 does not support this.
Property spellcheck As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// This client event is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Return true if the current value of this control is different
/// than its orginal value.<br>
/// Override default implementation.
ClientMethod isModified() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// This built-in event handler is called by the HTML control
/// associated with the control to raise notification that
/// the control's value has changed.
/// Override to set our modified flag.
ClientMethod onchangeHandler() [ Language = javascript ]
{
}

}
