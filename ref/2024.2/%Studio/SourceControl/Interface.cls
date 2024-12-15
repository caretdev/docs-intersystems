/// This provides the interface that Studio uses to talk to the source control class.
Class %Studio.SourceControl.Interface [ Owner = {%Developer}, System = 3 ]
{

/// Return the name of the source control class we should use for this
/// namespace. If we return "" then source control is not enabled in
/// this namespace.
ClassMethod SourceControlClassGet(namespace As %String) As %String [ Final ]
{
}

/// Set the name of the source control class we should use for this
/// namespace. Set the value to "" to disable source control in this
/// namespace. Set the value to $char(0) to remove the source control node for
/// this namespace. This is different to setting it to "", which disables it, as
/// removing the node for this namespace will allow a look through to the default
/// source control class for all namespaces.
ClassMethod SourceControlClassSet(val As %String = "", namespace As %String, sys As %Boolean = 0) As %Status [ Final ]
{
}

/// Test the creation of the source control class
ClassMethod Test()
{
}

/// Creates an instance of the source control class stored in the local variable
/// '%SourceControl'. This is used by the load/save/compile functions to import/export
/// the routine to the external source control class.<p>
/// It also returns <var>Created</var> which is true if the source control class was created
/// correctly. Then <var>Flags</var> returns an integer set of flags to determine which dialogs
/// to display in Studio. Studio passes its <var>Version</var> to the server so the server can
/// modify its behavior based on this. The server returns <var>Reload</var> which if "" is set
/// in Studio on a per user basis, but if set to 1 or 0 then this forces the auto reload behavior
/// in Studio to follow this server setting. The <var>MainJob</var> is blank if this process is the
/// main Studio connection, but is the $job of the initial Studio connection job if this is a background
/// job for doing things like find in files, or a big compile. By passing the $job of the main
/// process this background process can co-ordinate with the main job.
ClassMethod SourceControlCreate(Name As %String, Password As %String, ByRef Created As %Boolean, ByRef Flags As %Integer, Output Username As %String, Version As %String = "", ByRef Reload As %String, MainJob As %String = "", ByRef IconStatus As %Integer) As %Status [ Final, NotInheritable ]
{
}

/// Reformat the InternalName to make sure the type is all in upper case
ClassMethod normalizeName(InternalName As %String) As %String
{
}

/// Return information about this entity. The <var>Reload</var> parameter is returned by this
/// function and is true if the status check changed the item and so may need to be reloaded.
ClassMethod GetStatus(InternalName As %String, ByRef IsInSourceControl As %Boolean, ByRef Editable As %Boolean, ByRef IsCheckedOut As %Boolean, ByRef UserCheckedOut As %String, ByRef Reload As %Boolean) As %Status
{
}

/// Returns the external name of this file
ClassMethod ExternalName(InternalName As %String) As %String
{
}

/// Return true if this document is generated from some other item
ClassMethod IsGenerated(InternalName As %String) As %Boolean
{
}

/// Called when the user makes a change that may require some source control hook interaction
ClassMethod UserAction(Type As %Integer, Name As %String, InternalName As %String, SelectedText As %String, ByRef Action As %String, ByRef Target As %String, ByRef Msg As %String, ByRef Reload As %Boolean, ByRef Editable As %Boolean) As %Status
{
}

/// Called after Studio brings up its default dialog from calling <method>OnUserAction</method> to tell
/// the server what the answer was
ClassMethod AfterUserAction(Type As %Integer, Name As %String, InternalName As %String, Answer As %Integer, Msg As %String = "", ByRef Reload As %Boolean, ByRef Editable As %Boolean) As %Status
{
}

ClassMethod MainMenusExecute(ByRef qHandle As %Binary) As %Status
{
}

ClassMethod MainMenusFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

ClassMethod MainMenusClose(ByRef qHandle As %Binary) As %Status
{
}

ClassMethod MenuItemsExecute(ByRef qHandle As %Binary, MenuName As %String(MAXLEN=32767), InternalName As %String(MAXLEN=32767) = "", SelectedText As %String(MAXLEN=32767) = "") As %Status
{
}

ClassMethod MenuItemsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

ClassMethod MenuItemsClose(ByRef qHandle As %Binary) As %Status
{
}

ClassMethod ExtensionClassesExecute(ByRef qHandle As %Binary) As %Status
{
}

ClassMethod ExtensionClassesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

ClassMethod ExtensionClassesClose(ByRef qHandle As %Binary) As %Status
{
}

ClassMethod OnBeforeTimestamp(class As %String(MAXLEN="")) As %Status
{
}

}
