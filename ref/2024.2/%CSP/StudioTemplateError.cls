/// This is the error page that is called if an error occurs when generating the XML
/// template code. It will output the error information as a template, so this will
/// be pasted into the current document in Studio. If you wish to write your own
/// error page just inherit from this page. Then in the final template page set the
/// ERRORPAGE parameter to your new error page.
Class %CSP.StudioTemplateError Extends (%CSP.StudioTemplateInsert, %CSP.Error) [ Inheritance = right, Not ProcedureBlock, System = 3 ]
{

/// Create the template with the error information in it.
ClassMethod OnPage() As %Status
{
}

}
