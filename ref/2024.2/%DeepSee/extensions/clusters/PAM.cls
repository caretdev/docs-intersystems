/// This class provides an implemantation of Partitioning Around Medoids (PAM) algorithm, a.k.a. K-Medoids
/// (do not mix with K-Means).
/// <p>
/// The PAM algorithm was developed by Leonard Kaufman and Peter J. Rousseeuw,
/// and this algorithm is very similar to K-means, mostly because both are partitional algorithms,
/// in other words, both break the datasets into groups, and both works trying to minimize the error,
/// but PAM works with Medoids, that are an entity of the dataset that represent the group in which
/// it is inserted, and K-means works with Centroids, that are artificially created entity that represent its cluster.
/// <p>
/// The PAM algorithm partitionates a dataset of n objects into a number k of clusters,
/// where both the dataset and the number k is an input of the algorithm.
/// This algorithm works with a matrix of dissimilarity, where its goal is to
/// minimize the overall dissimilarity between the representants of each cluster and its members.
/// <p>
/// Pure PAM algorithm only works when a dataset is well partitioned by its nature.
/// It first generates a random solution and then uses the steepest descent to optimize it. Therefore it
/// is prone to falling into local minimum. Two modifications implemented by subclasses <CLASS>PAMSA</CLASS>
/// (PAM with Simulated Annealing) and <CLASS>CLARA</CLASS> (Clustering for Large Applications) try to
/// alleviate this deficiency.
/// <p>
/// See <a href="http://en.wikipedia.org/wiki/K-medoids">Wikipedia article<a>
/// for more information.
Class %DeepSee.extensions.clusters.PAM Extends AbstractModel [ System = 4 ]
{

/// The number of clusters to create
Property K As %Integer;

Property Medoid [ Internal, MultiDimensional ];

ClassMethod New(dsName As %String, Output sc As %Status) As PAM
{
}

ClassMethod Open(dsName As %String, Output sc As %Status) As PAM
{
}

ClassMethod Create(dsName As %String, new As %Boolean, Output sc As %Status) As PAM [ Private ]
{
}

Method IsPrepared() As %Boolean
{
}

Method Prepare() As %Status
{
}

Method Execute() As %Status
{
}

Method ExecuteLoop() As %Status [ Internal ]
{
}

Method Init() As %Status [ Internal ]
{
}

Method GenerateMedoids() [ Internal ]
{
}

Method SetCost() As %Status [ Internal ]
{
}

Method Assign() As %Status [ Internal ]
{
}

Method Swap(Output changed As %Integer) As %Status [ Internal ]
{
}

Method SwapCluster(k As %Integer, Output changed As %Boolean) As %Status [ Internal ]
{
}

Method ClusterCost(k As %Integer) As %Double
{
}

Method CurrentTotalCost()
{
}

Method TotalCost()
{
}

}
