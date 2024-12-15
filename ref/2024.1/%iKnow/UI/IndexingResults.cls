/// <p>This is a sample User Interface built on top of the iKnow APIs, visualizing the results of the
/// iKnow Smart Indexing API. You can either select an existing source from the dropdown list, or
/// use the input button to enter free text directly.</p>
Class %iKnow.UI.IndexingResults Extends %iKnow.UI.AbstractSourceViewer [ Deprecated, System = 4 ]
{

Parameter PAGENAME = "iKnow Indexing Results";

Parameter LOADINCURRENTDOMAIN = 1;

Property sortCriteria As %ZEN.Datatype.string [ InitialExpression = "frequency" ];

Property hlMode As %ZEN.Datatype.string [ InitialExpression = "full" ];

Property showStems As %ZEN.Datatype.string [ InitialExpression = "entities" ];

XData Style
{
}

XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method DrawSentences(seed As %ZEN.Datatype.string) As %Status
{
}

Method DrawConcepts(seed As %ZEN.Datatype.string) As %Status
{
}

Method DrawCrcs(seed As %ZEN.Datatype.string) As %Status
{
}

Method OnUpdateSource(sourceId As %Integer) As %Status
{
}

ClientMethod toggleHLMode(val) [ Language = javascript ]
{
}

ClientMethod toggleSortCriteria(val) [ Language = javascript ]
{
}

ClientMethod toggleStemCriteria(val) [ Language = javascript ]
{
}

ClientMethod onUpdateSourceClient(source) [ Language = javascript ]
{
}

ClientMethod displayResultsClient() As %Integer [ Language = javascript ]
{
}

ClientMethod onProcessInputClient() [ Language = javascript ]
{
}

Method GetInfoPaneText() As %String
{
}

Method OnChangeLanguageMode() As %Status
{
}

/// This method can be overridden at the subclass level to take any additional server-side
/// actions when the domain is changed.
Method OnUpdateDomain(domainId As %Integer) As %Status
{
}

}
