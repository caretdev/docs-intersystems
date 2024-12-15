/// Button control.<br>
/// This is a wrapper around the HTML input=button control.<br>
/// The text displayed within the button is defined by the <property>caption</property> property.
/// Typically an application will set the <property>onclick</property> property
/// (inherited from the <class>control</class>) of the button to
/// a JavaScript expression that is executed when the user clicks the button.
Class %ZEN.Component.button Extends control [ Deprecated, System = 3 ]
{

Parameter DEFAULTCONTROLCLASS = "button";

/// Caption displayed for this button.<br>
/// This is a localized value.
Property caption As %ZEN.Datatype.caption(ZENEXPRESSION = 1);

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

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
