/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Management portal index utility
Class %CSP.UI.System.Index Extends %RegisteredObject [ Abstract, CompileAfter = %CSP.Util.FieldDefinition, LegacyInstanceContext, ServerOnly = 1, System = 3 ]
{

/// Location of MgtPortal page index
Parameter INDEXGLVN = "^%qMgtPortal.Index";

/// Build the MgtPortal page index within the global
/// #INDEXGLVN
///
ClassMethod BuildIndex() As %Status
{
}

/// This method will only locate portal pages for the current namespace.
ClassMethod BuildPageIndex() As %Status
{
}

/// Internal method to build page index for autopage-based pages.
ClassMethod ProcessIndex(tRS As %ResultSet) [ Private ]
{
}

/// Internal method to build page index for zen-based pages.
ClassMethod ProcessIndexZen(tSection As %String, tRS As %ResultSet, tIndexNS As %String = {$namespace}) As %Status [ Private ]
{
}

/// Get locator info from the given zen portal page.
ClassMethod %GetLocatorInfo(pClass As %String, Output pInfo)
{
}

}
