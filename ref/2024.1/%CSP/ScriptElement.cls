/// The <b>%CSP.ScriptElement</b> class is the class representing
/// unrecognized script tag in the DOM.
Class %CSP.ScriptElement Extends %CSP.Element [ Not ProcedureBlock, System = 3 ]
{

/// Indicates children are in a script tag and writes code into the
/// routine builder object that will do the default rendering for a begin tag.
Method RenderStartTag() As %Status
{
}

/// Resets script indicator and writes code into the routine builder
/// object that will do the default rendering for an end tag.
Method RenderEndTag() As %Status
{
}

}
