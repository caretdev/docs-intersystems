/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Describes a particular pane within an AutoPage.
/// This is an abstract class; its subclasses perform the real work.
Class %CSP.Util.Pane Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right, ServerOnly = 1, System = 4 ]
{

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

Parameter XMLNAME = "Pane";

/// Transient: name of the pane/frame this pane is being used for
Property Name As %String(MAXLEN = 100, XMLPROJECTION = "none");

/// Test for this pane.
/// All panes include this property.
Property Text As %String(MAXLEN = 500);

/// Optional URL to display instead of this pane (for frame-pages)
Property URL As %String(MAXLEN = 256, XMLNAME = "url", XMLPROJECTION = "element");

/// Optional Style Sheet for a pane; Set to "none" to supress style-sheet for a fram
Property FrameStyle As %String(MAXLEN = 50, XMLNAME = "FrameStyle");

/// Arbitrary array of styles (name/value pairs).
/// All panes include this property.
Property Styles As array Of %String(XMLKEYNAME = "name", XMLNAME = "PaneStyle", XMLPROJECTION = "ELEMENT");

/// A list of commands; these are actions that
/// are typically displayed along the top of the pane.
Property Commands As list Of Action;

/// Name of class used to provide an option CommandForm: a form
/// containing command buttons.<br>
/// Note: there is no support for dynamic command forms.
Property CommandFormClass As %String(MAXLEN = 128);

/// Used to hold the object instance for the command form.
Property CommandFormObject As %RegisteredObject(XMLPROJECTION = "none");

/// Page (URL) to go to when the command form is submitted.
Property CommandSubmitPage As %String(MAXLEN = 128);

/// Suggestion for how to align this pane; Actual implementation is up
/// to the subclass doing the rendering
Property Align As %String(MAXLEN = 10, VALUELIST = ",left,right,center");

/// Overwritten by subclasses to draw anything this pane needs for the HEAD section.
Method DrawHEAD(pInstance As PageInstance) As %Status
{
}

/// Overwritten by subclasses to draw anything this pane needs for the BODY section.
Method DrawBODY(pInstance As PageInstance) As %Status
{
}

/// Generic method to draw a command form for a pane
Method DrawCommandForm(pInstance As PageInstance) As %Status
{
}

/// Generic method to draw commands for a pane;
/// A subclass can override this.
Method DrawCommands(pInstance As PageInstance) As %Status
{
}

/// Return a quoted, COS version of a string.
ClassMethod QuoteCOS(pText As %String) As %String [ CodeMode = expression, ServerOnly = 1 ]
{
}

/// Called by CSP rules engine to generate code to construct an instance
/// of this object using the current instance as a template.
Method GenerateCode() As %String
{
}

/// Subclasses override this to generate code during CSP processing
Method OnGenerateCode() As %String
{
}

/// Return the localized version of the string <var>pText</var>.
/// A localizable string starts with "@[domainname:]textid@....."
/// If domainname exists then use it ;
/// Else if pDomain passed in then use it ;
/// Else default to %Utility.
/// Also, substitute any run-time expressions of
/// the form {$ID1} with Page variables...
ClassMethod LocalizeText(pText As %String, pDomain As %String = "%Utility") As %String
{
}

}
