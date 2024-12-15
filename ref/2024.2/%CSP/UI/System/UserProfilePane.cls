/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>This pane is used by the User Profile page
/// It displays a summary of system privileges for a given user.
Class %CSP.UI.System.UserProfilePane Extends %CSP.Util.Pane [ System = 4 ]
{

/// Overwritten by subclasses to draw anything this pane needs for the HEAD section.
Method DrawHEAD(pInstance As PageInstance) As %Status
{
}

/// Draw the BODY of the detail pane
Method DrawBODY(pInstance As PageInstance) As %Status
{
}

}
