/// Wizard style template for System Management Portal.<br>
/// Zen-based SMP wizard dialogs with multiple pages extend this class.
Class %CSP.UI.Portal.Dialog.WizardTemplate Extends %CSP.Portal.standardDialog [ Abstract, System = 4 ]
{

/// If $NAMESPACE is set, auto switch namespace
Parameter AUTONS = 1;

/// Title of the template to show in the template window.
Parameter TEMPLATETITLE As STRING;

/// DOCBOOK Topic Id that offers help for this template.
Parameter HELPID As STRING;

/// DocBook topic id used to show help for this template.
Property helpId As %ZEN.Datatype.string [ InitialExpression = {..#HELPID} ];

/// The standard template has three main divs: header,body, and footer.
/// Subclasses typically place their content within the body div (pane).
XData Style
{
}

/// Contents of standard template page;
/// Subclasses can override this if they wish or
/// (more typically) implement the "body" pane with the desired content.
/// Contents of this page:
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Provide HTML for standard template html title box.
Method %DrawTitle(pSeed As %String) As %Status
{
}

/// Return false from this method to disable this template (for example based on the server platform)
ClassMethod IsEnabled() As %Boolean
{
}

/// Update the state of the template buttons.
/// Subclasses should call this method when they need to
/// update the state of the footer buttons.
ClientMethod updateState() [ Language = javascript ]
{
}

/// This is called when the template is first displayed;
/// This provides a chance to set focus etc.
ClientMethod onstartHandler() [ Language = javascript ]
{
}

/// This is called when the template is finished;
ClientMethod onfinishHandler() [ Language = javascript ]
{
}

/// Validation handler for form built-into template.
ClientMethod formValidationHandler() [ Language = javascript ]
{
}

/// Return true if this template has more than one "page".
/// This will display Back and Next buttons.
/// This is implemented by subclasses.
ClientMethod hasMultiplePages() [ Language = javascript ]
{
}

/// Return true if this template can Finish (i.e., enable
/// the Finish button).<br>
/// This is implemented by subclasses.
ClientMethod canFinish() [ Language = javascript ]
{
}

/// Return true if this template can go to the next page (i.e., enable
/// the Next button).<br>
/// This is implemented by subclasses.
ClientMethod canGoNext() [ Language = javascript ]
{
}

/// Return true if this template can go to the previous page (i.e., enable
/// the Back button).<br>
/// This is implemented by subclasses.
ClientMethod canGoBack() [ Language = javascript ]
{
}

/// Go to the next page of the template (if there is one).<br>
/// This is implemented by subclasses.
ClientMethod nextPage() [ Language = javascript ]
{
}

/// Go to the previous page of the template (if there is one).<br>
/// This is implemented by subclasses.
ClientMethod previousPage() [ Language = javascript ]
{
}

/// Show the help message for this template.
/// This opens a browser and goes to the DocBook application
/// using the value given by helpId.
ClientMethod showHelp() [ Language = javascript ]
{
}

/// Open a browser window to show documentation.
ClientMethod showDocumentation(topic) [ Language = javascript ]
{
}

/// This client event, if present, is fired when a keydown event occurs on the page.
ClientMethod onkeydownHandler(evt) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Validate the control value. pass is either "true" or "false" indicating if there is already a field that failed validation.
/// Type is "N" for numeric or "S" for string. If numeric, if checkRange is true, we additionally validate that the number is
/// between minVal and maxVal, inclusive.
ClientMethod validateRequired(ctl, pass, type, checkRange, minVal, maxVal) As %Boolean [ Language = javascript ]
{
}

}
