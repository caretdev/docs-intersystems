/// Web Form WizardS ettings.
Class %ZEN.Template.WebFormWizard.Settings Extends %ZEN.Component.page [ Deprecated, System = 4 ]
{

/// Display title of this page <title></title>
Parameter PAGETITLE = "Web Form Wizard Settings";

/// Require %Development:USE for access to this page.
Parameter RESOURCE = "%Development:USE";

/// Domain used for localization.
Parameter DOMAIN = "%ZEN";

Parameter HELPID = "GZEN_webform_wizard_settings";

/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

/// This XML block defines the contents of the body pane of this Studio Template.
XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Provide HTML for standard template html title box.
Method %DrawTitle(pSeed As %String) As %Status
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Close this dialog without applying its value.
ClientMethod doCancel() [ Language = javascript ]
{
}

/// Get values, set them to proxy object and send to server to save.
ClientMethod doSave() [ Language = javascript ]
{
}

/// This method is called when user wants to save setting parameters permanently.
ClassMethod SaveSettings(proxy As %ZEN.proxyObject) As %String [ ZenMethod ]
{
}

/// Return layout settings.
ClassMethod GetLayout() As %ZEN.proxyObject [ ZenMethod ]
{
}

}
