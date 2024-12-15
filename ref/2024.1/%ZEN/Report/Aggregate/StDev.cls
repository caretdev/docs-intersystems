/// Standard deviation ("sub population") Aggregate
Class %ZEN.Report.Aggregate.StDev Extends %ZEN.Report.CustomAggregate [ Deprecated, System = 4 ]
{

/// Keeps a running count of values processed
Property Count As %Integer [ InitialExpression = 0 ];

/// Array of processed values
Property data As array Of %Integer;

Property preprocessValue As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

Property postprocessResult As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Processes each new value
Method ProcessValue(pValue As %Double) As %Status
{
}

/// Returns the variance of the values processed
/// Note we divide by n-1 since this is unbiased variance
Method GetResult() As %String
{
}

}
