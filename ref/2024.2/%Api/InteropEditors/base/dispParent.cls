Class %Api.InteropEditors.base.dispParent Extends %REST.disp [ System = 4 ]
{

/// Override AccessCheck - only Rule APIs supported by this REST dispatch class.
/// Access check will be expanded when different APIs.
ClassMethod AccessCheck(Output pAuthorized As %Boolean = 0) As %Status [ Internal ]
{
}

/// This OnPreDispatch assumes any version prefix of the URL has already been removed
/// and therefore takes namespace from the 2nd part
ClassMethod OnPreDispatch(pUrl As %String, pMethod As %String, ByRef pContinue As %Boolean) As %Status [ Internal ]
{
}

/// Change to run in specified namespace.
ClassMethod %AdjustNamespace(namespace As %String, updateRequired As %Boolean) As %Boolean [ Internal ]
{
}

}
