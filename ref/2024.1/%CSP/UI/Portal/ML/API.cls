/// This class defines Machine Learning UI APIs used by the Systems Management Portal
Class %CSP.UI.Portal.ML.API [ Abstract ]
{

/// This method returns all values of ML configurations.
///
ClassMethod GetMLConfigs(Output pObject As %ZEN.proxyObject) As %Status
{
}

/// Given a ML config name, return proxy object with details for this config.<br>
/// This method is also called from %CSP.UI.Portal.ML.Configuration page directly.
ClassMethod GetMLConfig(pName As %String) As %ZEN.proxyObject
{
}

}
