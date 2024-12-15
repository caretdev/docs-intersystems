/// This class is used internally by InterSystems. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.<p>
Class %Studio.SourceControl.File Extends %Studio.SourceControl.Base [ System = 4 ]
{

XData Menu
{
}

Method OnBeforeLoad(InternalName As %String, display As %Boolean = 1) As %Status
{
}

Method OnBeforeTimestamp(InternalName As %String)
{
}

Method OnAfterSave(InternalName As %String, Object As %RegisteredObject) As %Status
{
}

Method OnAfterCompile(InternalName As %String) As %Status
{
}

Method GetStatus(InternalName As %String, ByRef IsInSourceControl As %Boolean, ByRef Editable As %Boolean, ByRef IsCheckedOut As %Boolean, ByRef UserCheckedOut As %String) As %Status
{
}

Method IsInSourceControl(InternalName As %String) As %Boolean [ CodeMode = expression ]
{
}

Method ExternalName(InternalName As %String) As %String [ CodeMode = expression ]
{
}

/// Check this routine/class/csp file into source control.
Method CheckIn(InternalName As %String, Description As %String) As %Status
{
}

/// Update the ^Sources information with the file dates after a running a build
ClassMethod UpdateSources() As %Status
{
}

/// Return filename of this item
ClassMethod ExtName(InternalName As %String) As %String [ Private ]
{
}

/// Return the name of this item without the prefix to be added by ExtName
ClassMethod Name(InternalName As %String) As %String [ Private ]
{
}

}
