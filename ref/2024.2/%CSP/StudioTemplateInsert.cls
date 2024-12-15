/// The <CLASS>%CSP.StudioTemplateInsert</CLASS> outputs the template for CSP with certain
/// tags in front and at the end of the template so Studio can recognise
/// this template and insert it into the current document.<p>
/// This is automatically set as the superclass of the final page that generates the template
/// by the rule.<p>
/// Values can be returned to Studio by setting the %session.Data("Template") subnodes, for
/// example to set the name of the class for a new class wizard use:
/// <example>
/// Set %session.Data("Template","CLASS")="User.Test"
/// </example>
/// These %session.Data("Template") values must be set in the last page that generates the
/// actual template. We provide methods to set values into this %session.Data("Template") nodes
/// that Studio understands. These are <method>AddToProject</method> and <method>SetClassName</method>.
Class %CSP.StudioTemplateInsert Extends %CSP.StudioTemplateSuper [ Abstract, System = 3 ]
{

Parameter SECURITYRESOURCE = "%Development";

/// Error page for templates
Parameter ERRORPAGE [ Internal ] = "/csp/sys/%CSP.StudioTemplateError.cls";

/// Delimits user template output
Parameter DELIM [ Internal ] = "##www.intersystems.com:template_delimiter##";

/// Internal method to output the start of the XML data section
ClassMethod TemplateHeader() [ Internal ]
{
}

/// Write end of template output
ClassMethod OnPostHTTP() [ Internal ]
{
}

/// Use OnHTTPHeader set content type, handle namespace write HTTP headers and begin XML.
ClassMethod OnHTTPHeader(ByRef OutputBody As %Boolean) As %Status [ Internal ]
{
}

/// Add this named item to the current project in Studio. If you have multiple items
/// then call this method multiple times. The <var>Name</var> must contain the type of
/// the item e.g. 'User.Test.cls' is a class, and 'TEST.mac' is a MAC routine.
ClassMethod AddToProject(Name As %String) As %Status
{
}

/// Add this item to source control. If you have multiple items then call this method
/// multiple times. The <var>Name</var> must containt eh type of the item to add e.g.
/// 'User.Test.cls'.
ClassMethod AddToSourceControl(Name As %String) As %Status
{
}

/// If you are making a new class template then Studio needs to be told the
/// name of this class. This is done by calling this method in the final
/// page passing the name of the class.
ClassMethod SetClassName(Name As %String) As %Status
{
}

}
