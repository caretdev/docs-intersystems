/// Standard deviation ("whole population") Aggregate
Class %ZEN.Report.Aggregate.StDevP Extends %ZEN.Report.CustomAggregate [ Deprecated, System = 4 ]
{

/// Number of values processed
Property Count As %Integer [ InitialExpression = 0 ];

Property SUMX As %Double [ InitialExpression = 0 ];

Property SUMX2 As %Double [ InitialExpression = 0 ];

Property preprocessValue As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

Property postprocessResult As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

Method ProcessValue(pValue As %Double) As %Status
{
}

/// Returns the standard deviation - biased, works if sample is whole populations
Method GetResult() As %String
{
}

}
