/// This class calculates Calinski-Harabasz index. Calinski-Harabasz use the
/// Variance Ratio Criterion which is analogous to F-Statistics to estimate
/// the number of clusters a given data naturally falls into. They minimize
/// Within Cluster/Group Sum of Squares and maximize Between Cluster/Group Sum of Squares.
/// <p>
/// Validity indices are used in Cluster Validation
/// and determination of the optimal number of clusters.
Class %DeepSee.extensions.clusters.CalinskiHarabasz Extends %RegisteredObject [ System = 4 ]
{

Property Model As AbstractModel;

Property normalize As %Boolean [ InitialExpression = 1 ];

Property SubsetKey As %Integer;

Method calculateForSample(SampleSize As %Integer, Output sc As %Status) As %Double
{
}

Method calculate(Output sc As %Status) As %Double
{
}

Method traceB() As %Double
{
}

Method traceW() As %Double
{
}

Method GetSubsetCentroids(Output zz)
{
}

Method traceBSubset(zz) As %Double
{
}

Method traceWSubset(zz) As %Double
{
}

}
