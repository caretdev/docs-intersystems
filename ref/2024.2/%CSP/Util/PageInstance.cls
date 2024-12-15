/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Desribes an instance of an AutoPage.<BR>
/// This is a transient object that exists while an AutoPage is being rendered.
/// It describes the layout for an AutoPage.
/// It also provides a container for any page-related variables.
Class %CSP.Util.PageInstance Extends (%RegisteredObject, %XML.Adaptor) [ Inheritance = right, ServerOnly = 1, System = 4 ]
{

/// HTML Title displayed for this page.
Property Title As %String(MAXLEN = 50);

/// Name of CSP class hosting this page
Property PageClass As %String(MAXLEN = 128, XMLPROJECTION = "none");

/// An array of named Pane objects that describe the various panes for a page.
Property Panes As array Of Pane;

/// An array (integer-subscripted) of values use to identify
/// any objects used within a page (such as the ID for an object
/// or parameters for a query).<BR>
/// These are taken out of the incoming URL using the $IDn parameter.
Property IDValues As %String [ MultiDimensional ];

/// An array of page-directed variables, subscripted by
/// name and number (as a URL parameter is placed within the Request object).<BR>
/// These are taken out of the incoming URL query:
/// any value starting with $ is assumed to be a page variable.
Property PageVars As %String [ MultiDimensional ];

/// Canonical address used to find this page (e.g., "Home,Configuration").
Property Address As %String(MAXLEN = 200);

Method %OnNew(initval As %String) As %Status [ Private ]
{
}

/// Construct a link to another AutoPage
/// If pTargetFrame, this is a link for a specific frame
Method MakeLink(pURL As %String, ByRef pID As %String = "", ByRef pVARS As %String = "") As %String
{
}

/// Construct a link to a popup window
Method MakePopupLink(pURL As %String, ByRef pID As %String = "", ByRef pVARS As %String = "") As %String
{
}

/// Construct a link for a frame popup window
Method MakeFramePopupLink(pURL As %String, ByRef pID As %String = "", ByRef pVARS As %String = "") As %String
{
}

/// Construct a link for redirecting to an AutoPage with its page-related query.
/// This is used when you need to redirect a page (after a submit, for example).
Method MakeRedirectLink(pURL As %String, pSubmitBtn As %String = "") As %String
{
}

}
