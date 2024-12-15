Class %DeepSee.extensions.clusters.DissimilarityModel Extends AbstractModel [ System = 4 ]
{

Property LinkageType As %EnumString(VALUELIST = ",single,complete,average");

Property State [ MultiDimensional ];

Property MinSize As %Integer [ InitialExpression = 0 ];

Property Outliers As %Integer;

Property ConstructHierarchy As %Boolean [ InitialExpression = 0 ];

/// Hierarchy Tree in Newick Format
Property NewickTree As %String;

Property Tree As %String [ MultiDimensional ];

Property Mapper As %RegisteredObject;

ClassMethod New(dsName As %String, type As %EnumString, Output sc As %Status) As DissimilarityModel
{
}

ClassMethod Open(dsName As %String, type As %EnumString, Output sc As %Status) As DissimilarityModel
{
}

ClassMethod Create(dsName As %String, type As %EnumString, new As %Boolean, Output sc As %Status) As DissimilarityModel [ Private ]
{
}

Method SetCost(costCalculator As %RegisteredObject = "") As %Status
{
}

Method IsPrepared() As %Boolean
{
}

Method GetClusterDissimilarity(k1 As %Integer, k2 As %Integer, Output sc As %Status) As %Double
{
}

Method RelativeClusterCost(k As %Integer, m As %Integer, Output sc As %Status) As %Double
{
}

Method Init() As %Status
{
}

Method Reduce() As %Status
{
}

Method GetEffNumCL(Output sc As %Status) As %Integer
{
}

Method Save() As %Status
{
}

Method Execute(K As %Integer) As %Status
{
}

Method TotalCost()
{
}

Method SetSampleData(list As %List) As %Status
{
}

ClassMethod Test(N As %Integer, K As %Integer, type As %String, hier As %Boolean = 0, slist As %String = "") As %Status
{
}

}
