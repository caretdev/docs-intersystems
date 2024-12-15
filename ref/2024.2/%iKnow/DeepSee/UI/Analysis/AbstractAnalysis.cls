Class %iKnow.DeepSee.UI.Analysis.AbstractAnalysis Extends %DeepSee.UI.Analysis.AbstractAnalysis [ Abstract, Deprecated, System = 4 ]
{

Property domain As %ZEN.Datatype.integer;

Property filter As %ZEN.Datatype.string;

Property page As %ZEN.Datatype.integer [ InitialExpression = 1 ];

/// Whether or not to build cell-level filters as well
Parameter BUILDCELLFILTERS [ Internal ] = 0;

Method BuildIKnowFilters(pIKnowMeasure As %String) As %Status [ Private ]
{
}

Method BuildIKnowFilterForCell(pIKnowMeasure As %String, ByRef pRS As %DeepSee.ResultSet, pRow As %Integer, pCol As %Integer, pAllRows As %Boolean, pAllCols As %Boolean, Output pFilters, Output pCellId As %Integer) As %iKnow.Filters.Filter
{
}

XData paneSelMeasure [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod changeMeasureClient() [ Language = javascript ]
{
}

ClientMethod onChangeMeasureClient() [ Language = javascript ]
{
}

Method ChangeMeasure(pMeasure As %String) As %Status [ Final, ZenMethod ]
{
}

Method OnChangeMeasure(pMeasure As %String) As %Status [ Private ]
{
}

Method %OnAfterCreatePage() As %Status [ Final ]
{
}

Method OnAfterCreatePage() As %Status [ Private ]
{
}

///  Add include files to support color schemes.
Method %OnDrawHTMLHead() As %Status
{
}

///  Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

}
