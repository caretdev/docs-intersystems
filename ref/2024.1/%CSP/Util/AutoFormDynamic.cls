/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>This is a version of AutoForm that generates its dialog and forms <I>dynamically</I>,
/// that is, it calculates what properties to display at run-time using
/// the meta-information for the provided object.<br>
/// This is not as efficient as the generated case, but is useful for some
/// applications.
Class %CSP.Util.AutoFormDynamic Extends (%RegisteredObject, %CSP.Util.AutoForm) [ Inheritance = right, ServerOnly = 1, System = 4 ]
{

/// Draw an HTML table for an arbitary object.<br>
/// <var>pObj</var> is an instance of object that
/// provides the definition and values for the table.<br>
/// This table is dynamic in that the table to display is calculated at runtime.
ClassMethod DrawHTMLTable(pObj As %RegisteredObject, ByRef pID As %String) As %Status
{
}

/// Draw an HTML form for this form object.<br>
/// <var>pObj</var> is an instance of the form object that
/// provides the initial values for the form.
ClassMethod DrawHTMLForm(pObj As %RegisteredObject, ByRef pID As %String, pActionURL As %String = "", ByRef pButtons As FormButton, pTarget As %String = "") As %Status
{
}

ClassMethod Submit(pRequest As %CSP.Request, pSubmit As %String) As %Status
{
}

/// Takes submitted data for a form and returns an instance of AutoForm object
ClassMethod ProcessSubmit(pRequest As %CSP.Request, ByRef pID As %String = "", Output pErrorMsg As %String, pPersistentOnly As %Boolean = 1) As AutoForm
{
}

}
