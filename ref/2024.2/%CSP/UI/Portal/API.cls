/// This class defines system APIs used by the Systems Management Portal
Class %CSP.UI.Portal.API [ Abstract ]
{

/// This method returns system information used by the System Manager Portal's About page.
/// It also includes additional data about the system useful for WRC.
///
ClassMethod GetSystemInfo(Output pObject As %ZEN.proxyObject) As %Status
{
}

/// This entry returns information needed by the Contact WRC page for sending new WRC issue email.<br/>
/// "minib" will be displayed as the default system info for the mail body.<br/>
/// Support can add or remove entries from here.
ClassMethod GetInfoForContactWRC(Output pObject As %ZEN.proxyObject) As %Status
{
}

/// Returns last InterSystems IRIS start time.
ClassMethod TimeSince() As %String
{
}

}
