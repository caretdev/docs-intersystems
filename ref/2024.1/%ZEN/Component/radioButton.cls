/// radio button control.<br>
/// This provides a wrapper around the HTML input=radio control with
/// some enhanced capabilities.
Class %ZEN.Component.radioButton Extends control [ Deprecated, System = 3 ]
{

Parameter DEFAULTCONTROLCLASS = "radio";

/// Additional caption displayed next to actual radio button.<br>
/// This is a localized value.
Property caption As %ZEN.Datatype.caption(ZENEXPRESSION = 1);

/// CSS class to apply to the control's caption.
Property captionClass As %ZEN.Datatype.cssClass [ InitialExpression = "radioButtonCaption" ];

/// Defines the value associated with this specific radio button.
/// This is in contrast with the <property>value</property> which
/// defines the value of the entire set of radio buttons.
Property optionValue As %ZEN.Datatype.value(ZENEXPRESSION = 1);

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// Setting value of any radio button, sets value for
/// other buttons in the same group.
Method valueSet(%val) As %Status
{
}

/// This method fills in reasonable default values for
/// this control. Used by tools (such as Control Tester) to
/// dynamically create controls.
Method %SetDefaultValues()
{
}

/// User click on radio button.
ClientMethod clickButton() [ Language = javascript ]
{
}

/// User click on caption for radio button; select this button.
ClientMethod clickCaption() [ Language = javascript ]
{
}

/// Override to get current value of control.
ClientMethod getProperty(property, key) As %String [ Language = javascript ]
{
}

/// Set the value of a named property.<br>
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Make sure serialization does not mess with our value.
ClientMethod onSerialize() [ Language = javascript ]
{
}

}
