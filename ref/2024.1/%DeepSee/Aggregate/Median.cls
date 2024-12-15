Class %DeepSee.Aggregate.Median Extends aggregate [ System = 4 ]
{

/// Returns the median. Returns "" for an empty data set.
/// Uses a divide and conquer selection algorithm.
Method GetResult(Output pStatus As %Status) As %Double
{
}

/// Selects the kth smallest element in the set of values
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
