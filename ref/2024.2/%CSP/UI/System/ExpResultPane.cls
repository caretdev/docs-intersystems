/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>This is the pane to prepare for action result. Display what user selected, with additional
/// parameter prompts if needed, and prompt the user to proceed or cancle.
Class %CSP.UI.System.ExpResultPane Extends %CSP.Page [ System = 4 ]
{

/// Default domain for the Portal's localization.
Parameter DOMAIN = "%Utility";

/// Ensure user has either %Admin_Manage:USE or %Admin_Operate:USE.
ClassMethod OnPreHTTP() As %Boolean [ ServerOnly = 1 ]
{
}

ClassMethod OnPage() As %Status
{
}

/// For Integrity check, if user selected more than one database, then disable the Global button
/// Disable or enable db checkboxes. If globals selected, then disable other DB checkboxes.
/// If user unchecked the only DB they have globals selected, then enable all and lose global selections.
/// returning from select globals page. Update the total for the database.
/// Write common message after action is commited.
ClassMethod DoneMsg(tSC)
{
}

ClassMethod DrawCloseButton()
{
}

ClassMethod DrawProgressImg()
{
}

/// Write out error log
ClassMethod DrawErrorLog(err)
{
}

ClassMethod DrawDeleteSelections(tNamespace As %String, tMode As %String, cbState As %String) As %Integer
{
}

/// Draw what user has selected
ClassMethod DrawSelectedTable(cbState) As %Integer
{
}

ClassMethod HelpTextCancel()
{
}

/// Return displable Mode Title
ClassMethod LocalizePage(ByRef msgPage As %String) As %String
{
}

}
