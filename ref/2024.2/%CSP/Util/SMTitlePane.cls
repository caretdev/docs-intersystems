/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>System Management Title Pane
Class %CSP.Util.SMTitlePane Extends %CSP.Util.Pane [ ServerOnly = 1, System = 4 ]
{

/// A collection of Links used to draw the locator within the title pane.
Property Locator As list Of Link;

/// Control whether or not User/Namespace is displayed or not.
Property ShowUsrNsp As %Boolean [ InitialExpression = 1 ];

/// Draw the HTML to display a title pane for this object.
Method DrawBODY(pInstance As PageInstance) As %Status
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

/// Draw CSS style and JS functions for Context Menu.
Method DrawMenuStyleJS()
{
}

/// Overwritten by subclasses to draw anything this pane needs for the HEAD section.
Method DrawHEAD(pInstance As PageInstance) As %Status
{
}

/// Necessary JS code for standard SMTitlePane
Method DrawJS() As %Status
{
}

/// Draw the locator links on the locator bar.<br/>
Method %DrawLocatorLinks(ByRef pInstance, ByRef pLocator)
{
}

/// Create pMenu in the same style as for Zen page to be used by %DrawSmallMenu later.
Method %OnGetSmallMenu(ByRef pInstance, ByRef pMenu As %String)
{
}

}
