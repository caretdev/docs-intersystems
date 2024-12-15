///
Class %ZEN.Report.Aggregate.Covariance Extends %ZEN.Report.CustomAggregate [ Deprecated, System = 4 ]
{

/// Number of values processed
Property Count As %Integer [ InitialExpression = 0 ];

Property SUMPRODXY As %Double [ InitialExpression = 0 ];

Property SUMX As %Double [ InitialExpression = 0 ];

Property SUMY As %Double [ InitialExpression = 0 ];

Method ProcessValue(pValue As %List) As %Status
{
}

/// Returns the covariance. Returns 0 if the count is zero
Method GetResult() As %String
{
}

}
