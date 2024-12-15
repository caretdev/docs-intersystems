/// Base class for DeepSee RunTime objects.
Class %DeepSee.Query.node Extends (%RegisteredObject, %XML.Adaptor) [ Abstract, System = 3 ]
{

Parameter XMLIGNORENULL = 1;

Parameter XMLIGNOREINVALIDATTRIBUTE = 0;

Parameter NAMESPACE = "http://www.intersystems.com/deepsee/query";

/// Parent of this node.<br/>
/// The type of the parent depends on context.
Relationship parent As %DeepSee.Query.group(XMLPROJECTION = "none") [ Cardinality = one, Inverse = children ];

/// Value of this node.
/// This is used by nodes that provide values.
Property value As %DeepSee.Datatype.string(MAXLEN = 32000, XMLPROJECTION = "attribute");

/// Used to note if this instance of this node has run its %PreProcess method
Property %PreProcessed As %Boolean(XMLPROJECTION = "none");

/// Diagnostic. Print value of this node to the console.
Method %PrintNode(pLevel As %Integer = 0)
{
}

/// Test this node to make sure all data references are currently marked enabled in the cube.
Method %IsEnabled(pCube As %String = "", Output pStatus As %Status = {$$$OK}, Output pReason As %String = "") As %Boolean
{
}

/// Return the type of this node.<br/>
/// The type can be one of the $$$dst<TYPE> macros.<br/>
/// This is implemented by subclasses.
Method %GetType() As %String
{
}

/// Return the current value of this node.<br/>
/// This is called when a literal value is needed during query processing.
/// This is implemented by subclasses.
Method %GetValue() As %String
{
}

/// Convert this node to its text representation.
Method %ToString(Output pSC As %Status) As %String
{
}

/// Return the member provider object associated with this node, if any.
Method %GetMemberProvider() As %DeepSee.Query.member
{
}

/// Execute the pre-processing logic for this node.</br>
/// <var>pIsSlicer</var> is true if this node is part of the slicer
/// (WHERE) clause.
Method %PreProcess(pIsSlicer As %Boolean = 0) As %Status
{
}

/// Execute and build the axes output for this node.<br/>
/// <var>pCube</var> and <var>pKey</var> identify the current query.<br/>
/// <var>pNodeNo</var> is used to track the next available node number in the axis graph.<br/>
/// <var>pNewNodeNo</var> is the (top-most) node created by this call.<br/>
/// <var>pParent</var> is the parent node to insert into.<br/>
/// If <var>pVisible</var> is false, then force children to not be visible.
Method %ProcessAxes(pCube As %String, pKey As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer, pVisible As %Boolean = 1) As %Status [ Internal ]
{
}

/// Process this node within the context of the filter section of a query<br/>
/// <var>pFilterTree</var> is tree containing processed results.<br/>
/// <var>pCube</var> is the cube name.<br/>
/// <var>pNodeNo</var> is used to track the next available node number in the axis graph.<br/>
/// <var>pNewNodeNo</var> is the (top-most) node created by this call.<br/>
/// <var>pParent</var> is the parent node to insert into.<br/>
Method %ProcessFilter(ByRef pFilterTree As %List, pCube As %String, ByRef pNodeNo As %Integer, Output pNewNodeNo As %Integer, pParent As %Integer) As %Status [ Internal ]
{
}

/// Make a copy of node <var>pSourceNode</var> and add it to target node <var>pTargetNode</var>.
ClassMethod %CopyNode(pCubeIndex As %String, pKey As %String, ByRef pNodeNo As %Integer, pTargetNode As %Integer, pSourceNode As %Integer, pHideParent As %Boolean = 0, pWrapType As %String = "", pWrapDepth As %Integer = {+$G(%SetOpDepth(pKey))}) As %Status [ Internal ]
{
}

/// Delete the specified node and its children.
ClassMethod %DeleteNode(pCubeIndex As %String, pKey As %String, pAxisNode As %Integer, pNodeNo As %Integer) As %Status [ Internal ]
{
}

/// Hide (or display if <var>pShow</var> is true) the specified node and its children by clearing their visible flags.
ClassMethod %HideNode(pCubeIndex As %String, pKey As %String, pAxisNode As %Integer, pNodeNo As %Integer, pShow As %Boolean = 0) As %Status [ Internal ]
{
}

/// Reduce the given node within the node tree.
/// This means replacing set(set) with set.
ClassMethod %ReduceNode(pCubeIndex As %String, pKey As %String, pNodeNo As %Integer) As %Status [ Internal ]
{
}

}
