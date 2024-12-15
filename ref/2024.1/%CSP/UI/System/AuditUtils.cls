/// Utilities used by Management Portal Audit.
Class %CSP.UI.System.AuditUtils Extends %RegisteredObject [ Abstract, System = 4 ]
{

Parameter DOMAIN = "%Utility";

/// Prepare EventData for Audit. The array of items may be classes/routines/globals/SQL tables/SQL cached queries, etc.
/// Will insert carriege return and line feed for every 10 items for easier view audit data later.
ClassMethod PatEventDataRows(ByRef EventData As %String, ByRef pItems)
{
}

}
