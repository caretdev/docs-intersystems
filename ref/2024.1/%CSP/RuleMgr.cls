/// The <CLASS>%CSP.RuleMgr</CLASS> class provides an interface for managing
/// the rules used by the CSP compiler.
Class %CSP.RuleMgr Extends %RegisteredObject [ Not ProcedureBlock, System = 3 ]
{

/// Return true if the rule exists.
ClassMethod RuleExists(name As %String, family As %String = "csp") As %Boolean
{
}

/// RuleList query returns all rules.
/// Execute method for RuleList query.
ClassMethod RuleListExecute(ByRef QHandle As %Binary, family As %String = "csp") As %Status
{
}

/// Close method for RuleList query.
ClassMethod RuleListClose(QHandle As %Binary) As %Status
{
}

/// Fetch method for RuleList query.
ClassMethod RuleListFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

}
