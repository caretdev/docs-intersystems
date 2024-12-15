/// Aggregate for the median of a set of numerical data. The median is
/// a number with half of the data set of greater value than it, and half
/// of lesser value. For a data set with an odd size, the median is
/// a member of the data set. For a data set with an even size, the median
/// is half-way between two members of the data set.
Class %ZEN.Report.Aggregate.Median Extends %ZEN.Report.CustomAggregate [ Deprecated, System = 4 ]
{

/// Array of processed values
Property Values As array Of %Integer;

/// Number of values processed
Property Count As %Integer [ InitialExpression = 0 ];

/// Processes each new value.
Method ProcessValue(pValue As %Float) As %Status
{
}

/// Returns the median. Returns "" for an empty data set.
/// Uses a divide and conquer selection algorithm.
Method GetResult() As %String
{
}

/// Select's the kth smallest element in Values
Method select(k, left, right) [ Private ]
{
}

/// Finds the partition point
Method partition(left, right, pivotIndex) [ Private ]
{
}

Method swap(x, y) [ Private ]
{
}

}
