/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Details for the Title pane of a CSP AutoPage used by Interoperability.
Class %CSP.Util.TitlePane Extends Pane [ ServerOnly = 1, System = 4 ]
{

/// A collection of Links used to draw the locator within the title pane.
Property Locator As list Of Link;

/// Control whether or not User/Namespace is displayed or not.
Property ShowUsrNsp As %Boolean [ InitialExpression = 1 ];

/// Draw the HTML to display a title pane for this object.
Method DrawBODY(pInstance As PageInstance) As %Status
{
}

/// Draw list of namespaces for user.
Method DrawNSList() [ Internal ]
{
}

/// Draw username or server name depend on setup.
Method DrawUsername()
{
}

/// Handle ShowUsrNsp
Method OnGenerateCode() As %String
{
}

/// Get default namespace for this session:<br>
/// <ul>
/// <li> If NAMESPACE is passed in that means user has changed namespace from
/// the drop-down. Update the session data $NAMESPACE.</li>
/// <li> Else If this is not a new session, then use the previous saved session NAMESPACE</li>
/// <li>      Else this is a new new session, but it is production-enabled, then use the current namespace</li>
/// <li>      Else this is a new new session, and it is CSP GUI Utility, then return the first available namespace from namespace list. </li>
/// </ul>
ClassMethod GetDefaultNamespace() As %String
{
}

/// Draw a combobox of quick jump options.
Method DrawQuickJumpList()
{
}

/// Call by parent window to find our size
}
