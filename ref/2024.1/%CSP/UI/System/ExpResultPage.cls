/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Final processing of actions for Explorer's compile, export, etc.
Class %CSP.UI.System.ExpResultPage Extends %CSP.Page [ System = 4 ]
{

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

ClassMethod OnPage() As %Status
{
}

ClassMethod DeleteError(namespace, cbState, tMode)
{
}

/// Method to enable production-enabled namespace when adding a new namespace.
ClassMethod EnableEnsNamespace(pNamespace As %String, pCopyMapsFrom As %String)
{
}

/// Method to copy mappings for a InterSystems IRIS instance when adding a new namespace.
ClassMethod CopyMapsFrom(pNamespace As %String, pCopyMapsFrom As %String)
{
}

/// Method to copy mappings and optionally enable it for productions
/// for a InterSystems IRIS instance when adding a new namespace.
ClassMethod InitializeNamespace(pNamespace As %String, pCopyMapsFrom As %String, pEnsembleEnable As %Boolean) [ Internal ]
{
}

/// Write common message after action is commited.
ClassMethod DoneMsg(tSC)
{
}

ClassMethod DrawCloseButton(Index As %Integer)
{
}

/// Write out error log
ClassMethod DrawErrorLog(err)
{
}

ClassMethod HelpTextCancel()
{
}

/// Ensure the user has either %Admin_Operate:USE or %Admin_Manage:USE.
/// Extend response timeout to allow the requested task to complete.
ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

}
