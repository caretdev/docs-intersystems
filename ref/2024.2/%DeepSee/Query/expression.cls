/// This class defines an expression within a DeepSee query.<br/>
/// An expression belongs to a <class>set</class>.
/// Though an expression is a group, it only makes use of its first two children.
Class %DeepSee.Query.expression Extends group [ System = 3 ]
{

/// Logical operator that is applied to the children of this expression.
/// This can be an operator (such as "+", or a SCALAR function, such as "SQRT").
Property operator As %DeepSee.Datatype.string(MAXLEN = 25, XMLPROJECTION = "attribute");

/// Set true if this operator is a scalar function.
Property isScalarFunction As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// If this operator is a scalar function, this is the number of expected arguments.
/// This takes the form "arguments:optional arguments".
Property scalarArgCount As %String(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Axis label used for this expression.
Property label As %DeepSee.Datatype.string(XMLPROJECTION = "attribute") [ InitialExpression = "Expression" ];

/// Format string to apply to this member.
Property formatString As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// Solve order to apply to this expression (applied from outer calcMember).
Property solveOrder As %Integer(MINVAL = 0, XMLPROJECTION = "attribute");

/// Return the type of this node.<br/>
Method %GetType() As %String
{
}

/// Convert this node to its text representation.
Method %ToString(Output pSC As %Status) As %String
{
}

/// Execute and build the axes output for this expression.
Method %ProcessAxes(pCube As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pVisible As %Boolean = 1) As %Status [ Internal ]
{
}

/// Process the filter output for this expression.
Method %ProcessFilter(ByRef pFilterTree As %List, pCube As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer) As %Status [ Internal ]
{
}

}
