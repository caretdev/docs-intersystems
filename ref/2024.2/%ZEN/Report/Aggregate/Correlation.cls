///
Class %ZEN.Report.Aggregate.Correlation Extends %ZEN.Report.CustomAggregate [ Deprecated, System = 4 ]
{

/// Number of values processed
Property Count As %Integer [ InitialExpression = 0 ];

Property SUMPRODXY As %Double [ InitialExpression = 0 ];

Property SUMX As %Double [ InitialExpression = 0 ];

Property SUMY As %Double [ InitialExpression = 0 ];

Property SUMX2 As %Double [ InitialExpression = 0 ];

Property SUMY2 As %Double [ InitialExpression = 0 ];

Method ProcessValue(pValue As %List) As %Status
{
}

/// Returns the correlation coefficient. Returns "" if the denominator would be zero
Method GetResult() As %String
{
}

}
