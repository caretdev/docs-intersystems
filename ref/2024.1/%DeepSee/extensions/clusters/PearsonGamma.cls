/// This class calculates Pearson-Gamma index which is a correlation coefficient
/// between distance between two points and a binary function whether they
/// belong to the same cluster.
/// <p>
/// Pearson-Gamma index is useful when clustering is used
/// for dimension reduction i.e. the process of reducing the number of
/// random variables under consideration
/// <p>
/// Validity indices are used in Cluster Validation
/// and determination of the optimal number of clusters.
Class %DeepSee.extensions.clusters.PearsonGamma Extends %RegisteredObject [ System = 4 ]
{

Property Model As AbstractModel;

Method calculate(Output sc As %Status) As %Double
{
}

Method calculateForSample(SampleSize As %Integer, Output sc As %Status) As %Double
{
}

}
