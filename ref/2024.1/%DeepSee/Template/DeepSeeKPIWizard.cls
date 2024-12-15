/// Studio Template:<br>
/// Create a new DeepSee KPI class.
Class %DeepSee.Template.DeepSeeKPIWizard Extends %ZEN.Template.studioTemplate [ System = 4 ]
{

Parameter TEMPLATENAME = "DeepSee KPI";

Parameter TEMPLATETITLE = "DeepSee KPI Wizard";

Parameter TEMPLATEDESCRIPTION = "Create a new DeepSee KPI class.";

Parameter TEMPLATETYPE = "cls";

/// What type of template.
Parameter TEMPLATEMODE = "new";

/// Domain used for localization.
Parameter DOMAIN = "%DeepSee";

Parameter HELPID = "D2MODADV_ch_kpi";

Property ResourcePage As %String [ InitialExpression = {..Link("_DeepSee.UI.Dialog.GetResource.cls?CSPSHARE=1")} ];

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

ClientMethod editItem(what) [ Language = javascript ]
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
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

}
