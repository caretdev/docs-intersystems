/// Specialized version of the member provider class used for relationships.<br/>
/// This providers delagates the job of providing information to the related cube
/// by generating queries against it.
Class %DeepSee.Query.memberRelationship Extends %DeepSee.Query.member [ System = 3 ]
{

/// Name of this relationship.
Property %relationship As %DeepSee.Datatype.entityName;

/// Member spec to apply against the related cube.
Property %remoteSpec As %String(MAXLEN = 30000);

/// Name of cube the relationship refers to.
Property %relatedCube As %DeepSee.Datatype.entityName;

/// Cardinality of the relationship.
Property %cardinality As %String;

/// Inverse of the relationship.
Property %inverse As %DeepSee.Datatype.entityName;

/// True if this is the No Relation member.
Property %isNullRelation As %Boolean [ InitialExpression = 0 ];

/// Is this the stored side of the relationship?
Property %isStoredSide As %Boolean [ InitialExpression = 0 ];

/// Used to hold additional values for %OR references
Property %ORList As %String [ MultiDimensional ];

/// Depth (number of hops) of the relationship.
Property %relationshipDepth As %Boolean [ InitialExpression = 0 ];

/// List of additional related cubes more than one level away.
Property %deepCubes As %List;

/// Apply relationship information to this provider.<br/>
/// <var>pSpec</var> is an array of the tokens that make up the member specification.
Method %ApplyRelationInfo(ByRef pSpec, pRelatedCube As %String, pCardinality As %String, pInverse As %String, pIsStored As %Boolean, ByRef pMemberKey) As %Status
{
}

/// Combine the given member object into this one.
/// This is used to combine %OR(members) into one statement.
Method %MergeOR(pMember2 As memberRelationship) As %Status
{
}

/// Process the member name and key information for this tuple.
/// Put the result into <var>pSet</var>.
Method %ProcessMembers(pParent As %Integer, Output pSet As %List) As %Status
{
}

/// Compute the filters to tack onto a relationship subquery.
Method %GetFiltersForRelationship(Output pFilters As %String, pGroup As %DeepSee.Query.node, pLevel As %Integer = 0, ByRef pOmitted) As %Status [ Internal ]
{
}

/// Utility method. Return a spec for the given member.
Method %GetSpecForMember(pMember As %DeepSee.Query.memberRelationship) As %String [ Internal ]
{
}

}
