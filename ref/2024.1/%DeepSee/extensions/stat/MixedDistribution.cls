/// Represents multicomponent continues distribution. For example let the
/// user to create a distribution consisting of mixed Gaussian components or
/// a mixed Normal/Exponential distribution.
///
/// <p>
/// Here is an example of it's usage:
/// <example>
/// set ndist = ##class(%DeepSee.extensions.stat.NormalDistribution).create(m, (sigma * sigma))
/// set edist = ##class(%DeepSee.extensions.stat.ExpDistribution).create(lambda)
/// set mdist = ##class(%DeepSee.extensions.stat.MixedDistribution).%New()
/// set sc = mdist.AddComponent(ndist, w)
/// Quit:$$$ISERR(sc)
/// set sc = mdist.AddComponent(edist, (1-w))
/// Quit:$$$ISERR(sc)
/// set sc = mdist.balance()
/// Quit:$$$ISERR(sc)
/// w "Mean = "_mdist.Mean
/// w "; Var = "_mdist.Variance
/// w "; Entropy = "_mdist.Entropy, !
/// 	</example>
Class %DeepSee.extensions.stat.MixedDistribution Extends (%RegisteredObject, AbstractContinuousDistribution) [ System = 4 ]
{

Property N As %Integer [ InitialExpression = 0 ];

Property w As %Double [ MultiDimensional ];

Property P As AbstractContinuousDistribution [ MultiDimensional ];

/// Add a component <var>p</var> to the distribution with the given <var>weight</var>. After all components
/// are added application must call <METHOD>balance</METHOD>
Method AddComponent(p As AbstractContinuousDistribution, weight As %Double) As %Status
{
}

/// The method to call after all components of the distribution are specified.
Method balance() As %Status
{
}

Method cdf(x1 As %Double, x2 As %Double = "") As %Double
{
}

Method pdf(x As %Double) As %Double
{
}

}
