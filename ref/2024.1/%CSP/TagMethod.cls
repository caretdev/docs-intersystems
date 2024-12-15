/// Implement SCRIPT LANGUAGE=CACHE METHOD= tag.
Class %CSP.TagMethod Extends %CSP.Rule [ System = 3 ]
{

/// Create a new method based on the children of this script tag.
Method CreateMethod(name As %String, language As %String, classmethod As %Boolean = 1, procedureblock As %Boolean = "") As %Status [ Internal ]
{
}

/// Writes code into the routine builder object to render the
/// script tag.
Method RenderStartTag() As %Status
{
}

}
