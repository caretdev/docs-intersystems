/// Studio Template.<br>
/// The XML Schema Wizard reads an XML schema and creates a set of corresponding classes.
Class %ZEN.Template.AddInWizard.XMLSchemaWizard Extends %ZEN.Template.AddInWizard.Template [ Deprecated, System = 4 ]
{

Parameter TEMPLATENAME = "XML Schema Wizard";

Parameter TEMPLATETITLE = "XML Schema Wizard";

Parameter TEMPLATETYPE = "cls";

Parameter TEMPLATEDESCRIPTION = "Creates class definitions from an XML Schema file.";

/// Display title of this page <title></title>
Parameter PAGETITLE = "XML Schema Wizard";

Parameter HELPID = "GXML_schema_wizard_ui";

/// Only display a preview of imports under 2Mb to prevent crashes
Parameter MAXPREVIEW = 2097152;

Property Multiple As %ZEN.Datatype.boolean;

/// Number of total Namespaces which is the same as total packages
Property TotalPackages As %ZEN.Datatype.integer;

/// String that contains package names delimited by comma.
Property Packages As %ZEN.Datatype.string;

Property lblSchemaFile As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Enter or select the path and name of a Schema File:")} ];

Property lblURL As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Enter a URL:")} ];

XData CSS3Style
{
}

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of the body pane of this Studio Template.
XData templateBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// User changed file type. Change label. Show local FILENAME if it is a local server. OW show filename and browse button.
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

ClientMethod changePersistent(flag) [ Language = javascript ]
{
}

/// Load the recently used url into textbox
ClientMethod updateURL(url) [ Language = javascript ]
{
}

/// Load the recently used file into textbox
ClientMethod updateFile(file) [ Language = javascript ]
{
}

/// Load the recent list. Set last file type so that onstartHandler can hide/show fields appropriately.
Method %OnAfterCreatePage() As %Status
{
}

/// Get recent list for URLs or Files. filetype = "FILE" or "URL".
ClassMethod GetRecentList(filetype) As %String [ ZenMethod ]
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

/// Validate and return packages string. If a package name is empty, display message and return 0.
ClientMethod getPackages() [ Language = javascript ]
{
}

/// Go through the Type values (radio buttons) for all classes
ClientMethod getTypeValues() [ Language = javascript ]
{
}

/// Go through the Index values (checkboxes) for each class. Return index names that are checked.
ClientMethod getIndexValues(n) [ Language = javascript ]
{
}

/// Go to the previous page of the template (if there is one).<br>
/// This is implemented by subclasses.
ClientMethod previousPage() [ Language = javascript ]
{
}

ClassMethod DrawPageTitle(pSeed As %String) As %Status
{
}

/// This method is fired up after onDrawContent is finished. Hide progress message and display error if exists.
ClientMethod drawDone(tab) [ Language = javascript ]
{
}

/// Given the source and filename, load the file.
/// Save the source and filename to %session.Data.
ClassMethod GetSRC(filetype As %String, filename As %String, sslConfig As %String = "") As %String [ ZenMethod ]
{
}

/// FileType is either "FILE" or "URL".
ClassMethod SaveLast(filetype, url, sslConfig = "") As %Boolean [ ZenMethod ]
{
}

/// Check if file exists
ClassMethod FileExists(filename) As %Boolean [ ZenMethod ]
{
}

/// For page 3, do preprocess to find out whether it is multiple
ClassMethod PreProcess(proxy As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

/// Draw page 3, namespaces
ClassMethod DrawNS(proxy As %ZEN.proxyObject) As %Status
{
}

/// tab = 3: NS - when DrawNS is finished, Status is "Done".
/// tab = 4: Classes - when DrawClasses is finished, Status is "Done".
ClassMethod GetStatus(tab) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Draw page 4, Classes
ClassMethod DrawClasses(proxy As %ZEN.proxyObject) As %Status
{
}

/// Draw page 5, Saving Classes
ClassMethod DrawSaving(proxy As %ZEN.proxyObject) As %Status
{
}

/// This client event, if present, is fired when the page is resized.
ClientMethod onresizeHandler() [ Language = javascript ]
{
}

/// Zen page notification of an HTTP request. This method can be overwritten
/// by subclasses.<br/>
/// This is called <em>before</em> the standard Zen pre-HTTP processing occurs.
ClassMethod %OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

/// This method is called when the template is complete. Any
/// output to the principal device is returned to the Studio.<br/>
/// (1) adding classes to the project;
/// (2) classes may be opened if Studio's option "Open file to added project" is checked.
Method %OnTemplateAction() As %Status
{
}

}
