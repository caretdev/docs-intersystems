/// Studio Template: New %Installer.
Class %Installer.InstallerWizard Extends %ZEN.Template.studioTemplate [ System = 4 ]
{

Parameter TEMPLATENAME = "%Installer Manifest";

Parameter TEMPLATETITLE = "%Installer Wizard";

Parameter TEMPLATEDESCRIPTION = "Create a new %Installer Manifest.";

Parameter TEMPLATETYPE = "cls";

/// What type of template.
Parameter TEMPLATEMODE = "new";

Parameter TEMPLATEGROUP = "General";

/// Domain used for localization.
Parameter DOMAIN = "%ZEN";

Parameter HELPID = "GSTU_instdist_installer";

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

ClientMethod hasMultiplePages() [ Language = javascript ]
{
}

/// Return true if this template can go to the next page (i.e., enable
/// the Next button).<br>
ClientMethod canGoNext() [ Language = javascript ]
{
}

/// Validation handler for form built-into template.
ClientMethod formValidationHandler() [ Language = javascript ]
{
}

ClientMethod validate() [ Language = javascript ]
{
}

ClientMethod testRequired() [ Language = javascript ]
{
}

ClientMethod testValid() [ Language = javascript ]
{
}

ClientMethod isValidIdent(val, dot) [ Language = javascript ]
{
}

/// This method is called when the template is complete. Any
/// output to the principal device is returned to the Studio.
Method %OnTemplateAction() As %Status
{
}

}