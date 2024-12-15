Class %iKnow.DeepSee.UI.Analysis.Entities Extends %iKnow.DeepSee.UI.Analysis.AbstractAnalysis [ Deprecated, System = 4 ]
{

Property selectedCell As %ZEN.Datatype.integer;

Property term As %ZEN.Datatype.string;

Property SkipListIds As %ZEN.Datatype.integer;

Property backgroundTimerInterval As %ZEN.Datatype.integer [ InitialExpression = 500 ];

Property sortMode As %ZEN.Datatype.string [ InitialExpression = "spread" ];

Property includeSimilar As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Property spreadAsPercentage As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Parameter BUILDCELLFILTERS [ Internal ] = 1;

Parameter ENTITYCOUNT As INTEGER = 20;

ClassMethod %GetAnalysisInfo(Output pInfo) As %Status
{
}

///  Contents of the dialog body.
XData dialogBodyContent [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnGetTitle() As %String
{
}

Method %OnGetSubtitle() As %String
{
}

Method OnAfterCreatePage() As %Status [ Private ]
{
}

Method OnChangeMeasure(pMeasure As %String) As %Status [ Private ]
{
}

Method PopulateChart(pEntities As %String = "") As %Status [ ZenMethod ]
{
}

ClassMethod BuildEntityList(pDomainId As %Integer, pFilter As %String, pSkipListIds As %String, pMode As %String = "spread", pEntities As %String = "") As %Status [ Internal ]
{
}

Method PopulateDetails(pString As %String) As %Status [ ZenMethod ]
{
}

ClassMethod BuildDetails(pDomainId As %Integer, pFilters As %List, pString As %String = "", pSkipListIds As %String, pIncludeSimilar As %Boolean = 0, pSpreadPercent As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod %OnFinishBackgroundTask(pTaskID As %String)
{
}

ClientMethod onChangeMeasureClient() [ Language = javascript ]
{
}

Method InputTerm(pBase As %String) As %String [ ZenMethod ]
{
}

ClientMethod inputTermClient(base) [ Language = javascript ]
{
}

ClientMethod removeEntityClient(entity) [ Language = javascript ]
{
}

ClientMethod analyzeStringClient(string) [ Language = javascript ]
{
}

ClientMethod refreshDataClient() [ Language = javascript ]
{
}

///  Adjust sizes of components on the page.
ClientMethod adjustSize() [ Language = javascript ]
{
}

ClientMethod onElementClick(chart) [ Language = javascript ]
{
}

ClientMethod onDetailElementClick(chart) [ Language = javascript ]
{
}

Method ExecuteEntitiesQuery(pRS As %Library.ResultSet, ByRef tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

Method ChangePage(mode As %Integer) As %Status [ ZenMethod ]
{
}

ClientMethod previousPageClient() [ Language = javascript ]
{
}

ClientMethod nextPageClient() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod getChartLabel(index, src) [ Language = javascript ]
{
}

ClientMethod getChartData(series, src) [ Language = javascript ]
{
}

ClientMethod onChangeSortMode(mode) [ Language = javascript ]
{
}

ClientMethod onChangeColorCode(cell) [ Language = javascript ]
{
}

Method GetEntityProbabilities(pEntities As %String, pCellId As %Integer) As %String [ ZenMethod ]
{
}

ClientMethod onChangeIncludeSimilar(value) [ Language = javascript ]
{
}

ClientMethod onChangeSpreadPercent(percent) [ Language = javascript ]
{
}

ClientMethod refreshDetailCaptions(includeSimilar, spreadPercent) [ Language = javascript ]
{
}

}
