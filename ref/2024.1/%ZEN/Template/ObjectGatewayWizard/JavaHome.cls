/// Studio Template.<br>
/// Wizard to help you import a class file or a jar file from Java and create a set of corresponding classes.
Class %ZEN.Template.ObjectGatewayWizard.JavaHome Extends %ZEN.Template.ObjectGatewayWizard.Template [ Deprecated, System = 4 ]
{

Parameter TEMPLATENAME = "Java Gateway Wizard";

Parameter TEMPLATETITLE = "Java Gateway Wizard";

Parameter TEMPLATEDESCRIPTION = "Import a class file or a jar file from Java.";

/// Display title of this page <title></title>
Parameter PAGETITLE = "Java Gateway Wizard";

Parameter HELPID = "EJVG_instructions_wizard";

Property lblFile1 As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Enter the path and name of the Jar file:")} ];

Property lblFile2 As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Enter a fully qualified class name:")} ];

/// Tab number when Finish is clicked. This dictate which tab to return to when Back is clicked from the Done page.
Property lastTab As %ZEN.Datatype.string;

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of the body pane of this Studio Template.
XData templateBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User changed file type. Change label.
ClientMethod changedFileType(thisObj) [ Language = javascript ]
{
}

/// Launching a file selector window.
ClientMethod doBrowse() [ Language = javascript ]
{
}

/// Returning from file select OR qualifers dialog and setting the value into the appropriate field.
/// The id of the field that needs to be updated is saved in "dialogClicked".
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// This method is called when the template is complete.
/// It adds classes to the project, allows classes to be added to source control, and cleans up some session data
Method %OnTemplateAction() As %Status
{
}

/// Return true if this template can go to the next page (i.e., enable
/// the Next button).<br>
ClientMethod canGoNext() [ Language = javascript ]
{
}

/// Return true if this template can go to the previous page (i.e., enable
/// the Back button).<br>
/// This is implemented by subclasses.
ClientMethod canGoBack() [ Language = javascript ]
{
}

/// Return true if this template can Finish (i.e., enable
/// the Finish button).<br>
ClientMethod canFinish() [ Language = javascript ]
{
}

/// Validation handler for form built-into template.
ClientMethod formValidationHandler() [ Language = javascript ]
{
}

/// User clicked the Finish button. Start Import.
ClientMethod finishTemplate() [ Language = javascript ]
{
}

/// This is called when the template is first displayed;
/// This provides a chance to set focus etc.
ClientMethod onstartHandler() [ Language = javascript ]
{
}

ClientMethod hasMultiplePages() [ Language = javascript ]
{
}

/// Go to the next page of the template (if there is one).<br>
ClientMethod nextPage() [ Language = javascript ]
{
}

/// If file exists, load table based on the jar file entered.
ClientMethod loadTable() As %Boolean [ Language = javascript ]
{
}

/// Go to the previous page of the template (if there is one).<br>
/// This is implemented by subclasses.
ClientMethod previousPage() [ Language = javascript ]
{
}

/// Return true if at least one selection is made.
ClientMethod hasSelected() [ Language = javascript ]
{
}

/// User checked a checkbox in a row in the table. Show the location and update Finish button.
ClientMethod rowChecked(table) [ Language = javascript ]
{
}

/// Set the selected rows into %session data for the result page
/// Save all relevant values.
Method SetSelected(selectedRows As %String, FileType As %String = "j", FileName As %String, Host As %String, Port As %String, Classpaths As %String, Excludes As %String) As %Boolean [ ZenMethod ]
{
}

/// Check if file user entered exists.
ClassMethod FileExists(filename) As %Boolean [ ZenMethod ]
{
}

/// Check if server and port is running and responsive
ClassMethod CheckGateway(pServer, pPort) As %Boolean [ ZenMethod ]
{
}

/// Return false from this method to disable this template (for example based on the server platform)
ClassMethod IsEnabled() As %Boolean
{
}

}
