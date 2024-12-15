/// Utility class to build Tree models for a <class>%DeepSee.PMML.Dataset</class> object.
Class %DeepSee.PMML.Utils.TreeBuilder Extends %RegisteredObject [ System = 4 ]
{

/// The dataset to mine.
Property Dataset As %DeepSee.PMML.Dataset;

/// The target field whose value is to be derived through this tree.
/// This field should be part of <property>Dataset</property>.
Property TargetField As %String;

/// ..Tree = $i
/// ..Tree(NodeId) = $lb(parent, targetValue, confidence, count, isLeaf)
/// ..Tree(NodeId, "condition") = [AND|OR|$lb(field, operator, value)]
/// ..Tree(NodeId, "ch", ChildNode) = ""
/// ..Tree(NodeId, "distribution", value) = count
Property Tree As %Integer [ MultiDimensional ];

/// Default (maximum) number of branches per node
Property SplitsPerNode As %Integer [ InitialExpression = 2 ];

/// Minimal % of the total number of records represented by a node that should be covered by a
/// branch. If a branch covers fewer records than this value, it is ignored
Property MinimalSplitCoverage As %Numeric [ InitialExpression = 0.05 ];

/// Whether or not to track distribution information for tree nodes
Property TrackDistributions As %Boolean [ InitialExpression = 1 ];

/// Whether or not to consider null (missing) values for split criteria
Property ConsiderNullValues As %Boolean [ InitialExpression = 0 ];

/// Which metric to use to judge split quality. This metric is returned as the split "score"
/// by <method>FindSplits</method>
Property SplitScoringAlgorithm As %String(VALUELIST = ",Confidence,GiniImpurity,InformationGain") [ InitialExpression = "GiniImpurity" ];

Method %OnNew(pDataset As %DeepSee.PMML.Dataset, pTargetField As %String) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// After changing building parameters, run this method to erase the current tree structure so
/// <method>Build</method> can be run again.
Method Reset() As %Status
{
}

/// <p>Builds a tree structure with a maximum depth of <var>pMaxDepth</var>.</p>
/// <p>If a tree structure was already built, this method silently exits. Use <method>Reset</method>
/// to erase an existing tree structure.</p>
Method Build(pMaxDepth As %Integer = 3)
{
}

/// Returns the inverse of <var>pFilter</var>, equivalent to a boolean NOT of the entire <var>pFilter</var>.
Method GetInvertedFilter(ByRef pFilter, Output pInverted) As %Status
{
}

/// Appends <var>pOtherFilter</var> to <var>pFilter</var> using <var>pLogic</var> logic
Method MergeFilters(ByRef pFilter, ByRef pOtherFilter, pLogic As %String = "AND") As %Status
{
}

/// Returns the combination of filter conditions (<var>pFilters</var>) a record should satisfy
/// to end up in node <var>pNode</var>. This is a combination of the node's own condition,
/// its full ancestry and any prior siblings' conditions.
Method GetNodeFilters(pNode As %Integer, Output pFilters) As %Status
{
}

/// Splits node <var>pNode</var> in <property>SplitsPerNode</property> sub-nodes (or fewer, if
/// not enough candidate splits satisfy coverage and other selection criteria).
Method SplitNode(pNode As %Integer) As %Status
{
}

/// Returns an unsorted array of candidate splits for node <var>pNode</var>:
/// 		pSplits(n) = $lb(score, coverage, targetValue, confidence, recordCount, isLeaf)
/// 		pSplits(n,"condition") = ...
Method FindSplits(pNode As %Integer, Output pSplits) As %Status
{
}

/// Prints the tree (starting with <var>pNode</var>) to the terminal.
Method Print(pNode As %Integer = 0, pLevel As %Integer = 0, pPrintDistribution As %Boolean = 0) As %Status
{
}

ClassMethod GetCondition(ByRef pArray) As %String [ Internal ]
{
}

ClassMethod GetFieldList(ByRef pArray) As %List [ Internal ]
{
}

}
