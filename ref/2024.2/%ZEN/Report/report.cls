/// Defines a report within a ZEN Report.
Class %ZEN.Report.report Extends group [ Deprecated, System = 3 ]
{

/// to suppress generation of root tag (for instance becasue one is injecting XML into the report) set suppressRotTag to "1" or "true".
Property suppressRootTag As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Depths of the this report structure.
Property %depth As %Integer(XMLPROJECTION = "none") [ Internal ];

/// This array, subcripted by level, is used to track the number
/// of sibling groups at each level.
Property %groupCount As %Integer(XMLPROJECTION = "none") [ Internal, MultiDimensional ];

/// Generate code for this node.
Method %GenerateCode(pReport As %ZEN.Report.reportNode, pCode As %CharacterStream, pLevel As %Integer, xmlns As %String, xmlprefix As %String, sqlcache As %Boolean, pAggregateTag As %String, removeNulls As %Boolean, SetProcessWideRunTimeMode As %Boolean, pAggregatesIgnoreNLS As %Boolean, pDomain As %String) As %Status [ Internal, ProcedureBlock = 0 ]
{
}

Method FindMaxDepth(tGroup, ByRef tMax As %Integer)
{
}

}
