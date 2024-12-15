/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Defines a submit button for an AutoForm form.
Class %CSP.Util.FormButton Extends (%SerialObject, %XML.Adaptor) [ Inheritance = right, ServerOnly = 1, System = 4 ]
{

Parameter XMLNAME = "Button";

/// Name used for a form submit button: e.g., $AUTOFORM_SAVE
Property Name As %String(MAXLEN = 30, XMLNAME = "name", XMLPROJECTION = "attribute");

/// What type of action does this button do: submit (default), popup (show a popup).
Property Type As %String(VALUELIST = ",popup", XMLNAME = "type", XMLPROJECTION = "attribute");

/// URL associated with this button (currently used for popup);
Property HREF As %String(MAXLEN = 128, XMLNAME = "href", XMLPROJECTION = "attribute");

/// Caption used for a form submit button (value attribute for the button)
Property Caption As %String(MAXLEN = 50, XMLNAME = "caption", XMLPROJECTION = "attribute");

/// If present, then display this as a confirmation message for the button.
Property Confirm As %String(MAXLEN = 100, XMLNAME = "confirm", XMLPROJECTION = "attribute");

/// If defined, onclick behavior (JavaScript) for this button
Property OnClick As %String(MAXLEN = 255, XMLNAME = "onclick", XMLPROJECTION = "attribute");

/// Utility method to generate code for this object
Method GenerateCode() As %String
{
}

}
