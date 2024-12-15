///
/// This class provides cluster analysis for a set of ordered objects. One can also think of it as one-dimensional cluster analysis.
///
/// <p>Methods in this class divide the set into a given number of subsets trying to optimize a given target value. Target value can be:
/// <ul>
/// <li> Cost, i.e. the sum of the sum of squared deviations from the mean-value within each cluster
/// <li> Correlation between clusters (regions) and entities
/// <li> Loss of information caused by using a region as a hole instead of every entity in the region
/// </ul>
Class %DeepSee.extensions.clusters.Ordered Extends %RegisteredObject [ System = 4 ]
{

/// This method clusters one-dimensional ordered data into <var>nc</var> clusters.
/// <p>
/// The algorithm is described in:
/// 	<br>Helmuth Spaeth,
///    	<br>Cluster Analysis Algorithms for Data Reduction and Classification of Objects,
///    	<br>Ellis Horwood, 1980, page 63, QA278 S6813.
/// <p>
/// Input data is given as a multidimensional array <var>m</var>. The top value of <var>m</var> must be the number of
/// data objects in the array. The array contains numerical values m(1:m) for each object.
/// <p>In most cases <var>key</var> should be an empty string. In such a case all calculations are done in memory.
///  If <var>key</var> has value then this value is used as a subscript ot a process private globals that hold
///  intermediate results. This will make the calculations significantly slower but will allow to deal with
///  larger amount of objects.
///  <p> The result is returned in teh form of multi-dimensional array <var>q</var>.
///  q(1:nc,1:nc), describes the clusters of data.
///    The last row of <var>q</var> stores the first element in each cluster.
///    Thus cluster 1 contains data items q(nc,1) through q(nc,2)-1.
///    Other information is contained in previous rows.  In particular,
///    in row J, columns 1 through J, there is similar information
///    about a partition involving J clusters.
ClassMethod ordered(m As %Integer, ByRef key, nc As %Integer, Output q) As %Status
{
}

ClassMethod test1(nc As %Integer = 4, n As %Integer = 10, useGlobals As %Boolean = 0) [ Internal ]
{
}

ClassMethod test2(nc As %Integer = 4, n As %Integer = 10) [ Internal ]
{
}

ClassMethod test3(nc As %Integer = 4, n As %Integer = 10) [ Internal ]
{
}

/// This method prints verbose information about clustering results obtained by method
/// <METHOD>ordered</METHOD>. Input data is taken in the same way as by <METHOD>ordered</METHOD> method.
ClassMethod print(m As %Integer, nc As %Integer, ByRef key, ByRef q)
{
}

/// This method calculates Pearson-Gamma correlation coefficent for clustering obtained by method
/// <METHOD>ordered</METHOD>.
/// Input data is taken in the same way as by <METHOD>ordered</METHOD> method.
/// <p> For more information about Pearson-Gamma correlation coefficent see <CLASS>PearsonGamma</CLASS>
ClassMethod pg(m As %Integer, nc As %Integer, ByRef key, ByRef q, ByRef sc As %Status) As %Double
{
}

}
