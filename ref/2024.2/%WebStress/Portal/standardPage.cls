Class %WebStress.Portal.standardPage Extends %ZEN.Portal.standardPage [ LegacyInstanceContext, System = 4 ]
{

/// Set this to the appropriate application class.
Parameter APPLICATION = "%WebStress.Portal.Application";

/// URL of home page (used in links).
Parameter HOMEPAGE = "%25CSP.Portal.Home.cls";

Parameter RESOURCE As STRING = "%Development";

XData contentPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnGetPageName() As %String
{
}

}
