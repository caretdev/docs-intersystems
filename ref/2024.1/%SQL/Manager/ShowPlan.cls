/// SQL Manager Class to Show Query Plan
Class %SQL.Manager.ShowPlan Extends %CSP.Util.AutoPage [ Not ProcedureBlock, System = 4 ]
{

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

Parameter SECURITYRESOURCE = "%Development:USE";

ClassMethod OnPage() As %Status
{
}

/// This method is called from %CSP.UI.SQL.ShowPlanPane to display HTML for show plan. "" is always returned.
ClassMethod ShowPlan(querytext, ImportPackage = "", preparse, frozenplan As %Boolean = 0, selectmode = "Runtime", addDeclare = 0, schemaPath = "", stats = "", AltPlan = "", minStats = 0, nofplan = 0, silent = 1, verbose = 0, isbackground = 0, noRTPC = 0) As %String
{
}

/// This method is called from several locations to process & display SQL Errors with proper formatting:
///    - %SQL.Manager.ShowPlan.CLS
///         - ShowPlan()
///    - %SYS.PTools.SQLUtilities.CLS
///         - PossiblePlansExecute()
///         - PossiblePlansStatsExecute()
ClassMethod ShowPlanSQLError(sqlError)
{
}

/// This method is called from %CSP.UI.Portal.Dialog.SQLStatementDetails to display HTML for sql text. "" is always returned.
/// Plan itself cannot be shown because the frozen plan has an error.
/// Or there is another reason the plan cannot be show and that reason is passed in via noPlanReasonTxt argument
ClassMethod ShowPlanError(querytext, noPlanReasonTxt = "") As %String
{
}

/// Process the 'errorMsg' and replace all references to <<<#>>> with $LG(error,#)
ClassMethod fullErrorMsg(errorMsg, error) As %String
{
}

}
