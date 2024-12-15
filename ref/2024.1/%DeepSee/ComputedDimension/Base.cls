/// This is the base class for DeepSee computed dimension classes.<br/>
/// A computed dimension class defines the behavior for a level within a hierarchy within
/// a DeepSee computed dimension.<br/>
Class %DeepSee.ComputedDimension.Base Extends %RegisteredObject [ System = 3 ]
{

/// Type reported back to the UI. This determines what type of control to display
/// for filters based on this class.
Parameter DIMTYPE As STRING = "text";

/// Controls whether results of <method>%OnComputeBitset</method> can be reused
/// Available values are "NEVER", "CHECK", with NEVER (default) meaning no values
/// are cached and CHECK meaning the timestamp of previous %OnComputeBitset results is
/// compared to the cube's latest update timestamp.
Parameter CACHECOMPUTEDBITSET As STRING [ Constraint = ",NEVER,CHECK", Flags = ENUM ] = "NEVER";

/// Controls the run-time behavior of the dimension.
/// Available values are "BITSET", and "MDX".<br/>
/// BITSET (default) indicates that this class will compute a set of bits that define
/// membership within a given dimension member.<br/>
/// MDX indicates that this class will return a set of valid MDX expressions that will be
/// used to resolve the members of the dimension.
Parameter BEHAVIOR As STRING [ Constraint = ",BITSET,MDX", Flags = ENUM ] = "BITSET";

/// Name of the cube the computed level belongs to.
Property %cube As %DeepSee.Datatype.string;

/// Name of the base cube the computed level belongs to, if ..%cube is a subject area.
/// Otherwise, this property is set to the same value as ..%cube.
Property %baseCube As %DeepSee.Datatype.string;

/// Fact # of the computed level.
Property %factNumber As %Integer;

/// Fact Name associated with the computed level.
/// This is the name of the fact that contains the default search data.
Property %factName As %String;

/// Dimension # of the computed level.
Property %dimNumber As %Integer;

/// Hierarchy # of the computed level.
Property %hierNumber As %Integer;

/// Level # of the computed level.
Property %levelNumber As %Integer;

/// Return the type of this class (used by UI components).
ClassMethod %GetDimType() As %String
{
}

/// Return the behavior of this class.
ClassMethod %GetBehavior() As %String
{
}

/// Return number of members.
ClassMethod %Count(pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %Integer
{
}

/// Given a level name, <var>pLevelName</var>, return the corresponding level number.
/// Return "" if there is no level with the name.
ClassMethod %GetLevelNumber(pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelName As %String) As %Integer
{
}

/// Create a instance of this dimension class.
ClassMethod %Create(pCube As %String, pFactNo As %Integer, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %DeepSee.ComputedDimension.Base
{
}

/// Test if <var>pName</var> is a valid member name.
Method %FindComputedMemberByName(pName As %String, Output pFlag As %Boolean, Output pMemberKey As %String, Output pMemberId As %String) As %Status [ Internal ]
{
}

/// Find the member with the given key value.
Method %FindComputedMemberByKey(pKey As %String, Output pFlag As %Boolean, Output pMemberName As %String, Output pMemberId As %String) As %Status [ Internal ]
{
}

/// Return the set of all members (pre-defined and run-time) for this dimension.
/// Sort them according to the sort options in the cube meta data.<br/>
/// <var>pMemberList</var> returns a set of members defined in the cube model:<br/>
/// pMemberList(n) = $LB(id,caption,key,[format])<br/>
Method %GetAllMembers(ByRef pMemberList, pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %Status
{
}

/// Return the set of pre-defined members for this dimension.
/// These will be in the cube meta data.<br/>
/// <var>pMemberList</var> returns a set of members defined in the cube model:
/// pMemberList(n) = $LB(id,caption,key,[format])<br/>
ClassMethod %GetPredefinedMembers(ByRef pMemberList, pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %Status
{
}

/// Find the set of members for this computed dimension object.<br/>
/// <var>pMemberList</var> may contain a set of members defined in the cube model:
/// pMemberList(n) = $LB(id,name,key,[format])<br/>
/// If so, use this list, otherwise compute one.
/// <p><var>pRollupKey</var> and <var>pRange</var> can be used to filter the computed
/// members returned, if applicable for this computed dimension.</p>
Method %GetComputedMembers(ByRef pMemberList, pRollupKey As %String = "", ByRef pRange As %String = "") As %Status [ Final ]
{
}

/// Find the set of members for this computed dimension object.<br/>
/// pMemberList(n) = $LB(id,name,key)<br/>
/// This can be implemented by subclasses.
/// <p>This method is deprecated, implement <method>%OnGetComputedMembersFiltered</method>
/// instead.</p>
Method %OnGetComputedMembers(ByRef pMemberList) As %Status [ Deprecated ]
{
}

/// Find the set of members for this computed dimension object satisfying
/// <var>pRollupKey</var> and <var>pRange</var> (if applicable for this implementation).<br/>
/// pMemberList(n) = $LB(id,name,key)<br/>
/// This can be implemented by subclasses.
Method %OnGetComputedMembersFiltered(ByRef pMemberList, pRollupKey As %String = "", ByRef pRange As %String = "") As %Status
{
}

/// Compute a hash key for a given member member.
Method %ComputeIndexKey(pMemberKey As %String) As %String
{
}

/// Build the bitset that corresponds to the given computed dimension "spec".
Method %ComputeBitset(pSpec As %String, Output pIndexKey As %String) As %Status [ CodeMode = objectgenerator, Final, ForceGenerate ]
{
}

/// Do the actual work of building the bitset.
/// Implemented in subclasses.
Method %OnComputeBitset(pSpec As %String, pIndexKey As %String) As %Status
{
}

/// Utility method.
/// Prepare and execute the given SQL statement and build an index from it.<br/>
/// If optional <var>pRS</var> is supplied, use it to fetch ID values (result set must have an ID column).<br/>
/// If <var>pTranslateIds</var> is true, then translate source id value to fact ids.<br/>
Method %CreateIndexFromSQL(pSQL As %String, pIndexKey As %String, pRS As %SQL.StatementResult = "", pTranslateIds As %Boolean = 0) As %Status
{
}

/// Utility method.
/// Build an index directly from a comparison on a searchable measure. The comparison is supplied by the arguments<br>
/// <var>pSearchMeasureIndex</var> - The name of the searchable index on the searchable measure<br>
/// <var>pComparison</var> - The comparison operator; legal values are SQL numeric comparisons: <,<=,=,=>,>,<><br>
/// <var>pValue</var> - The target value of the comparison. This must be numeric<br>
/// <var>pIndexKey</var> - The key of the new index being constructed out of the searchable measure
Method %CreateIndexFromSearchableMeasure(pSearchMeasureIndex As %String = "", pComparison As %String, pValue As %Numeric, pIndexKey As %String = "") As %Status
{
}

/// Return the (SQL) name of the fact table for the current cube.
Method %GetFactTable() As %String
{
}

/// Return the (SQL) name of the source table for the current cube.
Method %GetSourceTable() As %String
{
}

/// Execute a search for members.<br/>
/// Return a list of the form:<br/>
/// pList(n) = $LB(value,key)
Method %MemberSearch(pSearchKey As %String, Output pList As %List) As %Status
{
}

/// Resolve any special tokens or expression in a key value and return the result.
Method %ResolveKey(pSpec As %String, Output pRKey As %String) As %Status
{
}

/// Apply substitutions to an SQL query string used within a computed dimension expression.<br/>
/// <var>pSubstList</var> is an array of $$$ substitution values, e.g.:<br/>
/// pSubstList("TABLE") = table name<br/>
/// pSubstList("FACT") = fact name<br/>
/// {} can be used to enclose an ObjectScript expression that is evaluated and whose
/// results become part of the SQL text of the query.<br/>
/// [dim].[mbr] can be used to refer to a specific cube element (such as a measure). This is replaced
/// with the fact name that corresponds to the element.<br/>
Method %ProcessSQL(pSQL As %String, ByRef pSubstList, Output pFirstToken As %String, Output pErrorMsg As %String) As %String
{
}

/// Evaluate the given ObjectScript expression.
ClassMethod %Eval(pExpr As %String, Output pErrorMsg As %String) As %String
{
}

/// Returns the %DeepSee.Query.query object for the current query context, if any
Method %GetCurrentQuery() As %DeepSee.Query.query [ Private ]
{
}

/// Notifies the computed dimension all facts of a cube referencing are being killed. This method
/// should erase any temporary or cached data the computed dimension implementation has written
/// as part of its "lifetime" for the given cube and dimension coordinates.
/// Indices cached as part of the <parameter>CACHECOMPUTEDBITSET</parameter> setting are taken
/// care of by the default implementation of this method.
ClassMethod %OnKillFacts(pCubeName As %String, pFactNo As %Integer, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %Status [ CodeMode = objectgenerator, ForceGenerate ]
{
}

/// Return the member specification for the given member.<br/>
/// Implement this so that %GetFiltersForCellRange will work!
ClassMethod %GetMemberSpec(pMemberId As %String, pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %String [ Internal ]
{
}

/// Helper method; execute a member search using the set of defined (and run-time) members.
Method %MemberSearchByMembers(pSearchKey As %String, Output pList As %List) As %Status
{
}

/// Helper method; execute a member search using the contents of the fact index.
Method %MemberSearchByIndex(pSearchKey As %String, Output pList As %List) As %Status
{
}

}
