/// This class provides an implemantation of CLARA (Clustering for Large Applications) algorithm.
/// <p>
/// An obvious way of clustering larger datasets is to try and extend existing methods so
/// that they can cope with a larger number of objects. The focus is on clustering large numbers
/// of objects rather than a small number of objects in high dimensions.
/// Kaufman and Rousseeuw (1990) suggested the CLARA (Clustering for Large Applications)
/// algorithm for tackling large applications. CLARA extends their k-medoids approach
/// or a large number of objects. It works by clustering a sample from the dataset and
/// then assigns all objects in the dataset to these clusters.
/// <p>
/// CLARA (CLustering LARge Applications) relies on the sampling approach to handle large data sets.
/// Instead of finding medoids for the entire data set, CLARA draws a small sample from the data set
/// and applies the PAM algorithm to generate an optimal set of medoids for the sample.
/// The quality of resulting medoids is measured by the average dissimilarity between every object
/// in the entire data set D and the medoid of its cluster
/// <p>
/// To alleviate sampling bias, CLARA repeats the sampling and clustering process a pre-defined
/// number of times and subsequently selects as the final clustering result the set of medoids
/// with the minimal cost.
Class %DeepSee.extensions.clusters.CLARA Extends PAM [ System = 4 ]
{

/// Sample Size to use for one PAM run
Property SampleSize As %Integer [ InitialExpression = 100 ];

/// Whether to use Simulated Annealing in each PAM run for a sample (not recommended).
Property UseSA As %Boolean [ InitialExpression = 0 ];

/// Unused in current implementation
Property CacheCost As %Integer [ InitialExpression = -1 ];

/// Treshold to determine when to stop
Property Treshold As %Double [ InitialExpression = 0.001 ];

/// A minimum number of idle iterations (i.e. iterations that do not improve the total cost).
Property NIdle As %Integer [ InitialExpression = 5 ];

ClassMethod New(dsName As %String, Output sc As %Status) As CLARA
{
}

ClassMethod Open(dsName As %String, Output sc As %Status) As CLARA
{
}

ClassMethod Create(dsName As %String, new As %Boolean, Output sc As %Status) As CLARA [ Private ]
{
}

Method Prepare() As %Status
{
}

Method IsPrepared() As %Boolean
{
}

Method Execute() As %Status
{
}

Method ExecuteLoop() As %Status [ Internal ]
{
}

Method CreateSample(tempds As %String, uniform As %Boolean, Output sc As %Status) As %DeepSee.extensions.clusters.PAM [ Internal ]
{
}

Method GenerateRandomSample(tempds As %String) As %Status [ Internal ]
{
}

Method GenerateUniformSample(tempds As %String) As %Status [ Internal ]
{
}

Method Merge(model As %DeepSee.extensions.clusters.PAM) As %Status [ Internal ]
{
}

}
