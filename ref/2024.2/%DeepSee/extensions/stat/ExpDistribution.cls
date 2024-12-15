/// A class to represent Exponential Distribution
Class %DeepSee.extensions.stat.ExpDistribution Extends (%RegisteredObject, AbstractContinuousDistribution) [ System = 4 ]
{

Property Lambda As %Double;

/// Creates a new object for Exponential Distribution with the given rate parameter <var>lambda</var>
ClassMethod create(lambda As %Double) As ExpDistribution
{
}

Method cdf(x1 As %Double, x2 As %Double = "") As %Double
{
}

Method pdf(x As %Double) As %Double
{
}

}
