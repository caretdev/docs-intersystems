/// Login Form component.<br>
/// This is a specialized type of form designed to be used in a login page.
/// Unlike the regular form component, this is a very simple object with none of the
/// more advanced form features that are inappropriate for a login page.<br/>
///
Class %ZEN.Component.loginForm Extends group [ Deprecated, System = 3 ]
{

Parameter SYSMODULE = "form";

Parameter DEFAULTGROUPCLASS = "form";

/// Default style for cells within forms
Parameter DEFAULTGROUPSTYLE = "padding: 5px;";

/// Specifies the enctype for the form.
/// (Refer to the HTML form element for details).
Property enctype As %ZEN.Datatype.string;

/// onsubmit event handler:
/// This event is fired when this form is about to be submitted.
/// It provides a chance to perform client-side validation of values
/// within the form. If this event handler returns false, then
/// the submit operation will not occur.<br>
/// Note that unlike the HTML onsubmit event, this callback is
/// <i>always</i> called when the form is submitted.
Property onsubmit As %ZEN.Datatype.eventHandler(HANDLER = "");

/// ondefault event handler:
/// This is a special event that is fired when the user performs
/// an action that triggers the default action for a form. Typically
/// this is when the user presses the Enter key within a control within
/// the form.
Property ondefault As %ZEN.Datatype.eventHandler(HANDLER = "");

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

ClientMethod handleKey(e) [ Language = javascript ]
{
}

/// This callback gives form subclasses a chance to add additional
/// hidden fields.
Method %OnDrawForm() As %Status [ CodeMode = expression ]
{
}

/// This callback ensures that CSRF tokens are set (if desired) in
/// any page employing this widget
Method %OnAddToPageAfter() As %Status
{
}

/// Return the HTML form element associated with this component.
/// This is provided in case there are addition HTML form properties
/// or methods that an application needs access to.
ClientMethod getFormElement() [ Language = javascript ]
{
}

/// Submit the HTML form associated with this component.
/// <var>action</var> if defined, is the action value that
/// is passed on to the server %OnSubmit callback method.
ClientMethod submit(action) [ Language = javascript ]
{
}

/// Reset the HTML form associated with this component.
ClientMethod reset() [ Language = javascript ]
{
}

/// Internal method.<br>
/// Onsubmit event handler. This is an internal method
/// used to trap the default action of the form.
ClientMethod submitHandler() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// In case a control thinks this is a normal form, indicate that there is no
/// data controller in play.
ClientMethod getController() [ Language = javascript ]
{
}

/// Internal method.<br>
/// This handler is called whenever the value of a control within
/// this form is changed by the user.
ClientMethod controlChangeHandler(control, fire) [ Internal, Language = javascript ]
{
}

}
