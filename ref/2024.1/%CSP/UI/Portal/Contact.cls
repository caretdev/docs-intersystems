/// Contact page for customer to report a new WRC issue<br>
Class %CSP.UI.Portal.Contact Extends %ZEN.Portal.standardPage [ System = 4 ]
{

/// Do not include "zenMenusSMP.js" from %ZEN.Portal.standardPage
Parameter JSINCLUDES;

/// Displayed name of this page.
Parameter PAGENAME = "Contact WRC";

Property buttonsPage As %String [ InitialExpression = {..Link("op/UtilSysButtons.csp",,1)} ];

Property WRCNumber As %ZEN.Datatype.string(ZENURL = "WRCNumber");

Property contactPage As %ZEN.Datatype.string [ InitialExpression = {$$$TextHTML("Contact WRC")} ];

XData Style
{
}

XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod priorityChanged(value) [ Language = javascript ]
{
}

ClientMethod gotoButtons() [ Language = javascript ]
{
}

ClientMethod loadLocalizedStrings() [ Language = javascript ]
{
}

ClientMethod sendEmail() [ Language = javascript ]
{
}

Method GetSystemProperties(ByRef pParms, Output pObject As %RegisteredObject) As %Status
{
}

Method %OnGetJSResources(ByRef pResources As %String) As %Status [ Private ]
{
}

}
