/// Template for Gateway Wizards.
Class %ZEN.Template.ObjectGatewayWizard.Template Extends %ZEN.Template.studioTemplate [ Deprecated, System = 4 ]
{

Parameter TEMPLATETYPE = "*";

/// What type of template.
Parameter TEMPLATEMODE = "addin";

/// Domain used for localization.
Parameter DOMAIN = "%ZEN";

/// %session.CSPSessionCookie passed as CSPCHD for Browse dialog
Property CSPSessionCookie As %String [ InitialExpression = {%session.CSPSessionCookie} ];

Property lblExit As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Exit")} ];

Property lblFinish As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Finish")} ];

Property lblNotExist As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("File does not exist!")} ];

Property lblNoRespond As %ZEN.Datatype.caption [ InitialExpression = {$$$TextJS("Gateway did not respond!")} ];

/// After user clicks the Finish button, the caption of button Finish becomes Exit,and isExit becomes 1.
/// If btnFinish is clicked when isExit = 1 then we exit out of the wizard.
Property isExit As %Boolean [ InitialExpression = 0 ];

XData CSS3Style
{
}

XData Style
{
}

/// defines style sheet used by this application table pane
/// validate the control value. pass is either "true" or "false" indicating if there is already a field failed pass validation.
ClientMethod validateRequired(ctl, pass, type) As %Boolean [ Language = javascript ]
{
}

ClassMethod CheckAllBlanks(string) As %Boolean [ ZenMethod ]
{
}

}
