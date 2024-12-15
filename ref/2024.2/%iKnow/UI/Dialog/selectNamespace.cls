/// This class only show the namespaced to which iKnow is enabled.
Class %iKnow.UI.Dialog.selectNamespace Extends %ZEN.Dialog.namespaceSelect [ Deprecated ]
{

Parameter DOMAIN = "%iKnow";

/// Security requirement
Parameter RESOURCE = "%Development";

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

ClassMethod getEnabledIKnowNS(ByRef namespaces) As %Integer
{
}

ClassMethod %IsiKnowEnabled(pNamespace = "") As %Boolean
{
}

}
