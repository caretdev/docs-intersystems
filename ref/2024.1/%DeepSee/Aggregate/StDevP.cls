Class %DeepSee.Aggregate.StDevP Extends aggregate [ System = 4 ]
{

Property SUMX As %Double [ InitialExpression = 0 ];

Property SUMX2 As %Double [ InitialExpression = 0 ];

Method ProcessValue(pValue As %Double) As %Status
{
}

/// Returns the standard deviation - biased, works if sample is whole populations
Method GetResult(Output pStatus As %Status) As %Double
{
}

}
