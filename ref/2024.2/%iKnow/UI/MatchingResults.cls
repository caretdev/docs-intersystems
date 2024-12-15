/// <p>This is a sample User Interface built on top of the iKnow query APIs, displaying the results
/// of the iKnow Smart Matching API by highlighting matched entities (bold, colored), CRCs (italic)
/// and paths (underlined). Select a source from the dropdown list to see all matched elements in
/// the box below. Clicking any highlighted entity will bring up a detail overview of the
/// matched elements.</p>
Class %iKnow.UI.MatchingResults Extends %iKnow.UI.AbstractSourceViewer [ Deprecated, System = 4 ]
{

Parameter PAGENAME = "iKnow Matching Results";

Property dictionaries As %ZEN.Datatype.string(ZENURL = "DICTIONARIES");

Property targets As %ZEN.Datatype.string(ZENURL = "TARGETS");

XData Style
{
}

Property virtualSource As %Integer [ Internal ];

Method virtualSourceGet() As %Integer [ Internal, ServerOnly = 1 ]
{
}

XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method OnUpdateDomain(domainId As %Integer) As %Status
{
}

Method MakeEntityLink(entity As %String) As %String
{
}

Method OnUpdateSource(sourceId As %Integer) As %Status
{
}

Method UpdateDMO(dmoId As %Integer) As %Status [ ZenMethod ]
{
}

Method UpdateEntOccId(entOccId As %Integer) As %Status [ ZenMethod ]
{
}

ClientMethod onUpdateSourceClient() [ Language = javascript ]
{
}

Method DrawResult(seed As %ZEN.Datatype.string) As %Status
{
}

Method GetNextMatchForEO(forward As %String) As %Integer [ ZenMethod ]
{
}

ClientMethod prevMatch() [ Language = javascript ]
{
}

ClientMethod nextMatch() [ Language = javascript ]
{
}

ClientMethod clickEntOccClient(entOccId) [ Language = javascript ]
{
}

ClientMethod displayMatchClient(dmo) [ Language = javascript ]
{
}

Method DrawInfo(seed As %ZEN.Datatype.string) As %Status
{
}

Method DrawElementRole(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

Method DrawElementLiteral(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

ClientMethod onProcessInputClient() [ Language = javascript ]
{
}

Method MatchVirtualSource() As %Status [ ZenMethod ]
{
}

Method GetInfoPaneText() As %String
{
}

ClientMethod updateHighlights() [ Language = javascript ]
{
}

Method SetHighlights(pDictionaries, pTargets) As %Status [ ZenMethod ]
{
}

Method DrawDictName(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

Method DrawColorPicker(pTable As %ZEN.Component.tablePane, pName As %String, pSeed As %String) As %Status
{
}

ClientMethod selectColorClient(pDictId, pColor) [ Language = javascript ]
{
}

Method SelectColor(pDictId As %Integer, pColor As %String) As %Status [ ZenMethod ]
{
}

ClientMethod onShowDictBox() [ Language = javascript ]
{
}

Method OnAfterCreatePage() As %Status
{
}

}
