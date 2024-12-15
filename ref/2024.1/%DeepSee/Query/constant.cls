/// This class defines a constant within a DeepSee query.<br/>
Class %DeepSee.Query.constant Extends node [ System = 3 ]
{

/// Axis label used for this constant.
Property label As %DeepSee.Datatype.string(XMLPROJECTION = "attribute") [ InitialExpression = "Constant" ];

/// Format string to apply to this member.
Property formatString As %String(MAXLEN = 255, XMLPROJECTION = "attribute");

/// Internal flag used for subquery functions--true means that the subquery has run and this value is the result
/// of the query.
Property finalValue As %Boolean(XMLPROJECTION = "none") [ InitialExpression = 0 ];

/// If the value is a finalValue, this is used to remember the original value of the constant.
Property origValue As %String(XMLPROJECTION = "none");

/// If known, this is the type of the constant: "string" or "number".<br/>
/// This is used to keep track of string numerics: "123" v 123.
Property type As %String(XMLPROJECTION = "none");

/// If our value is a named parameter, resolve it.<br/>
/// We do this as soon as we are first asked for our value and then
/// we hold onto the resolved value.
Method %ResolveValue() As %Status
{
}

/// Return the type of this node.<br/>
Method %GetType() As %String
{
}

/// Convert this node to its text representation.
Method %ToString(Output pSC As %Status) As %String
{
}

/// Execute and build the axes output for this constant.
Method %ProcessAxes(pCube As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pVisible As %Boolean = 1) As %Status [ Internal ]
{
}

/// Process the filter output for this constant.
Method %ProcessFilter(ByRef pFilterTree As %List, pCube As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer) As %Status [ Internal ]
{
}

}
