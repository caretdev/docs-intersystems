/// <p>This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications.
/// There is no guarantee made about either the behavior or future operation of this class.</p>
/// SQL Statement Details view and freeze plan for Management Portal
Class %CSP.UI.Portal.Dialog.SQLStatementDetails Extends %CSP.UI.Portal.Dialog.WizardTemplate [ System = 4 ]
{

/// Class name of application this page belongs to.
Parameter APPLICATION = "%CSP.UI.Portal.Application";

Parameter CSPURL = "/csp/sys/exp/%CSP.UI.Portal.Dialog.SQLStatementDetails.zen";

/// Displayed name of this page.
Parameter PAGENAME = "SQLStatementDetails";

/// If true, then this dialog displays an Apply button.
Parameter APPLYBUTTON As BOOLEAN = 1;

/// Security requirement
Parameter RESOURCE = "%Development";

Property NAMESPACE As %ZEN.Datatype.string(ZENURL = "NAMESPACE");

/// Schema name, may or may not be available.
Property SCHEMA As %ZEN.Datatype.string(ZENURL = "SCHEMA");

Property STMTHASH As %ZEN.Datatype.string(ZENURL = "STMTHASH");

Property OpenInTab As %ZEN.Datatype.string(ZENURL = "OpenInTab");

/// Store translated targetCol linkCaption for <condition>
Property colCompile As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Compile Routine")} ];

Property hashError As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Property PlanState As %ZEN.Datatype.integer;

Property expTitle As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Click to expand or collapse this group")} ];

Property lblYes As %ZEN.Datatype.caption [ InitialExpression = {$$$TextHTML("Yes")} ];

Property lblNo As %ZEN.Datatype.caption [ InitialExpression = {$$$TextHTML("No")} ];

Property ViewStatsPage As %ZEN.Datatype.string [ InitialExpression = {..Link("/csp/sys/exp/%25CSP.UI.Portal.SQL.QButtons.RuntimeStats.zen",,1)} ];

/// When editing, this is passed in.
/// This Style block contains page-specific CSS style definitions.
XData Style
{
}

XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// This XML block defines the contents of this pane.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod ondialogCancel() [ Language = javascript ]
{
}

ClientMethod saveExpState() [ Language = javascript ]
{
}

/// Goto the Test Query tab and put the statement text in
ClientMethod doQueryTest() [ Language = javascript ]
{
}

ClassMethod SaveExpando(pExpandoList) As %Status [ ZenMethod ]
{
}

/// When the current plan is frozen, then we show un-frozen plan on the side for easy comparison
ClassMethod DrawShowPlan(pShowCompare) As %Status
{
}

Method FreezePlan() As %String [ ZenMethod ]
{
}

ClientMethod doFreezePlan() [ Language = javascript ]
{
}

Method UnFreezePlan() As %String [ ZenMethod ]
{
}

ClientMethod doUnFreezePlan() [ Language = javascript ]
{
}

Method ClearSQLStatistics() As %String [ ZenMethod ]
{
}

ClientMethod doClearStatistics() [ Language = javascript ]
{
}

ClientMethod doRefreshTable(tablename) [ Language = javascript ]
{
}

Method CompileClassSetClassname(classname As %String) As %String [ ZenMethod ]
{
}

ClientMethod doCompileClass(classname, namespace) [ Language = javascript ]
{
}

Method CompileRoutineSetRoutineName(rtnname As %String) As %String [ ZenMethod ]
{
}

ClientMethod doCompileRoutine(rtnname, namespace) [ Language = javascript ]
{
}

ClientMethod doExport() [ Language = javascript ]
{
}

/// Get the (localized) title string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) subtitle string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetSubtitle() As %String
{
}

/// This client event is fired when the a popup page launched from this page fires an action.
/// action - StatementRefresh is for when returning from compiling a routine or class.
ClientMethod onPopupAction(popupName, action, value) [ Language = javascript ]
{
}

/// This client event is fired when the Refresh button is clicked
ClientMethod doRefreshPage() [ Language = javascript ]
{
}

/// This client event is fired when the Check Frozen button is clicked (this button is deprecated)
ClientMethod doCheckFrozen() [ Language = javascript ]
{
}

/// This client event is fired when the ClearPlanError button is clicked
ClientMethod doClearPlanError() [ Language = javascript ]
{
}

/// This method forces a recheck of frozen plan
Method RecheckFrozenPlan(hash) As %Status [ ZenMethod ]
{
}

Method ClearPlanError() As %Status [ ZenMethod ]
{
}

Method RefreshStatementMetadata() As %Status [ ZenMethod ]
{
}

/// This callback is called after the server-side page
/// object and all of its children are created.<br/>
/// Subclasses can override this to add, remove, or modify
/// items within the page object model, or to provide values
/// for controls.
Method %OnAfterCreatePage() As %Status
{
}

ClientMethod onloadHandler(load) [ Language = javascript ]
{
}

ClientMethod checkButtonStatus() [ Language = javascript ]
{
}

ClientMethod showCompare(reload) [ Language = javascript ]
{
}

ClientMethod updateParentTable() [ Language = javascript ]
{
}

/// This will return the exact same AverageCount as from StatementIndexAll fo %SQL.Manager.Catalog
ClassMethod GetDisplayAverageCount(averagecount)
{
}

}
