Class %DeepSee.extensions.clusters.DataController [ Abstract, System = 4 ]
{

Property xValues As list Of %ZEN.Datatype.float;

Property yValues As list Of %ZEN.Datatype.float;

Property radius As list Of %ZEN.Datatype.float;

Property group As list Of %ZEN.Datatype.float;

Property defaultRadius As %ZEN.Datatype.float [ InitialExpression = 1 ];

ClientMethod getData(series) [ Language = javascript ]
{
}

Method %InsertDataPoint(k As %Integer, x As %Double, y As %Double, r As %Double = 1)
{
}

Method %GetSeriesSize() As %Integer
{
}

Method %SetDataPoint(k As %Integer, pos As %Integer, x As %Double, y As %Double)
{
}

Method %ClearDataset()
{
}

ClassMethod %Round(x As %Float) As %Float
{
}

}
