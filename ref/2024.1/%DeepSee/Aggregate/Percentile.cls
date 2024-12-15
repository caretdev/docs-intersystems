Class %DeepSee.Aggregate.Percentile Extends aggregate [ System = 4 ]
{

Property percentile As %Double;

/// Sorted array of processed values
Property SortedValues [ MultiDimensional ];

/// ProcessValue is called sequentially on each value in a target set. This sorts the values by filing them into the SortedValues array
/// with the incoming value as the first subscript.
Method ProcessValue(pValue As %Double) As %Status
{
}

/// Returns the percentile. Returns "" for an empty data set.
Method GetResult(Output pStatus As %Status) As %Double
{
}

}
