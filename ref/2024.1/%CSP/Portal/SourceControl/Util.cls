Class %CSP.Portal.SourceControl.Util [ Abstract, System = 4 ]
{

/// Return a project's full name, including a ".PRJ" extension.
ClassMethod GetFullProjectName(pProjectName As %String = "") [ CodeMode = expression ]
{
}

/// Create an instance of a Source Control object
ClassMethod CreateSourceControl(Output pSourceControl As %Studio.SourceControl.Base, Output pCreated As %Boolean, Output pUsername As %String, pUserData As %ZEN.proxyObject = "") As %Status
{
}

/// Determine whether source control is enabled for the Management
/// Portal in the specified namespace. The default is to return the
/// flag for the current namespace.
ClassMethod IsEnabled(pNamespace As %String = {$namespace}) As %Boolean
{
}

/// Enable or disable the flag indicating whether the source control class
/// used in the current namespace requires a specific project to be selected
/// for the source control hooks to operate correctly.
ClassMethod SetProjectRequired(pNewValue As %Boolean = 0, Output pOldValue As %Boolean) As %Status
{
}

/// Helper method to indicate whether the source control hooks in the current
/// production-enabled namespace need a project defined.
ClassMethod IsProjectRequired() As %Boolean
{
}

/// Helper method to save the name of the current project and whether its
/// OnBeforeLoad() and OnAfterLoad() callbacks have been executed. The data is saved
/// in the current CSP session data, so will be cleaned up when the user logs out.
ClassMethod SetCurrentProject(pProjectName As %String, pLoaded As %Boolean = 0) [ ZenMethod ]
{
}

/// Helper method to retrieve the current project for the CSP session,
/// along with a flag to indicate whether the OnBeforeLoad() and OnAfterLoad()
/// source control hooks have been executed for the project.
ClassMethod GetCurrentProject(Output pLoaded As %Boolean) As %String [ ZenMethod ]
{
}

/// Return the source control class which is to be used in the current namespace.
/// If source control hooks are not enabled, an empty string is returned.
ClassMethod GetSourceControlClass() As %String
{
}

/// Helper method to load a class definition from disk.
ClassMethod LoadClassDefinition(pClassname As %String, Output pDefinition As %Dictionary.ClassDefinition, Output pReadOnly As %Boolean, pExclusiveOnly As %Boolean = 0) As %Status [ Private ]
{
}

}
