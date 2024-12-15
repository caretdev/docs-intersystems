/// This class calculates Average Silhouette Width index.
/// The technique provides a succinct graphical representation of how well each object
/// lies within its cluster. See <a href="http://en.wikipedia.org/wiki/Silhouette_%28clustering%29">Wikipedia article<a>
/// for more information.
/// <p>
/// Validity indices are used in Cluster Validation
/// and determination of the optimal number of clusters.
Class %DeepSee.extensions.clusters.ASW Extends %RegisteredObject [ System = 4 ]
{

Property Model As AbstractModel;

Property SubsetKey As %Integer;

Method calculateForSample(SampleSize As %Integer, Output sc As %Status) As %Double
{
}

Method calculate(Output sc As %Status) As %Double
{
}

Method s(i As %Integer, Output s As %Double, Output neigbour As %Integer) As %Status
{
}

Method ab(i As %Integer, Output a As %Double, Output b As %Double, Output neigbour As %Integer) As %Status
{
}

}
