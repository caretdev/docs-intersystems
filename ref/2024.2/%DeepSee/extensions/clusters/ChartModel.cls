Class %DeepSee.extensions.clusters.ChartModel [ Abstract, System = 4 ]
{

XData clusteringOptions [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

XData status1Pane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

XData status2Pane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

XData tableControlPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// The name of the clustering model
Property Dataset As %String;

/// Number of data points in the whole dataset
Property dsCount As %ZEN.Datatype.integer;

/// Number of Dimensions included in current model.
Property dimensionality As %ZEN.Datatype.integer;

/// True if data has been updated
Property datasetHasChanged As %ZEN.Datatype.boolean;

/// True if clustering options have been updated
Property clusteringHasChanged As %ZEN.Datatype.boolean;

Property method As %ZEN.Datatype.string;

/// Number of Clusters as calculated by current model.
Property NClusters As %Integer;

/// Are we working with the sample or with the whole dataset? True for CLARA.
Property sampling As %ZEN.Datatype.boolean;

/// Sample Size for samling methods
Property sampleSize As %ZEN.Datatype.integer;

Property Normalize As %Boolean [ InitialExpression = 0 ];

Property Ready As %Boolean;

/// The minimum value on current X axis
Property XMin As %ZEN.Datatype.float;

/// The maximum value on current X axis
Property XMax As %ZEN.Datatype.float;

/// The minimum value on current Y axis
Property YMin As %ZEN.Datatype.float;

/// The maximum value on current Y axis
Property YMax As %ZEN.Datatype.float;

Property ErrorStatus As %Status;

ClientMethod onYRefresh() [ Language = javascript ]
{
}

ClientMethod checkParameters() [ Language = javascript ]
{
}

ClientMethod alertIfError(sc) [ Language = javascript ]
{
}

ClientMethod methodChanged() [ Language = javascript ]
{
}

ClientMethod sampleSizeChanged() [ Language = javascript ]
{
}

ClientMethod nclChanged() [ Language = javascript ]
{
}

ClientMethod setParameters() [ Language = javascript ]
{
}

Method UpdateDataset() As %ZEN.proxyObject [ ZenMethod ]
{
}

Method UpdateView() As %ZEN.proxyObject [ ZenMethod ]
{
}

Method %Init() As %Status
{
}

Method %UpdateAll() As %Status
{
}

Method %UpdateView() As %Status
{
}

Method %GetCurrentNCL() As %Integer
{
}

Method %HasDataChanged() As %Boolean
{
}

Method %HasClusteringChanged() As %Boolean
{
}

Method %ExecuteAnalysis() As %Status
{
}

ClassMethod ErrObj(sc As %Status) As %ZEN.proxyObject
{
}

Method %SetModelData() As %Status [ Abstract ]
{
}

Method %SetClusteringParameters() As %Status [ Abstract ]
{
}

Method %ComputeValues() As %Status [ Abstract ]
{
}

Method %UpdateControls() As %Status [ Abstract ]
{
}

Method %UpdateStatusInfo() As %Status [ Abstract ]
{
}

}
