/// Configuration Management Change Control Interface
/// This provides the interface may be used to communicate with the change control class.
Class %XML.Exchange.ChangeControlInterface [ System = 4 ]
{

/// Return the name of the change control class we should use for this
/// namespace. If we return "" then change control is not enabled in
/// this namespace.
ClassMethod ChangeControlClassGet() As %String [ CodeMode = expression, Final, NotInheritable ]
{
}

/// Set the name of the change control class we should use for this
/// namespace. Set the value to "" to disable change control in this
/// namespace.
ClassMethod ChangeControlClassSet(val As %String = "") As %Status [ Final, NotInheritable ]
{
}

/// Creates an instance of the change control class stored in the local variable
/// '%ChangeControl' this is used by the load/save functions to import
/// export the routine to the external change control class.<p>
/// It also returns <var>Created</var> which is true if the change control class was created
/// correctly.
ClassMethod ChangeControlCreate(Name As %String, Password As %String, ByRef Created As %Boolean, ByRef Flags As %Integer, Output Username As %String, Version As %String = "", ByRef Reload As %String) As %Status [ Final, NotInheritable ]
{
}

/// Return information about this entity. The <var>Reload</var> parameter is returned by this
/// function and is true if the status check changed the item and so may need to be reloaded.
ClassMethod GetStatus(InternalName As %String, ByRef IsInChangeControl As %Boolean, ByRef Editable As %Boolean, ByRef IsCheckedOut As %Boolean, ByRef UserCheckedOut As %String, ByRef Reload As %Boolean) As %Status
{
}

/// Returns the external name of this file
ClassMethod ExternalName(InternalName As %String) As %String
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

}
