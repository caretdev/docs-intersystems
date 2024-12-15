/// Studio Template.<br>
/// The SOAP Wizard reads a WSDL (<i>Web Services Description Language</i>) document and creates one or more SOAP client or service classes.<br>
/// Each SOAP Client class contains one or more methods that, when invoked, remotely call the corresponding Web Method of the Web Service.<br>
/// Each SOAP Service class contains one or more methods that may be remotely invoked.
Class %ZEN.Template.AddInWizard.SOAPWizard Extends %ZEN.Template.AddInWizard.Template [ Deprecated, System = 4 ]
{

Parameter TEMPLATENAME = "SOAP Wizard";

Parameter TEMPLATETITLE = "SOAP Wizard";

Parameter TEMPLATETYPE = "cls";

Parameter TEMPLATEDESCRIPTION = "creates one or more SOAP client or service classes from a WSDL document.";

/// Display title of this page <title></title>
Parameter PAGETITLE = "SOAP Wizard";

Parameter HELPID = "GSOAP_soapwizard";

Property IsEnsemble As %ZEN.Datatype.boolean;

/// Internally reconstructed URL with user entered username and password.
/// This url will not be saved into recent list.
Property InternalURL As %String;

/// Internal username to be used for HTTP authentication.
Property InternalUsername As %String;

/// Internal password to be used for HTTP authentication.
Property InternalPassword As %String;

/// Number of total Namespaces which is the same as total packages
Property TotalPackages As %ZEN.Datatype.integer;

/// String that contains package names delimited by comma.
Property Packages As %ZEN.Datatype.string;

Property lblFile As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Enter the path and name of a WSDL File:")} ];

Property lblURL As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Enter a WSDL URL:")} ];

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

/// User typed in Username and Password. Re-construct url and try again.
ClientMethod doLogin() [ Language = javascript ]
{
}

/// User changed file type. Change label. Show filename and browse button if type is FILE.
ClientMethod changedFileType(thisObj) [ Language = javascript ]
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

/// User clicked "Create Business Operation". If it's checked default Class Type to Serial; Else default to Registered.
ClientMethod changeBusOp(ischecked) [ Language = javascript ]
{
}

/// User clicked class type radio button. Hide cascaded deltes check box if not persistent class type.
ClientMethod changeClassType(ischecked) [ Language = javascript ]
{
}

/// User clicked "Create Client for Web Service"
ClientMethod changeClient(ischecked) [ Language = javascript ]
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
/// This provides a chance to load the last filetype, etc.
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

/// this method is only called from SWT browser of Atelier
ClientMethod retrieveSoapClasses() [ Language = javascript ]
{
}

/// this method is only called from SWT browser of Atelier
ClientMethod ConfirmAddSoap() [ Language = javascript ]
{
}

/// this method is only called from SWT browser of Atelier
ClientMethod startMonitorFinishButton() [ Language = javascript ]
{
}

/// Validate and return packages string. If a package name is empty, display message and return 0.
ClientMethod getPackages() [ Language = javascript ]
{
}

ClientMethod showMsg(msg) [ Language = javascript ]
{
}

ClientMethod resetMsg() [ Language = javascript ]
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

ClassMethod %DrawErrNote(pSeed) As %Status
{
}

/// This method is fired up after onDrawContent is finished. Hide progress message and display error if exists.
ClientMethod drawDone(tab) [ Language = javascript ]
{
}

/// Given the url or file, load the file.
/// Save the url or file to ^ISC.SOAPClientWizard.
ClassMethod GetSRC(filetype As %String, url As %String, sslConfig As %String = "", sslCheckServerId As %Boolean, username As %String = "", password As %String = "") As %String [ ZenMethod ]
{
}

/// FileType is either "FILE" or "URL".
ClassMethod SaveLast(filetype, url, sslConfig = "", sslCheckServerId) [ ZenMethod ]
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
ClassMethod GetStatus(tab) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// class loading finished. Enable Finish button and hide progress message.
ClientMethod outputDone() [ Language = javascript ]
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
