/// This represents a calculated member within an MDX query.
Class %DeepSee.Query.calculatedMember Extends set [ System = 3 ]
{

/// Name of the dimension this calculated member is associated with.
Property parentDimension As %DeepSee.Datatype.string(MAXLEN = 1000, XMLPROJECTION = "attribute");

/// Name of this calculated member.
Property memberName As %DeepSee.Datatype.string(MAXLEN = 1000, XMLPROJECTION = "attribute");

/// Original name of this calculated member (in its original case).
Property originalName As %DeepSee.Datatype.string(MAXLEN = 1000, XMLPROJECTION = "none");

/// Full name of quality measure (if appropriate) with catalog and set information.
Property qmsrName As %DeepSee.Datatype.string(MAXLEN = 1000, XMLPROJECTION = "none");

/// This specifies where this calculated member was defined.
Property origin As %DeepSee.Datatype.string(MAXLEN = 50, VALUELIST = ",query,cube,session", XMLPROJECTION = "none") [ InitialExpression = "query", Internal ];

/// Solve order to apply to this member.
Property solveOrder As %Integer(MINVAL = 0, XMLPROJECTION = "attribute");

/// Format string to apply to this member.
Property formatString As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// Set true when the definition of this calculated member has been resolved into a query graph
/// and added to the children of this node.
Property isResolved As %Boolean(XMLPROJECTION = "none") [ InitialExpression = 0 ];

/// Original definition of this member.
Property definition As %DeepSee.Datatype.string(MAXLEN = 1000, XMLPROJECTION = "none");

/// Convert this node to its text representation.
/// Note, this is assumed to be called from the context of an axis or slicer
/// so it returns the name of the calculated member itself and not its definition.
Method %ToString(Output pSC As %Status) As %String
{
}

/// Return type of this node.
Method %GetType() As %String
{
}

/// Execute and build the axes output for this set.
Method %ProcessAxes(pCube As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pVisible As %Boolean = 1) As %Status [ Internal ]
{
}

}
