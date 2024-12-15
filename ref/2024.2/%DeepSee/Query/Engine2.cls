/// Contains additional logic for calculating the results of a DeepSee query.
Class %DeepSee.Query.Engine2 Extends %RegisteredObject [ System = 3 ]
{

/// Compute the values of cells within the result cube.<br/>
/// <var>pCube</var> is the name of the cube.<br/>
/// <var>pKey</var> is the query key.<br/>
/// <var>pBucketNo</var> is the logical bucket number to execute.<br/>
/// <var>pSlotNo</var> is the physical bucket slot number containing the results.<br/>
/// <var>pSection</var>, if defined, specifies, by axis, which sections of the result to calculate:<br/>
/// pSection(axis) = $LB(startNode,endNode)<br/>
/// <var>pTrace</var> is a debugging flag.<br/>
/// <var>pStats</var> is an array of statistics.<br/>
ClassMethod %ExecuteForBucket(pCube As %String, pKey As %String, pBucketNo As %Integer, pSlotNo As %Integer, ByRef pSections As %List, pTrace As %Boolean = 0, ByRef pStats) As %Status [ Internal ]
{
}

/// Insert the given fact/key into the given cell spec.
ClassMethod %SetFactIntoSpec(pFactCount As %Integer, pSpec As %List, pFact As %Integer, pKey As %String, pForce As %Boolean = 0) As %List [ Internal ]
{
}

/// Combine 2 cell "specs" and return the resulting spec.<br>
/// Optionally set the <var>pRelationsOnly</var> flag to combine only the relation components of the spec.
ClassMethod %CombineSpecs(pFactCount As %Integer, pSpec1 As %List, pSpec2 As %List, pRelationsOnly = 0) As %List [ Internal ]
{
}

/// Apply the slicer mask to a given query and bucket number.
ClassMethod %ApplySlicerMask(pCube As %String, pSlicerKey As %String = "", ByRef pExtent, pHasRelations As %Boolean = 0, ByRef pRelation) As %Status [ Internal ]
{
}

/// For a given cube and query (key) return the number of
/// axes (including the slicer).<br/>
/// <var>pAxisType</var> is an array containing the type of each axis: "axis" or "slicer".<br/>
/// <var>pAxisNode</var> is an array containing the top node number for each axis.<br/>
/// <var>pAxisSize</var> is an array containing the number of leaf nodes for each axis.<br/>
/// <var>pSlicerAxis</var> indicates whether there is a slicer axis. If there is this will contain the axis number for the slicer otherwise 0.<br/>
ClassMethod %GetAxisInfo(pCubeName As %String, pKey As %String, Output pAxisType As %String, Output pAxisKey As %String, Output pAxisSize As %Integer, Output pSlicerAxis As %Boolean) As %Integer
{
}

/// Take a cell address and return its canonic form.
ClassMethod %CanonizeAddr(pAddr As %String) As %String [ Internal ]
{
}

/// Take a relationship key code and return its canonic form (put all pieces in
/// alpha-order).
ClassMethod %CanonizeRelationKey(pKeyCode As %String) As %String [ Internal ]
{
}

/// Diagnostic.
ClassMethod PrintBits(pMsg, pBits) [ Internal ]
{
}

}
