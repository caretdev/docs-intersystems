/// The <b>%CSP.Document</b> class is the server-side representation of a CSP page.
Class %CSP.Document Extends %CSP.Rule [ Not ProcedureBlock, System = 3 ]
{

/// Deprecated property for #server that is kept for compatibility.
/// Now has the same effect as NeedJS property.
/// If true, JavaScript for #server applet HyperEvent should included in the CSP page.
Property NeedBroker As %Boolean [ Deprecated, InitialExpression = 0 ];

/// Deprecated property for #call that is kept for compatibility.
/// Now has the same effect as NeedJS property.
/// If true, JavaScript for #call iframe  HyperEventshould included in the CSP page.
Property NeedJSBroker As %Boolean [ Deprecated, InitialExpression = 0 ];

/// If true, JavaScript for HyperEvent should included in the CSP page.
Property NeedJS As %Boolean [ InitialExpression = 0 ];

/// Make sure that we are cleaned up.
Method %OnClose() As %Status
{
}

/// The document tag for CSP acts to compile this document to a
/// class that will render it on demand.
Method RenderStartTag() As %Status
{
}

/// The document tag for CSP acts to compile this document.
/// Finish building the class and cleanup.
Method RenderEndTag() As %Status
{
}

/// Process all sections of this CSP or CSR class.
Method ProcessSection(section As %CSP.PageSection, handle As %String, methodname As %String) As %Status [ Internal ]
{
}

/// This method parses a line, and return the changes in curly brace level.
/// This method does not handle multi-line comment yet.
Method cbdelta(line) As %Integer [ Internal, Private ]
{
}

/// This method scans a line and returns the change
/// in indent level for this line.  This line's indent
/// may only be changed by leading left curly brace,
/// otherwise the indent is adjusted on the next line.
Method indentdelta(line As %String) As %Integer [ Internal, Private ]
{
}

/// Add method for section or part of a section
ClassMethod AddSectionMethod(handle As %String, name As %String, return As %String = "%Boolean", args As %String = "", language As %String = "") As %Status [ Internal ]
{
}

/// Insert event broker code into the head section to load hyperevent .js files.
Method AddEventBroker() As %Status [ ProcedureBlock = 1 ]
{
}

}
