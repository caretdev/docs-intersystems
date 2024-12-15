///
Class %ZEN.Report.Aggregate.LinRegWithStorage Extends %ZEN.Report.Aggregate.LinearRegression [ Deprecated, System = 4 ]
{

/// Array of processed values
Property x As array Of %Integer;

Property y As array Of %Integer;

/// Processes each new value (x,y) pair in %List
Method ProcessValue(pValue As %List) As %Status
{
}

}
