/// Calculate linear regression information about X,Y data set return as %List
/// Base class for MDX Linear Regression Functions
Class %ZEN.Report.Aggregate.LinearRegression Extends %ZEN.Report.CustomAggregate [ Not Abstract, Deprecated, System = 4 ]
{

/// Keeps a running total of the sum of the squares of the processed items
Property SumOfX As %Double [ InitialExpression = 0 ];

Property SumOfY As %Double [ InitialExpression = 0 ];

Property SumOfXY As %Double [ InitialExpression = 0 ];

Property SumOfXSquared As %Double [ InitialExpression = 0 ];

/// Keeps a running count of values processed
Property Count As %Integer [ InitialExpression = 0 ];

/// Processes each new value (x,y) pair in %List
Method ProcessValue(pValue As %List) As %Status
{
}

/// Returns $LB(a,b) where y = a * x + b
/// Returns null if denominator will be zero
Method GetResultList() As %String
{
}

}
