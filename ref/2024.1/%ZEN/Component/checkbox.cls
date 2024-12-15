/// Boolean checkbox control<br>
/// This uses an HTML input=check control plus it displays a
/// caption (<property>caption</property>) next to the checkbox
/// and detects user mouse click on caption.<br>
/// Unlike an HTML checkbox, this checkbox always submits a value.
/// It submits a value of 1 or 0 to the server; The client side
/// value is either true or false.
Class %ZEN.Component.checkbox Extends control [ Deprecated, System = 3 ]
{

Parameter DOMAIN = "%ZEN";

Parameter DEFAULTCONTROLCLASS = "checkbox";

Parameter DEFAULTCLIENTTYPE = "boolean";

/// Additional caption displayed next to actual checkbox.<br>
/// This is a localized value.
Property caption As %ZEN.Datatype.caption(ZENEXPRESSION = 1);

/// CSS class to apply to the control's caption.
Property captionClass As %ZEN.Datatype.cssClass [ InitialExpression = "checkboxCaption" ];

/// If this is true then no checkbox will be built. Instead, it will write "Yes" or "No" based on the checkbox's value.
Property readonlyNobox As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// This method fills in reasonable default values for
/// this control. Used by tools (such as Control Tester) to
/// dynamically create controls.
Method %SetDefaultValues()
{
}

/// User click on checkbox; update hidden value;
ClientMethod clickCheckbox() [ Language = javascript ]
{
}

/// Get current value for serial state.
ClientMethod onSerialize() [ Language = javascript ]
{
}

/// User click on caption for checkbox; toggle value;
ClientMethod clickCaption() [ Language = javascript ]
{
}

/// Override to get value of control
ClientMethod getProperty(property, key) As %String [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
