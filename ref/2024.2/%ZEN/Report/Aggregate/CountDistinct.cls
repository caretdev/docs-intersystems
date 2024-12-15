/// Aggregate for counting the number of distinct values in a set of data
Class %ZEN.Report.Aggregate.CountDistinct Extends %ZEN.Report.CustomAggregate [ Deprecated, System = 4 ]
{

/// Array of values processed
Property Values As array Of %String;

/// Running count of distinct values processed
Property Count As %Integer [ InitialExpression = 0 ];

/// Processes each new value
Method ProcessValue(pValue As %String) As %Status
{
}

/// Return the count of distinct values processsed
Method GetResult() As %String
{
}

}
