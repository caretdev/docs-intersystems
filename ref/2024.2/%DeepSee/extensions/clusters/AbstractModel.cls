/// This class provides a base class for implementation for different Cluster Analysis algorithms.
/// It defines storage for clustering models and provides methods to retrieve information about data and clustering.
/// <p>
/// Cluster analysis or clustering is the assignment of a set of observations into subsets
/// (called clusters) so that observations in the same cluster are similar in some sense.
///  Clustering is a method of unsupervised learning, and a common technique for statistical
/// data analysis used in many fields, including machine learning, data mining, pattern recognition,
/// image analysis, information retrieval, and bioinformatics.
/// <p>
/// By Default model data is stored in ^IRIS.Temp globals.
Class %DeepSee.extensions.clusters.AbstractModel Extends %RegisteredObject [ System = 4 ]
{

Property Dim As %Integer;

Property DSName As %String;

/// Whether to normalize distance across multiple dimensions. If set to 1 (default) then
/// distance is normalized by variances.
Property Normalize As %Boolean [ InitialExpression = 1 ];

/// The power to use in calculation of dissimilarity. Default is Euclidean distance (P=2).
/// Specify 1 for Manhattan Distance or 100 for Chebyshev distance (max between coordinates).
Property P As %Double [ InitialExpression = 2 ];

Property Verbose As %Boolean [ InitialExpression = 1 ];

/// Checks whether a model for a dataset with the name given by <var>dataset</var> argument already exists.
ClassMethod Exists(dataset As %String) As %Boolean
{
}

/// Deletes a model for a dataset with the name given by <var>dataset</var> argument.
ClassMethod Delete(dataset As %String) As %Status
{
}

ClassMethod Check(dataset As %String, exists As %Boolean) As %Status [ Internal ]
{
}

/// Checks whether the model is ready for an analysis to be executed. This is dependent on a
/// specific algorithm and therefore this method is overriden by subclasses.
Method IsPrepared() As %Boolean
{
}

/// Kills all the data associated with this model.
Method Reset()
{
}

/// Sets the data to be associated with this model. The method takes 3 arguments:
/// <ul>
/// <li> <var>rs</var> - is a result set that provides the data. The first column returned by the result set
/// is assumed to be a unique Id of teh record. It is not used in any clustering algorithms but can be retrieved
/// by the application to identify the record. It can be a database %ID or any other value that
/// makes sense to the application. Other columns provide numerical values for the coordinates of the record
/// that are used by clustering algorithms.
/// Result Set must contain at least <var>dim</var> + 1 columns.
/// <li> <var>dim</var> - The dimensionality of the model, i.e. the number of the coordinates
/// consumed by clustering algorithm.
/// <li> <var>nullReplacement</var> - Optional, of specified this is a numeric replacement for empty values.
/// </ul>
Method SetData(rs As %IResultSet, dim As %Integer, nullReplacement As %Double = -1) As %Status
{
}

Method dist(i As %Integer, j As %Integer) As %Double [ Internal ]
{
}

/// Returns the dissimilarity measure between two data points of the model. The method takes 4 arguments:
/// <ul>
/// <li> <var>i</var>, <var>j</var> - Ordinal number of the data points in the model
/// <li> <var>p</var> - Optional, if specified the power for a Minkowski distance. Default is Euclidean distance (p=2).
/// Specify 1 for Manhattan Distance or 100 for Chebyshev distance (max between coordinates).
/// <li> <var>normalize</var> - whether to normalize coordinates by their variances
/// </ul>
Method Distance(i As %Integer, j As %Integer, p As %Double = 2, normalize As %Boolean = 1) As %Double
{
}

/// Returns the dissimilarity measure between a data points of the model and a point with given coordinates.
/// The method takes 4 arguments:
/// <ul>
/// <li> <var>i</var> - The ordinal number of the data point in the model
/// <li> <var>z</var> - The multidimensional coordinates of the second point: z(1), z(2), ..., z(dim)
/// <li> <var>p</var> - Optional, if specified the power for a Minkowski distance. Default is Euclidean distance (p=2).
/// Specify 1 for Manhattan Distance or 100 for Chebyshev distance (max between coordinates).
/// <li> <var>normalize</var> - whether to normalize coordinates by their variances
/// </ul>
Method Distance1(i As %Integer, ByRef z, p As %Double = 2, normalize As %Boolean = 1) As %Double
{
}

/// Returns the dissimilarity measure between two points with given coordinates.
/// The method takes 4 arguments:
/// <ul>
/// <li> <var>z1</var>, <var>z2</var> - The multidimensional coordinates of the points: z1(1), z1(2), ..., z1(dim)
/// <li> <var>p</var> - Optional, if specified the power for a Minkowski distance. Default is Euclidean distance (p=2).
/// Specify 1 for Manhattan Distance or 100 for Chebyshev distance (max between coordinates).
/// <li> <var>normalize</var> - whether to normalize coordinates by their variances
/// </ul>
Method Distance12(ByRef z1, ByRef z2, p As %Double = 2, normalize As %Boolean = 1) As %Double
{
}

/// Returns the number of clusters in the model.
Method GetNumberOfClusters() As %Integer
{
}

/// Returns the number of all data points in the model.
Method GetCount() As %Integer
{
}

/// Returns the unque Id of the point with the ordinal number specified by <var>i</var>.
/// The unique Id is as has been assigned in <METHOD>SetData</METHOD>() method
Method GetId(i As %Integer) As %String
{
}

/// Returns the ordinal number of the point with the given ID <var>id</var>.
/// The unique <var>id</var> must correspond to the one assigned in <METHOD>SetData</METHOD>() method
Method ById(id As %RawString) As %Integer
{
}

Method GetData(i As %Integer, j As %Integer) As %String
{
}

/// Returns the dimensionality of the model.
Method GetDimensions() As %Integer
{
}

/// Returns the cluster ordinal for a given point. Point is identified by its ordinal number.
Method GetCluster(point As %Integer) As %Integer
{
}

/// Returns the dissimilarity measure as used by this clustering algorithm
/// between two data points of the model. Points are identified by their ordinal numbers.
Method GetCost(i As %Integer, j As %Integer) As %Integer
{
}

/// Iterates over all the data points assigned to a given cluster.
/// Cluster is identified by its ordinal number <var>k</var>
Method iterateCluster(k As %Integer, ByRef i As %Integer, Output id As %String, Output coordinates)
{
}

/// Convenience method.
/// Writes all data points assigned to a given cluster to the default output device.
/// Cluster is identified by its ordinal number <var>k</var>
Method printCluster(k As %Integer)
{
}

/// Returns the coordinates for the centroid for a given cluster.
/// Cluster is identified by its ordinal number <var>k</var>.
/// <br>
/// Coordinates are returned as multidimensional value: z(1), z(2), ..., z(dim)
Method GetCentroid(k As %Integer, Output z)
{
}

/// Returns the coordinates for the centroid for the whole dataset.
/// <br>
/// Coordinates are returned as multidimensional value: z(1), z(2), ..., z(dim)
Method GlobalCentroid(Output z)
{
}

Method SubsetCentroid(key As %String, Output z)
{
}

/// Returns the number of data points assigned to a given cluster.
/// Cluster is identified by its ordinal number <var>k</var>.
Method GetClusterSize(k As %Integer)
{
}

/// Convenience method.
/// Writes all data points in the dataset to the default output device.
Method printAll()
{
}

/// Returns the realtive cost of a given cluster relative to a medoid point <var>m</var>.
/// Cluster is identified by its ordinal number <var>k</var>.
/// Point <var>m</var> is identified by its ordinal number.
Method RelativeClusterCost(k As %Integer, m As %Integer) As %Double
{
}

/// Returns an object that can calculate an index used in Cluster Validation
/// and determining the optimal number of clusters. This method returns Calinski-Harabasz index.
Method GetCalinskiHarabaszIndex(normalize As %Integer = -1) As CalinskiHarabasz
{
}

/// Returns an object that can calculate an index used in Cluster Validation
/// and determining the optimal number of clusters.
/// This method returns Average Silhouette Width index.
Method GetASWIndex() As ASW
{
}

/// Returns an object that can calculate an index used in Cluster Validation
/// and determining the optimal number of clusters.
/// This method returns Pearson-Gamma index which is a correlation coefficient
/// between distance between two points and a binary function whether they
/// belong to the same cluster. This index is useful when clustering is used
/// for dimension reduction i.e. the process of reducing the number of
/// random variables under consideration
Method GetPearsonGammaIndex() As PearsonGamma
{
}

ClassMethod time(ByRef ts) As %Double [ Internal ]
{
}

Method randomSubset(size As %Integer, ByRef sc As %Status) As %Integer
{
}

Method GeneratePMML(Output pPMML As %DeepSee.PMML.Definition.PMML, ByRef pClusterNames) As %Status
{
}

}
