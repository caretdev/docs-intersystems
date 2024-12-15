/// A class to represent Normal Distribution
Class %DeepSee.extensions.stat.NormalDistribution Extends (%RegisteredObject, AbstractContinuousDistribution) [ System = 4 ]
{

Parameter SQRT2PI As STRING [ Internal ] = 2.506628274631;

Property StdDev As %Double;

Property c1 As %Double [ Private ];

/// Creates a new object for Normal Distribution with the given <var>mean</var> value and <var>variance</var>.
ClassMethod create(mean As %Double, variance As %Double) As NormalDistribution
{
}

Method cdf(x1 As %Double, x2 As %Double = "") As %Double
{
}

ClassMethod fi(x As %Double) As %Double
{
}

Method pdf(x As %Double) As %Double
{
}

}
