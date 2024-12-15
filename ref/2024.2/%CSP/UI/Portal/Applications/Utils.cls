Class %CSP.UI.Portal.Applications.Utils [ Abstract, System = 4 ]
{

Parameter DOMAIN = "%Utility";

Property msgConfirm As %String [ InitialExpression = {$$$TextJS("Are you sure you want to delete application '%1'?")} ];

/// Delete selected application.
ClientMethod doDelete(application) [ Language = javascript ]
{
}

ClientMethod doEdit(name) [ Language = javascript ]
{
}

/// Needed to ensure that ApplicationType is an integer
Method ExecuteApplicationList(pRS As %Library.ResultSet, Output tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

/// Delete selected application now.
ClassMethod Delete(application As %String) As %String [ ZenMethod ]
{
}

}
