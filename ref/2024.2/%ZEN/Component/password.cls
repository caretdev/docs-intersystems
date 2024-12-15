/// Simple password input control.<br>
/// This is a simple wrapper around the HTML input=password control.
Class %ZEN.Component.password Extends text [ Deprecated, System = 3 ]
{

Parameter DEFAULTCONTROLCLASS = "password";

/// This attribute indicates how the value of the control can be automatically completed by the browser.
Property autocomplete As %ZEN.Datatype.string [ InitialExpression = "new-password" ];

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

}
