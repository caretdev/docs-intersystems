/// Provides common base for various continues distributions.
Class %DeepSee.extensions.stat.AbstractContinuousDistribution Extends AbstractDistribution [ System = 4 ]
{

Parameter MINVAL As COSEXPRESSION [ Internal ] = 1.0E-125;

Parameter Continuous As BOOLEAN [ Abstract, Internal ] = 1;

/// Returns 1
ClassMethod %IsContinuous() As %Boolean
{
}

/// An interface method for cumulative distribution function (CDF). Optionally provides a cumulative probability
/// of a value being between two values <var>x1</var> and <var>x2</var>.
/// <p>
/// If called with 1 argument(<var>x1</var>) or if the value of second argument is empty string then
/// returns CDF value for <var>x1</var>. If called with two arguments, <var>x1</var> and <var>x2</var> then returns
/// a probability of a value being between <var>x1</var> and <var>x2</var>.
Method cdf(x1 As %Double, x2 As %Double = "") As %Double [ Abstract ]
{
}

/// An interface method for probability distribution function (PDF).
/// Returns PDF value for <var>x</var>.
Method pdf(x As %Double) As %Double [ Abstract ]
{
}

/// Returns a discrete distribution between values <var>x0</var> and <var>x1</var> constructed from
/// this continues distribution.
/// The discrete distribution is divided into <var>n</var> bins.
Method GetDiscreteDistribution(x0 As %Double, x1 As %Double, n As %Integer, Output sc As %Status) As Abstract1DDistribution
{
}

Method GetLogLikelihood(Q As AbstractDistribution, Output sc As %Status) As %Double
{
}

Method logL(Q As Abstract1DDistribution, Output sc As %Status) As %Double [ Private ]
{
}

}
