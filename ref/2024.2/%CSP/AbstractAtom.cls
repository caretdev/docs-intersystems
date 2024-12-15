/// The <b>CSPAtom</b> class represents a unit of an HTML document. A document consists
/// of two types of atom objects: <B>CSPTextAtom</B> and <B>CSPElement</B>.
Class %CSP.AbstractAtom Extends %RegisteredObject [ Abstract, Not ProcedureBlock, System = 3 ]
{

Property Parent As %CSP.AbstractAtom [ Transient ];

Property TagName As %String;

/// Writes code into the routine builder object that will render this element.
/// Called before children rendered.
Method RenderStartTag() As %Status
{
}

/// Writes code into the routine builder object that will render this element.
/// Called after children rendered.
Method RenderEndTag() As %Status
{
}

Method ValidateTag() As %Status
{
}

/// Generate Write command in CSP page class to write the
/// contents of line.
Method WriteText(line As %String, crlf As %Boolean = 0)
{
}

/// Generate Write command in CSP page class to write the
/// contents of line with processing of ##()## and #()#.
Method WriteCSPText(line As %String, crlf As %Boolean = 0)
{
}

/// Generate Write command in CSP page class to write the
/// the text returned by COS expression in expr.
Method WriteExpressionText(expr As %String, crlf As %Boolean = 0)
{
}

/// Generate COS command in CSP page class that is in line.
Method WriteServer(line As %String, keepTogether As %Boolean = 0)
{
}

/// Generate COS command in CSP page class that is in line
/// with ##()## resolved.
Method WriteCSPServer(line As %String, keepTogether As %Boolean = 0)
{
}

/// Add new default section to the top of the stack of section identifiers.
/// The section identifier is in the form <name>,<block number>.
Method PushDefaultSection(sectionblock As %String)
{
}

/// Pop default section from the top of the stack of section identifiers.
/// The section identifier is in the form <name>,<block number>.
Method PopDefaultSection()
{
}

}
