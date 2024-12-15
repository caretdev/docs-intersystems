/// Studio Template.<br>
/// Insert a new method to a Zen page.
Class %ZEN.Template.ZENMethodWizard Extends %ZEN.Template.studioTemplate [ Deprecated, System = 4 ]
{

Parameter TEMPLATENAME = "Zen Method Wizard";

Parameter TEMPLATETITLE = "Zen Method Wizard";

Parameter TEMPLATEDESCRIPTION = "Add a new method to a Zen class.";

Parameter TEMPLATETYPE = "cls";

/// What type of template.
Parameter TEMPLATEMODE = "template";

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

/// This is called when the user changes the Location control(s).
ClientMethod locationChange(ctrl) [ Language = javascript ]
{
}

/// This is called when the user changes the Callback control.
ClientMethod callbackChange(ctrl) [ Language = javascript ]
{
}

/// Validate that the given method name is valid.<br>
/// Returns an error message if invalid.
Method IsValidMethodName(pCls As %String) As %String [ ZenMethod ]
{
}

/// This method is called when the template is complete. Any
/// output to the principal device is returned to the Studio.
Method %OnTemplateAction() As %Status
{
}

}
