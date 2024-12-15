/// Template for Web Form Wizard.
Class %ZEN.Template.WebFormWizard.Template Extends %ZEN.Template.studioTemplate [ Deprecated, System = 4 ]
{

Parameter fkUnused = 0;

Parameter fkString = 1;

Parameter fkReadOnly = 2;

Parameter fkReference = 3;

Parameter fkRefCombo = 4;

Parameter fkList = 5;

Parameter fkArray = 6;

Parameter fkImage = 7;

Parameter fkMultiLine = 8;

Parameter fkRefSearch = 9;

Parameter fkRefLink = 10;

Parameter fkValCombo = 11;

Parameter fkBoolean = 12;

Property CSPCHD As %ZEN.Datatype.string [ InitialExpression = {%session.CSPSessionCookie} ];

XData Style
{
}

XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Open Settings page.
ClientMethod doSettings() [ Language = javascript ]
{
}

}
