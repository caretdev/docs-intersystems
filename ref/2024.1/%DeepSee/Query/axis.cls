/// This class defines an axis within a DeepSee query.
Class %DeepSee.Query.axis Extends group [ System = 3 ]
{

/// Query that this axis belongs to.
Relationship query As %DeepSee.Query.query(XMLPROJECTION = "none") [ Cardinality = one, Inverse = axes ];

/// Collection of subqueries associated with this axis.
Property subqueries As list Of %DeepSee.ResultSet(XMLPROJECTION = "NONE");

/// If true, then empty tuples (e.g. complete rows or columns) are removed
/// from the results of the query.<br/>
/// This is equivalent to the MDX "NON EMPTY" key word.
Property nonEmpty As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Reference to the context where this object is used in the overall query structure
Property context As %String(VALUELIST = "axis,filter,filterAxis", XMLPROJECTION = "none") [ InitialExpression = "axis" ];

/// List of facts this axis depends on.
Property %dependencies As %String [ Internal, MultiDimensional ];

/// List of current member markers along this axis.
Property %cmbrIndex As %String [ Internal, MultiDimensional ];

/// Copy of the original string used to produce this axis object
Property %originalSpec As %String;

/// Once calculated the axis key is stabilized for this particular object.
Property %AxisKey As %String;

/// Convert this node to its text representation.
Method %ToString(Output pSC As %Status) As %String
{
}

/// Execute and build the axes output for this axis.
Method %ProcessAxes(pCube As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer) As %Status [ Internal ]
{
}

/// Review the contents of an axis and count the number of terms within it that will translate into bit operations. This performs a blind count
/// and ignores chain/child structures so it can be called at any stage of axis construction.
Method %CountTerms(pCubeIndex As %String, pAxisKey As %String, Output pStatus As %Status) As %Integer
{
}

/// Incates whether or not this axis is a placeholder %SEARCH axis.
Method %IsSearch(Output pSC As %Status) As %Boolean [ Internal ]
{
}

/// If the axis contains a complex aggregate, copy it and set it aside in a special<br>
/// ^DeepSee.Cache.Axis(cubeKey,axisKey,"agg")<br>
/// node. A complex aggregate is marked by the presence of $LI(node,24).
ClassMethod %CopyComplexAggregate(pCube As %String, pKey As %String) As %Status [ Internal ]
{
}

}
