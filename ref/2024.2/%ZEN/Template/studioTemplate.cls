/// Base class for Zen-based Studio Templates.<br>
/// Zen-based Studio Templates extend this class.
Class %ZEN.Template.studioTemplate Extends %ZEN.Component.page [ Abstract, Deprecated, System = 4 ]
{

/// Users must have %Development:USE to access any Studio templates.
Parameter RESOURCE = "%Development:USE";

/// Do not use AutoLogout logic for template pages.
Parameter AUTOLOGOUT = 0;

/// Prevent IE issues with non-UTF8 char-sets.
Parameter CHARSET = "UTF-8";

Parameter VALIDATEXML = 0;

/// This projection is used to keep track of when this page is
/// compiled or uncompiled. In this case, this notifies the
/// Studio Template Manager about the existence of this template.
/// Name of the template to show in Studio.<br>
/// If <parameter>DOMAIN</parameter> is defined this will be localized.
Parameter TEMPLATENAME As STRING;

/// If auto-switch namespace to whatever $NAMESPACE is passed in
Parameter AUTONS = 1;

/// Title of the template to show in the template window.
Parameter TEMPLATETITLE As STRING;

/// Short description of the template to show in Studio.<br>
/// If <parameter>DOMAIN</parameter> is defined this will be localized.
Parameter TEMPLATEDESCRIPTION As STRING;

/// Comma separated list of 'CSP', 'CSR', 'MAC', 'INT', 'INC',
/// 'BAS', 'CLS' to say what type of code this template
/// generates; CSP, CSR, Routine, or Class code.
/// You can also specify '*' for all types.
Parameter TEMPLATETYPE As STRING = "*";

/// Accelerator key for this template in Studio, 0-9.<br>
/// User will press Ctrl+Shift+key to activate.
Parameter TEMPLATEACCELERATOR As STRING [ Constraint = ",0,1,2,3,4,5,6,7,8,9", Flags = ENUM ];

/// Set this true (1) if this template does not generate any
/// output, only applies to 'template' types but it prevents
/// Studio from needing to make the current file writable.
Parameter TEMPLATENOOUTPUT As BOOLEAN = 0;

/// DOCBOOK Topic Id that offers help for this template.
Parameter HELPID As STRING;

/// Specifies what type of template this is: 'template', 'new', or 'addin'.
/// 'template' is the default and this
/// creates code that is inserted into the current document,
/// 'new' is a template that appears on the dialog when you
/// click the new button, 'addin' is a template that appears
/// on the addin menu which does not generate any output.
Parameter TEMPLATEMODE As STRING [ Constraint = ",template,new,addin", Flags = ENUM ] = "template";

/// If this is a TEMPLATEMODE="new" then this is the name of the tab
/// in Studio this template is dispayed on. If none specified then
/// it displays on 'Custom' tab.
Parameter TEMPLATEGROUP As STRING;

/// If this is true then even if this template is tied to a specific namespace it
/// will be available in any namespace and it will be up to the template to make sure
/// it looks for any specific data in the target namespace.
Parameter GLOBALTEMPLATE As BOOLEAN = 1;

/// Internal value used for communication back to Studio.
Parameter DELIM [ Final, Internal ] = "##www.intersystems.com:template_delimiter##";

/// Current project within Studio.
Property Project As %ZEN.Datatype.string(ZENURL = "Project");

/// Name of current document within Studio.
Property DocumentName As %ZEN.Datatype.string(ZENURL = "Name");

/// Current selected text within Studio.
Property SelectedText As %ZEN.Datatype.string(ZENURL = "SelectedText");

/// Current namespace within Studio.
Property Namespace As %ZEN.Datatype.string(ZENURL = "Namespace");

/// Current user within Studio.
Property User As %ZEN.Datatype.string(ZENURL = "User");

/// Current language within Studio (e.g., "cache").
Property Language As %ZEN.Datatype.string(ZENURL = "Language");

/// Namespace of current document within Studio.
Property DocumentNamespace As %ZEN.Datatype.string(ZENURL = "DocumentNamespace");

/// DocBook topic id used to show help for this template.
Property helpId As %ZEN.Datatype.string [ InitialExpression = {..#HELPID} ];

XData CSS3Style
{
}

/// The standard template has three main divs: header,body, and footer.
/// Subclasses typically place their content within the body div (pane).
XData Style
{
}

/// Contents of standard template page;
/// Subclasses can override this if they wish or
/// (more typically) implement the "body" pane with the desired content.
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Provide HTML for standard template html title box.
Method %DrawTitle(pSeed As %String) As %Status
{
}

/// Localize the name and description for this template.
ClassMethod LocalizeName(id As %String, ByRef name As %String, ByRef description As %String) As %Status [ CodeMode = objectgenerator ]
{
}

/// Return false from this method to disable this template (for example based on the server platform)
ClassMethod IsEnabled() As %Boolean
{
}

/// Close the template window.
ClientMethod cancelTemplate() [ Language = javascript ]
{
}

/// Finish the template: fire the template action code
ClientMethod finishTemplate() [ Language = javascript ]
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

/// Validate that the given class name is valid.<br>
/// Returns an error message if invalid.
Method IsValidClassName(pCls As %String) As %String [ ZenMethod ]
{
}

ClassMethod %OnSubmit(pSubmit As %ZEN.Submit) As %Status
{
}

/// This method is called when the template is complete. Any
/// output to the principal device is returned to the Studio.
/// This is implemented by subclasses.
Method %OnTemplateAction() As %Status
{
}

/// Add this named item to the current project in Studio. If you have multiple items
/// then call this method multiple times. The <var>Name</var> must contain the type of
/// the item e.g. 'User.Test.cls' is a class, and 'TEST.mac' is a MAC routine.
ClassMethod %AddToProject(Name As %String) As %Status
{
}

/// Add this item to source control. If you have multiple items then call this method
/// multiple times. The <var>Name</var> must contain the type of the item to add e.g.
/// 'User.Test.cls'.
ClassMethod %AddToSourceControl(Name As %String) As %Status
{
}

/// If you are making a new class template then Studio needs to be told the
/// name of this class. This is done by calling this method in the final
/// page passing the name of the class.
ClassMethod %SetClassName(Name As %String) As %Status
{
}

/// Internal method to output the start of the XML data section
ClassMethod %TemplateHeader()
{
}

Method %OnDrawHTMLMeta() As %Status
{
}

/// Render the contents of this ZEN page.
ClassMethod OnPage() As %Status
{
}

/// Make sure template runs in correct namespace.
ClassMethod OnPreHTTP() As %Boolean
{
}

/// Make sure template generates correct format output.
ClassMethod OnHTTPHeader(ByRef OutputBody As %Boolean) As %Status
{
}

/// For final page, make sure we send the correct info to the Studio.
ClassMethod OnPostHTTP()
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

/// This client event, if present, is fired when the page
/// is first loaded or whenever it is resized.<br>
/// If this is called at load time, then <var>load</var> will
/// be true.
ClientMethod onlayoutHandler(load) [ Language = javascript ]
{
}

/// Adjust size and position of components on this page.
ClientMethod adjustSize() [ Language = javascript ]
{
}

}
