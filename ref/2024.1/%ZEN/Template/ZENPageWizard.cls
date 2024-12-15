/// Studio Template: New ZEN Page.
Class %ZEN.Template.ZENPageWizard Extends %ZEN.Template.studioTemplate [ Deprecated, System = 4 ]
{

Parameter TEMPLATENAME = "Zen Page";

Parameter TEMPLATETITLE = "Zen Page Wizard";

Parameter TEMPLATEDESCRIPTION = "Create a new Zen page class.";

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
XData templateBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Provide contents of description component.
Method %GetDescHTML(pSeed As %String) As %Status
{
}

/// Provide contents of description component.
Method %GetDescHTML2(pSeed As %String) As %Status
{
}

Method %OnAfterCreatePage() As %Status
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

/// Owner-draw notification for owner1 component.
/// This method creates content using client-side logic.
ClientMethod drawSamplePages(svg) [ Language = javascript ]
{
}

/// Execute server-logic to get SVG contents for Owner-draw component.
ClassMethod GetSVGContents(pIndex As %Integer) [ ZenMethod ]
{
}

/// User selection of a page layout icon
ClientMethod selectPageLayout(cls, name) [ Language = javascript ]
{
}

/// Validation handler for form built-into template.
ClientMethod formValidationHandler() [ Language = javascript ]
{
}

ClientMethod validateClassName() [ Language = javascript ]
{
}

/// This method is called when the template is complete. Any
/// output to the principal device is returned to the Studio.
Method %OnTemplateAction() As %Status
{
}

/// Try to find the list of panes in the given page class.
ClassMethod GetPanes(pClass As %String, Output pPanes) [ Internal ]
{
}

/// Create the result set used by the Package dataCombo.
Method CreatePackageRS(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet
{
}

/// Create the result set used by the SuperClass dataCombo.
Method CreateSuperClassRS(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet
{
}

/// Create the result set used by the Application dataCombo.
Method CreateApplicationRS(Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %ResultSet
{
}

}
