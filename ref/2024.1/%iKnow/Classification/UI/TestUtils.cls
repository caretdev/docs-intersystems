Class %iKnow.Classification.UI.TestUtils [ Abstract, Deprecated, System = 4 ]
{

Property highlightedSentencesOnly As %ZEN.Datatype.boolean;

XData textInputDetails [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod refreshDetails() [ Language = javascript ]
{
}

Method GetDetailInput(Output pText As %String, Output pConfig As %String, Output pDomainId As %Integer, Output pSrcId As %Integer) As %Status [ Abstract, Private ]
{
}

Method GetClassifierClass() As %String [ Abstract, Private ]
{
}

Method %OnAfterCreateDetailPane() As %Status
{
}

Method DrawCategorizedText(pSeed As %String) As %Status
{
}

Method DrawCategorizedScores(pSeed As %String) As %Status
{
}

Method DrawCategorizedTrace(pSeed As %String) As %Status
{
}

}
