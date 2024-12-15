/// The <CLASS>%CSP.StudioTemplateSuper</CLASS> is the superclass for all the template
/// pages. All templates must derive from this superclass in order to work correctly.
Class %CSP.StudioTemplateSuper Extends %CSP.Page [ System = 3 ]
{

Parameter SECURITYRESOURCE = "%Development";

/// If this is true then even if this template is tied to a specific namespace it
/// will be available in any namespace and it will be up to the template to make sure
/// it looks for any specific data in the target namespace.
Parameter GlobalTemplate = 0;

/// Make sure templates default to UTF-8
Parameter CHARSET = "UTF-8";

/// This is called before the OnPreHTTP and will handle the HyperEvent errors and
/// setup the status line in the response for the standard errors.
ClassMethod OnErrorSetup(ByRef skipheader As %Boolean) As %Boolean [ ProcedureBlock = 1 ]
{
}

/// Default code to localise the name and description of this template is to look it up in %TemplateName
/// or TemplateName domain in localization table.
ClassMethod LocalizeName(id As %String, ByRef name As %String, ByRef description As %String) As %Status
{
}

/// Return false from this method to disable this template (for example based on the server platform)
ClassMethod IsEnabled() As %Boolean
{
}

}
