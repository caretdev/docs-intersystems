/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>This class provides a mechanism to automatically generate HTML forms (using CSP).
/// Subclasses of this class can automatically generate HTML forms and tables.
Class %CSP.Util.AutoForm [ Abstract, CompileAfter = %CSP.Util.AutoFormGenerator, ServerOnly = 1, System = 4 ]
{

/// Default domain for the Portal's localization.
Parameter DOMAIN = "%Utility";

/// If true (1) then this is a specialized type of form that only
/// displays submit buttons and no INPUT fields.
Parameter COMMANDFORM = 0;

/// Number of columns used to layout forms for this class
Parameter FORMCOLUMNS = 1;

/// Common expiration date used for cookies
/// Test if an AutoForm is being submitted
/// If so, process it and return the name of the submit button
/// or "" if there is not a submit.
/// For a AUTOFORM_CANCEL, return "$AUTOFORM_CANCEL" without processing...
ClassMethod DoSubmit() As %String
{
}

/// This method invokes a submit on the appropriate form class.
/// Do not call this method directly; use DoSubmit instead.
ClassMethod DispatchSubmit(pSubmit As %String) As %Status
{
}

/// Create an instance of the AutoForm object using the provided ID value(s).
/// This is overridden by subclasses.<br>
/// The default implementation will perform an OpenId if the AutoForm is a persistent object.
ClassMethod CreateInstance(ByRef pID As %String) As AutoForm [ CodeMode = objectgenerator ]
{
}

/// This callback is called when this form is submitted.
/// <var>pID</var> is the ID value associated with the form.
/// The default implementation will perform a Save if the AutoForm is a persistent object.<br>
/// <var>pSubmit</var> is the name of the submit button (i.e., $AUTOFORM_SAVE).
Method OnSubmit(ByRef pID As %String, pSubmit As %String) As %Status [ CodeMode = objectgenerator ]
{
}

/// Draw an HTML form for this form object.<br>
/// <var>pObj</var> is an instance of the form object that
/// provides the initial values for the form.<br>
/// <var>pActionURL</var> is the URL to submit this form to.<br>
/// <var>pButtons</var> is an array of submit buttons to display for the form. If
/// not provided, the default <I>Save</I> and <I>Cancel</I> buttons are shown.
/// <var>pButtons</var> is an integer-subscripted array of <class>FormButton</class> objects.
ClassMethod DrawHTMLForm(pObj As %RegisteredObject, ByRef pID As %String, pActionURL As %String = "", ByRef pButtons As FormButton, pTarget As %String = "") As %Status [ CodeMode = objectgenerator ]
{
}

/// Subclasses can override this to redefine the buttons for a form
ClassMethod OnDefineButtons(ByRef pButtons As FormButton) [ Abstract ]
{
}

/// Draw the buttons for a form...
ClassMethod DrawFormButtons(ByRef pButtons As FormButton)
{
}

/// Draw an HTML detail table for this form object.<br>
/// <var>pObj</var> is an instance of the form object that
/// provides the values for the table.
ClassMethod DrawHTMLTable(pObj As %RegisteredObject, ByRef pID As %String) As %Status [ CodeMode = objectgenerator ]
{
}

/// Construct an HTML string defining a combo box for the given query.<br>
/// <var>pName</var> is the name to use for the SELECT control.<br>
/// <var>pValue</var> is the current value of the property.<br>
/// Returns the HTML to display.<br>
ClassMethod GetComboBoxHTML(pValue As %String, pName As %String, pClass As %String, pQuery As %String, pCaptionColumn As %String, pValueColumn As %String = "", pP1 As %String = "", pP2 As %String = "", pP3 As %String = "") As %String
{
}

/// Called by the page handler when a form is submitted.<br>
/// <var>pSubmit</var> is the name of the submit button (i.e., $AUTOFORM_SAVE).
ClassMethod Submit(pRequest As %CSP.Request, pSubmit As %String) As %Status
{
}

/// Takes submitted data for a form and returns an instance of AutoForm object
ClassMethod ProcessSubmit(pRequest As %CSP.Request, ByRef pID As %String = "", Output pErrorMsg As %String) As AutoForm [ CodeMode = objectgenerator ]
{
}

/// Set a error message to be displayed within an AutoForm.
ClassMethod SetFormError(pMsg As %String)
{
}

/// Get error message to be displayed within an AutoForm.
ClassMethod GetFormError() As %String [ CodeMode = expression ]
{
}

}
