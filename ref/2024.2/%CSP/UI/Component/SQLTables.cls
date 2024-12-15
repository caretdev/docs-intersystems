/// Component for editing SQL Tables, Views, Procedures, ML Configurations, and Foreign Servers on the User and Role edit pages
Class %CSP.UI.Component.SQLTables Extends (%ZEN.Component.component, %CSP.UI.Component.SelectBoxUtils) [ System = 3 ]
{

Parameter DOMAIN [ Internal ] = "%Utility";

/// This is the XML namespace for this component.
Parameter NAMESPACE [ Internal ] = "http://www.intersystems.com/zen";

Property includeSystem As %ZEN.Datatype.integer [ InitialExpression = 0 ];

Property namespace As %ZEN.Datatype.string;

Property nsDisplayList As %ZEN.Datatype.string;

Property nsValueList As %ZEN.Datatype.string;

Property pageType As %ZEN.Datatype.string(VALUELIST = ",Users,Roles");

/// Name of the User/Role being edited
Property PID As %ZEN.Datatype.string(ZENEXPRESSION = 1);

/// If true, tables are for display only
Property readOnly As %ZEN.Datatype.boolean(ZENEXPRESSION = 1) [ InitialExpression = 0 ];

Property showSystemBox As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Property tab As %ZEN.Datatype.integer;

Property type As %ZEN.Datatype.string;

/// Allow this component to page its results.
Property usePaging As %ZEN.Datatype.boolean(ZENEXPRESSION = 1) [ InitialExpression = 1 ];

/// The current page of results being displayed. If usePaging=0 this setting will be ignored.
Property resultsPage As %ZEN.Datatype.integer(XMLPROJECTION = "none") [ InitialExpression = 1 ];

/// The desired number of tables to display per results page. If usePaging=0 this setting will be ignored.
Property resultsPageSize As %ZEN.Datatype.integer [ InitialExpression = 100 ];

/// The final page of results as calculated from the actual results given the resultsPageSize. If usePaging=0 this setting will be ignored.
Property resultsMaxPage As %ZEN.Datatype.integer(XMLPROJECTION = "none") [ Internal ];

/// This Style block contains component-specific CSS style definitions.
XData Style
{
}

/// The %DrawHTML method draws the initial HTML for this component.
Method %DrawHTML()
{
}

/// Navigate to a requested page in a multi-page resultset. If the requested page is out of the actual page
/// range, it will automatically be reset to reuqest the first or lastreal page.
ClientMethod gotoPage(pageNo) [ Language = javascript ]
{
}

/// Navigate to the previous page of results
ClientMethod prevPage() [ Language = javascript ]
{
}

/// Navigate to the next page of results
ClientMethod nextPage() [ Language = javascript ]
{
}

ClientMethod changeNS(sel) [ Language = javascript ]
{
}

ClientMethod changeSysItems(chbox) [ Language = javascript ]
{
}

ClassMethod SetIncludeSystem(newVal As %Integer) [ ZenMethod ]
{
}

ClientMethod doRevokeObj(PID, tblname, grantedby) [ Language = javascript ]
{
}

ClientMethod doLaunchSchemas(PID, objName, objPriv) [ Language = javascript ]
{
}

ClientMethod doLaunchMLConfigurations(PID, objName, objPriv) [ Language = javascript ]
{
}

ClientMethod doLaunchColumns(PID, objName) [ Language = javascript ]
{
}

ClassMethod BuildLine(tVal As %String, nPrivilegesLen As %Integer)
{
}

ClassMethod RevokeRow(NAMESPACE, Grantee, cbState, sActs, tab, sType, GrantedBy) As %String [ ZenMethod ]
{
}

}
