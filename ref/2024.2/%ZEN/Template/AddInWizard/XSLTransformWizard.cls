/// Studio Template.<br>
/// The XSL Transform Wizard transforms an XML file using the specified XSL stylesheet.<br>
Class %ZEN.Template.AddInWizard.XSLTransformWizard Extends %ZEN.Template.AddInWizard.Template [ Deprecated, System = 4 ]
{

Parameter TEMPLATENAME = "XSL Transform Wizard";

Parameter TEMPLATETITLE = "XSL Transform Wizard";

Parameter TEMPLATEDESCRIPTION = "transforms an XML file using the specified XSL stylesheet";

/// Display title of this page <title></title>
Parameter PAGETITLE = "XSL Transform Wizard";

Parameter HELPID = "GXML_xslt_wizard";

Property Multiple As %ZEN.Datatype.boolean;

/// Number of total Namespaces which is the same as total packages
Property TotalPackages As %ZEN.Datatype.integer;

/// String that contains package names delimited by comma.
Property Packages As %ZEN.Datatype.string;

/// Text field name that user last clicked Browse on.
Property BrowseField As %String;

/// This XML block defines the contents of the body pane of this Studio Template.
XData templateBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Reload HelperClass valueList when user changed namespace
ClientMethod changeHelper(ctl) [ Language = javascript ]
{
}

/// Launching a file selector window.
ClientMethod doBrowse(fieldName) [ Language = javascript ]
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

ClientMethod hasMultiplePages() [ Language = javascript ]
{
}

/// Go to the next page of the template (if there is one).<br>
ClientMethod nextPage() [ Language = javascript ]
{
}

ClientMethod showMsg(msg) [ Language = javascript ]
{
}

ClientMethod resetMsg() [ Language = javascript ]
{
}

ClassMethod DrawPageTitle(pSeed As %String) As %Status
{
}

ClientMethod validate(xmlfile, xslfile) [ Language = javascript ]
{
}

/// Validate; call Transform and show result; save user input.
ClientMethod onfinishHandler() [ Language = javascript ]
{
}

/// Taken user's input and process transform.
ClassMethod DoTransform(xmlfile, xslfile, namespace, helper, renderas) As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Save user input.
ClassMethod SaveLast(xmlfile, xslfile, namespace, helper, renderas) [ ZenMethod ]
{
}

/// Actual code to call transform code on server
ClassMethod Transform(xmlfile, xslfile, helperclass, namespace, results) As %String
{
}

/// Load helper class list per namespace selected.
Method LoadHelperClassList(Namespace) As %String [ ZenMethod ]
{
}

/// Validate file name: cannot be null, and must exists.
ClassMethod ValidateFile(FILE, FILETYPE) As %String [ ZenMethod ]
{
}

}
