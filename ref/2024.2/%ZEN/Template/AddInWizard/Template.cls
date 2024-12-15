/// Template for Misc Add-In Wizards (originally these wizards were written under /csp/studio/templates in CSP).
Class %ZEN.Template.AddInWizard.Template Extends %ZEN.Template.ObjectGatewayWizard.Template [ Deprecated, System = 4 ]
{

/// Domain used for localization.
Parameter DOMAIN = "%TemplateMessages";

/// After user clicks the Finish button, the caption of button Finish becomes Exit,and isExit becomes 1.
/// If btnFinish is clicked when isExit = 1 then we exit out of the wizard.
Property isExit As %Boolean [ InitialExpression = 0 ];

XData Style
{
}

/// Display message on top of page.
ClientMethod showMsg(msg) [ Language = javascript ]
{
}

/// Clear message on top of page.
ClientMethod resetMsg() [ Language = javascript ]
{
}

}
