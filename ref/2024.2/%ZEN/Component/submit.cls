/// A submit button.<br>
/// A submit button must be placed within a form.<br>
/// When the user presses the submit button, the form is submitted.
/// The value of the <property>action</property> is passed along
/// to the server-side <method>%OnSubmit</method> method.
Class %ZEN.Component.submit Extends button [ Deprecated, System = 3 ]
{

/// This is the *action* code (a string) associated with this submit button.
/// By default, action is "submit". This value is passed along
/// to the server-side <method>%OnSubmit</method> method.
Property action As %ZEN.Datatype.string(MAXLEN = 250) [ InitialExpression = "submit" ];

/// If defined, the URL to go to <i>after</i> this form is submitted successfully.
/// This value, if defined, will override the <property>nextPage</property>
/// of the form.
Property nextPage As %ZEN.Datatype.uri;

Method %DrawHTML()
{
}

/// Internal onclick handler method for submit button.
/// Users should not call this method.
ClientMethod onclickHandler() [ Language = javascript ]
{
}

}
