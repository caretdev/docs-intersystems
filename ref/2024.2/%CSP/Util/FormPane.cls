/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>A pane that contains an AutoForm object.
Class %CSP.Util.FormPane Extends Pane [ ServerOnly = 1, System = 4 ]
{

/// Name of class used to provide Detail or Form view;
Property FormClass As %String(MAXLEN = 128);

/// The object that provides the details to display.
Property FormObject As %RegisteredObject(XMLPROJECTION = "none");

/// Page (URL) to go to when a form is submitted.
Property SubmitPage As %String(MAXLEN = 128);

/// TARGET attribute for submitted form.
Property SubmitTarget As %String(MAXLEN = 128);

/// How to display this Form Page.
Property Display As %String(MAXLEN = 20, VALUELIST = ",form,table");

/// If true, display this form using the Dynamic form viewer.
Property Dynamic As %Boolean;

/// An optional list of buttons displayed along the bottom of a form.
Property Buttons As list Of FormButton(XMLITEMNAME = "Button");

/// Draw the BODY of the detail pane
Method DrawBODY(pInstance As PageInstance) As %Status
{
}

Method OnGenerateCode() As %String
{
}

}
