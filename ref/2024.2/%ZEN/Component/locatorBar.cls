/// This component displays a locator bar; a set of links
/// displayed along the top of a page to indicate where the page
/// is located within the application.
Class %ZEN.Component.locatorBar Extends component [ Deprecated, System = 3 ]
{

/// List of link objects.<br>
/// Each object specifies a link displayed in the locator bar.
Property links As list Of %ZEN.Auxiliary.locatorLink(XMLPROJECTION = "ELEMENT", XMLREF = 1, XMLTYPECONSTRAINT = "CHOICE");

/// Optional.
/// Name of Server-side callback method that returns an array
/// of quick links. The array is of the form:<br>
/// pLink("caption")=url<br>
/// If provided, these are displayed in a dropdown list at the edge
/// of the locator bar.<br>
/// This must be the name of a server-only method in the page
/// class that contains this view component.
Property OnGetQuickLinks As %ZEN.Datatype.delegator(FORMALSPEC = "*links:%ZEN.Datatype.string", RETURNTYPE = "%Status");

/// Optional.
/// User-defined seed value. This is an optional parameter that
/// is passed on to the <method>OnDrawBar</method> callback
/// method.<br>
Property seed As %ZEN.Datatype.string(ZENEXPRESSION = 1);

/// Optional.
/// Name of Server-side callback method that will inject additional
/// content into the center of the locator bar.<br>
/// If defined, this callback is invoked on the server when this
/// component is drawn. It provides HTML content by using &html or
/// by using the WRITE command.<br>
/// This must be the name of a server-only method in the page
/// class that contains this component.
Property OnDrawBar As %ZEN.Datatype.delegator(FORMALSPEC = "seed:%ZEN.Datatype.string", RETURNTYPE = "%Status");

/// defines style sheet used by this component
XData Style
{
}

/// Static HTML display method
Method %DrawHTML()
{
}

/// Invoke user method to get the list of quick links, if any.
Method %GetQuickLinks(Output pLinks) As %Status [ Internal ]
{
}

/// Invoke user method to inject HTML contents into the
/// bar.
Method %DrawContent() As %Status [ Internal ]
{
}

/// This client method, if present, is fired when the object is updated from the server.
ClientMethod onupdateHandler() [ Language = javascript ]
{
}

}
