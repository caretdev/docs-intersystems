/// This class provides an implemantation of Partitioning Around Medoids (PAM) algorithm adding
/// Simulated Annealing (See <a href="http://en.wikipedia.org/wiki/Simulated_annealing">Wikipedia article<a>
/// for more information) to avoid falling into a local minimum.
Class %DeepSee.extensions.clusters.PAMSA Extends %DeepSee.extensions.clusters.PAM [ System = 4 ]
{

Property T As %Double [ Internal ];

Property TMin As %Double [ Internal ];

Property TDen As %Double [ InitialExpression = 1.1, Internal ];

Property Extensive As %Boolean [ InitialExpression = 0 ];

ClassMethod New(dsName As %String, Output sc As %Status) As PAMSA
{
}

ClassMethod Open(dsName As %String, Output sc As %Status) As PAMSA
{
}

ClassMethod Create(dsName As %String, new As %Boolean, Output sc As %Status) As PAMSA [ Private ]
{
}

Method Execute() As %Status
{
}

Method cool() [ Internal ]
{
}

Method try(Output accepted As %Boolean) As %Status [ Internal ]
{
}

Method tryDouble(e0 As %Double, ByRef medoids, Output accepted As %Boolean) As %Status [ Internal ]
{
}

Method trySimple(e0 As %Double, Output accepted As %Boolean) As %Status [ Internal ]
{
}

Method AcceptReject(e0 As %Double, e1 As %Double) As %Boolean [ Internal ]
{
}

Method RollBackOnReject(medoids) [ Internal ]
{
}

Method TAssign() As %Status [ Internal ]
{
}

Method estimateInitialT() [ Internal ]
{
}

}
