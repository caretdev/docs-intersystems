/// Simple label control.
/// A label passively displays a static text value.
/// The value of the label is submitted
/// along with other controls on a form.
Class %ZEN.Component.label Extends control [ Deprecated, System = 3 ]
{

Parameter DEFAULTCONTROLCLASS = "labelText";

/// defines style sheet used by this component
XData Style
{
}

/// Override to get current value of control.
ClientMethod getProperty(property, key) As %String [ Language = javascript ]
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

ClientMethod onSerialize() [ Language = javascript ]
{
}

}
