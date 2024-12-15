/// The parent class to use for the geenrated API management dispatch class.
Class %REST.disp Extends %CSP.REST [ System = 4 ]
{

ClassMethod OnPreDispatch(pUrl As %String, pMethod As %String, ByRef pContinue As %Boolean) As %Status [ Internal ]
{
}

/// Override AccessCheck to defer access checking until OnPreDispatch.
ClassMethod AccessCheck(Output pAuthorized As %Boolean = 0) As %Status [ Internal ]
{
}

}
