/// Studio Template: New ZEN Form
Class %ZEN.Template.ZENFormWizard Extends %ZEN.Template.studioTemplate [ Deprecated, System = 4 ]
{

Parameter TEMPLATENAME = "Zen Form";

Parameter TEMPLATETITLE = "Zen Form Wizard";

Parameter TEMPLATEDESCRIPTION = "Creates a Zen page with a data entry form whose fields are based on a class definition.";

Parameter TEMPLATETYPE = "cls";

/// What type of template.
Parameter TEMPLATEMODE = "new";

Parameter TEMPLATEGROUP = "Zen";

/// Domain used for localization.
Parameter DOMAIN = "%ZEN";

/// This XML block defines the contents of the body pane of this Studio Template.
XData templateBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Provide contents of description component on the first tab.
Method %GetDescHTML(pSeed As %String) As %Status
{
}

/// Provide contents of description component on the second tab.
Method %GetDescHTML2(pSeed As %String) As %Status
{
}

/// Update state of controls on the wizard form.
ClientMethod updateForm() [ Language = javascript ]
{
}

/// This is called when the template is first displayed;
/// This provides a chance to set focus etc.
ClientMethod onstartHandler() [ Language = javascript ]
{
}

ClientMethod hasMultiplePages() [ Language = javascript ]
{
}

/// Return true if this template can go to the next page (i.e., enable
/// the Next button).<br>
ClientMethod canGoNext() [ Language = javascript ]
{
}

/// Go to the next page of the template (if there is one).<br>
ClientMethod nextPage() [ Language = javascript ]
{
}

/// Go to the previous page of the template (if there is one).<br>
ClientMethod previousPage() [ Language = javascript ]
{
}

/// Return true if this template can go to the previous page (i.e., enable
/// the Back button).<br>
ClientMethod canGoBack() [ Language = javascript ]
{
}

/// Validation handler for form built-into template.
ClientMethod formValidationHandler() [ Language = javascript ]
{
}

/// If speak is true, output an alert message with results of validation.
/// If speak is false, do not output an alert. In both cases return
/// true if the package name and class name are valid, false if invalid.
ClientMethod validateTab1(speak) [ Language = javascript ]
{
}

/// If speak is true, output an alert message with results of validation.
/// If speak is false, do not output an alert. In both cases return
/// true if the data class name is valid, false if invalid.
ClientMethod validateTab2(speak) [ Language = javascript ]
{
}

/// Validate that the given class name is valid to use as the class on which to base the form.
/// Returns an error message if invalid.
Method IsValidDataClass(pCls As %String) As %String [ ZenMethod ]
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

/// Create the result set used by the DataClass dataCombo.
Method CreateDataClassRS(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet
{
}

ClassMethod CreatePage(dataClassName As %String, appName As %String, pkgName As %String, newClassName As %String, formName As %String, cssNames As %String, clsComment As %String) As %Status
{
}

/// Get appropriate text to use when testing ranges for strings (length) and for integers (values).
ClassMethod GetRangeText(prop As %Dictionary.PropertyDefinition, p1 As %String, p2 As %String) As %String
{
}

ClassMethod CreateZenApp(appName As %String) As %Status
{
}

Method %OnAfterCreatePage() As %Status
{
}

}
