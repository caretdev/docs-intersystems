/// This utility dialog window displays and lets the user select from a set of available namespaces.
/// The list will not show namespaces that are not DeepSee enabled.<br/>
Class %DeepSee.UI.Dialog.namespaceSelect Extends %ZEN.Dialog.namespaceSelect
{

/// Provide contents of description component.
Method %GetDescHTML(pSeed As %String) As %Status
{
}

/// This callback is called after the server-side page
/// object and all of its children are created.<br/>
/// Subclasses can override this to add, remove, or modify
/// items within the page object model, or to provide values
/// for controls.
Method %OnAfterCreatePage() As %Status
{
}

}
