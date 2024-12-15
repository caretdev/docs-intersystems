/// %ZEN.hbutton
Class %ZEN.Component.hbutton Extends %ZEN.Component.control [ Deprecated, System = 3 ]
{

/// Button control.<br>
/// This is a wrapper around the HTML button element<br>
/// This button cannot be used in a form. It does support embedding legal entities such as URLs or Images<br>
/// Note that the content of this component is HTML and cannot
/// include ZEN components.<br>
/// The original content of this component can contain server-side
/// property expressions. These are placed within #( )#.
/// On the client, you can change the contents of the component
/// by setting its "content" property:
/// <example language=Javascript>
/// html.setProperty('content','<img src="/images/mybutton.gif"/>');
/// </example>
Parameter DEFAULTCONTROLCLASS = "button";

/// This Style block contains component-specific CSS style definitions.
XData Style
{
}

/// HTML content to display. This may contain simple expressions.
Property content As %ZEN.Datatype.html(CONTENT = "MIXED", ESCAPE = "HTML", XMLPROJECTION = "content", ZENEXPRESSION = 1);

/// Optional.
/// User-defined seed value. This is an optional parameter that
/// is passed on to the <method>OnDrawContent</method> callback
/// method.<br>
Property seed As %ZEN.Datatype.string(ZENEXPRESSION = 1);

/// Optional.
/// Name of Server-side callback method that provides HTML content
/// for this component.<br>
/// If defined, this callback is invoked on the server when this
/// component is drawn. It provides HTML content by using &html or
/// by using the WRITE command.<br>
/// This must be the name of a server-only method in the page
/// class that contains this view component.
Property OnDrawContent As %ZEN.Datatype.delegator(FORMALSPEC = "seed:%ZEN.Datatype.string", RETURNTYPE = "%Status");

/// The %DrawHTML method draws the initial HTML for this component.
Method %DrawHTML()
{
}

/// Convenient method for getting the content of this component.
/// This is equivalent to calling getProperty('content').
ClientMethod getContent(content) [ Language = javascript ]
{
}

/// Convenient method for setting the content of this component.
/// This is equivalent to calling setProperty('content',content).
ClientMethod setContent(content) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
