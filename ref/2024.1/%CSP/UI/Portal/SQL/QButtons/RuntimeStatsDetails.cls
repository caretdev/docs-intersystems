Class %CSP.UI.Portal.SQL.QButtons.RuntimeStatsDetails Extends (%ZEN.Portal.standardPage, %CSP.UI.Portal.SQL.QButtons.Utils) [ System = 4 ]
{

Parameter RESOURCE = "%Development:USE";

/// Displayed name of this page.
Parameter PAGENAME = "SQL PTools View Stats Details";

Property NAMESPACE As %String(ZENURL = "$NAMESPACE");

Property CursorName As %String(ZENURL = "CursorName");

Property RoutineName As %String(ZENURL = "RoutineName");

Property PlanPage As %ZEN.Datatype.string [ InitialExpression = {$P(..Link("%25SQL.Manager.ShowPlan.cls"),"?$NAMESPACE",1)} ];

Property PrintImage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/broker/deepsee/printer_24.png")} ];

XData Style
{
}

XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod loadLocalizedStrings(json) [ Language = javascript ]
{
}

ClientMethod adjustSizes() [ Language = javascript ]
{
}

/// Return query information to the client.
Method GetQueryInfo(ByRef pParms, Output pObject As %RegisteredObject) As %Status
{
}

Method %OnGetJSResources(ByRef pResources As %String) As %Status [ Private ]
{
}

/// This client event, if present, is fired when the page is resized.
ClientMethod onresizeHandler() [ Language = javascript ]
{
}

}
