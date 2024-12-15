/// The <b>%CSP.TextAtom</b> class represents a section of text within an HTML document.
/// <b>%CSP.TextAtom</b> has no properties other than HTML text.
Class %CSP.TextAtom Extends %CSP.AbstractAtom [ Not ProcedureBlock, System = 3 ]
{

/// A flag indicating if this test is comment or not.
/// For comment, embedded expressions will not be translated.
Property IsComment As %Boolean;

/// A string containing the text for this element.
Property Text As %String;

/// Initialize text in the atom
Method %OnNew(initval As %String = "") As %Status [ Internal, Private ]
{
}

/// Writes code into the routine builder object that will render this element.
Method RenderStartTag() As %Status
{
}

}
