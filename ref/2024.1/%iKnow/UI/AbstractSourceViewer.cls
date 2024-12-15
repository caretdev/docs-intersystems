Class %iKnow.UI.AbstractSourceViewer Extends %iKnow.UI.AbstractPortal [ Abstract, Deprecated, System = 4 ]
{

Property Loader As %iKnow.Source.Loader;

XData btnInputPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method ProcessInput(pText As %String(MAXLEN=32767), pConfig As %String, pLanguages As %String = "") As %Integer [ ZenMethod ]
{
}

Method DeleteCurrentVirtualSource() As %Status [ ZenMethod ]
{
}

ClientMethod realTimeInputClient(endModal) [ Language = javascript ]
{
}

ClientMethod displayInputScreen() [ Language = javascript ]
{
}

ClientMethod onProcessInputClient() [ Language = javascript ]
{
}

ClientMethod onunloadHandler() [ Language = javascript ]
{
}

Method GetSourceDomainId() As %Integer [ Private ]
{
}

}
