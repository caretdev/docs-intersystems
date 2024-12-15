/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Defines the main API for working with global/routine/package mappings.
/// This class is used internally by InterSystems IRIS instance management utilities and is
/// not meant to be used by application developers.<br>
/// The "modified" mappings will only be Activiated
/// when user is ready and clicked the "Save Changes" button.
Class %CSP.UI.System.MappingsAPI [ Abstract, System = 4 ]
{

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

/// Are there changes in the change list?
ClassMethod HasChanges(Namespace As %String, pType As %String) As %Boolean
{
}

/// Remove all items in the change list for this namespace
ClassMethod ClearChangeList(Namespace As %String, pType As %String) As %Status
{
}

/// Save items in the Change List
ClassMethod SaveChangeList(Namespace As %String, MapType As %String) As %Status
{
}

}
