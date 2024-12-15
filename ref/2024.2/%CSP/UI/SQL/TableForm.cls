/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Create New Table
Class %CSP.UI.SQL.TableForm Extends (%RegisteredObject, %CSP.Util.AutoForm) [ Inheritance = right, System = 4 ]
{

/// Schema
Property SchemaName As %String;

/// Table Name
Property TableName As %String(MAXLEN = 30);

/// Number of Columns
Property NumberOfColumns As %Integer;

/// Draw an HTML form for this form object.<BR>
/// <var>pObj</var> is an instance of the form object that
/// provides the initial values for the form.<BR>
/// <var>pActionURL</var> is the URL to submit this form to.<BR>
/// <var>pButtons</var> is an array of submit buttons to display for the form. If
/// not provided, the default <I>Save</I> and <I>Cancel</I> buttons are shown.
/// <var>pButtons</var> is an integer-subscripted array of <class>FormButton</class> objects.
ClassMethod DrawHTMLForm(pObj As %RegisteredObject, ByRef pID As %String, pActionURL As %String = "", ByRef pButtons As FormButton, pTarget As %String = "") As %Status [ CodeMode = objectgenerator ]
{
}

ClassMethod CreateInstance(ByRef pID As %String) As AutoForm
{
}

Method OnSubmit(ByRef pID As %String, pSubmit As %String) As %Status
{
}

/// define standard Login buttons
ClassMethod OnDefineButtons(ByRef pButtons As FormButton)
{
}

}
