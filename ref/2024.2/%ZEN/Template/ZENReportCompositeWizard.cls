/// Studio Template:<br>
/// Create a new Zen Report Composite class.
Class %ZEN.Template.ZENReportCompositeWizard Extends %ZEN.Template.studioTemplate [ Deprecated, System = 4 ]
{

Parameter TEMPLATENAME = "Zen Report Composite";

Parameter TEMPLATETITLE = "Zen Report Composite Wizard";

Parameter TEMPLATEDESCRIPTION = "Create a new Zen report composite class.";

Parameter TEMPLATETYPE = "cls";

/// What type of template.
Parameter TEMPLATEMODE = "new";

Parameter TEMPLATEGROUP = "Zen";

/// Domain used for localization.
Parameter DOMAIN = "%ZEN";

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of the body pane of this Studio Template.
XData templateBody
{
}

/// Provide contents of description composite.
Method %GetDescHTML(pSeed As %String) As %Status
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// This is called when the template is first displayed;
/// This provides a chance to set focus etc.
ClientMethod onstartHandler() [ Language = javascript ]
{
}

/// Validation handler for form built-into template.
ClientMethod formValidationHandler() [ Language = javascript ]
{
}

/// This method is called when the template is complete. Any
/// output to the principal device is returned to the Studio.
Method %OnTemplateAction() As %Status
{
}

/// Create the result set used by the Package dataCombo.
Method CreatePackageRS(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet
{
}

/// Create the result set used by the Application dataCombo.
Method CreateApplicationRS(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet
{
}

}
