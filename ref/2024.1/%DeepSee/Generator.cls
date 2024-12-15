/// This class contains methods used by the various
/// DeepSee code generators.<br/>
/// This class should be consider to be INTERNAL to DeepSee;
/// There are no methods intended for public use.
Class %DeepSee.Generator Extends %RegisteredObject [ System = 4 ]
{

/// Given a cube model, fill in a set of arrays with meta data
/// about the named sets and calculated members for the cube.<br/>
ClassMethod %ProcessVirtualMembers(pCube As %DeepSee.Model.cube, Output pNamedSets As %List, Output pCalcMembers As %List, ByRef pCaptions As %String, ByRef pDescriptions As %String, ByRef pMemberList As %String) As %Status [ Internal ]
{
}

/// Given a cube model, fill in a set of arrays with meta data for the cube.<br/>
/// This meta data takes the form:<br/>
/// pDimIndex(dno,hno,lno) = $LB(mbrType,dimName,hierName,lvlName,factName,mbrClass,mbrField,...)<br/>
/// pDimIndex(dno,hno,lno,"opt",...) = member options (for time classes)<br/>
/// pDimIndex(dno,hno,lno,"prop",prop) = $LB("p",mbrClass,mbrField,propName,propType)<br/>
/// pDimIndex(dno,hno,lno,"mbr",mbr#) = $LB(mbrName,mbrSpec) (for explicit members)<br/>
/// pDimNames(dname,hname,lname) = $LB(dimNo,hierNo,lvlNo)<br/>
/// pFactIndex(factno)=factname<br/>
/// pFactInfo(factname...)<br/>
/// pStarInfo(starname...)<br/>
/// pMsrIndex(msrno)=msrname<br/>
/// pRelationInfo(relname...)<br/>
/// pRelIndex(relno)=relname<br/>
/// pCaptions(dname,hname,lname) = $LB(name,displayName)<br/>
/// pMeta(key) = value -- additional information ("hasAge").<br/>
/// pDependList(dno,hno,lno,tFactNo) -- dependOn info <br/>
/// pComputedDims(dname) -- indicates that this is a computed dimension<br/>
ClassMethod %BuildCubeInfo(pCube As %DeepSee.Model.cube, pSchema As %String, Output pDimIndex As %List, Output pDimNames As %List, ByRef pFactIndex As %String, Output pFactInfo As %List, Output pStarInfo As %List, ByRef pMsrIndex As %String, ByRef pRelationInfo As %String, ByRef pRelIndex As %String, ByRef pCaptions As %String, ByRef pMeta As %String, ByRef pDependList As %String, ByRef pComputedDims As %String, ByRef pDescriptions) As %Status [ Internal ]
{
}

/// Construct a Fact (property) name based on the given specifications.<br/>
/// <var>pPrefix</var> is a prefix, such as "Dx".<br/>
/// <var>pName</var> is the name of an element (such as a level).<br/>
/// <var>pSourceProperty</var> is a source property name.<br/>
/// <var>pSourceExpression</var> is a source expression used to derive the fact.<br/>
/// <var>pFunction</var> is a function (or name of time level class) applied to the fact.<br/>
/// <var>pRangeExpression</var> is a range expression applied to the fact.<br/>
/// <var>pTimeOffset</var> is a time offset applied to the fact.<br/>
ClassMethod %GetFactName(pPrefix As %String, pName As %String, pSourceProperty As %String, pSourceExpression As %String = "", pFunction As %String = "", pRangeExpression As %String = "", pLinkClass As %String = "", pLinkProperty As %String = "", pTimeOffset As %String = "") As %String
{
}

/// Create a star (dimension) table to hold information for a given
/// level. The table may already exist.???
/// <var>pStarInfo</var> contains information about known star tables (and
/// gets modified by this method).<br/>
/// <var>pSchema</var> is the SQL schema to which the fact table belongs.<br/>
/// <var>pStarName</var> is the name of the star table (returned by reference).
/// This is used as the type of the fact.<br/>
/// <var>pLevelName</var> is the name of the current level.<br/>
/// <var>pSourceClass</var> is the source class for the cube.<br/>
/// <var>pSourceProperty</var> is the source property for the base fact.<br/>
/// <var>pSourceExpression</var> is the source expression for the base fact.<br/>
/// <var>pAlias</var> is the optional field name alias.<br/>
/// <var>pContext</var> contains the name of the model element currently
/// being processed (e.g., "Product.H1.Name"). This is used for error reporting.<br/>
ClassMethod %AddStarTable(pCube As %DeepSee.Model.cube, pSharedCube As %String, pSchema As %String, ByRef pStarInfo As %String, Output pStarName, pSourceClass As %String, pLevelName As %String, pSourceProperty As %String, pSourceExpression As %String, pLinkClass As %String, pLinkProperty As %String, pRangeExpression As %String, pAlias As %String, pContext As %String, pCollation As %String = "") As %Status [ Internal ]
{
}

/// Add an additional field to the given star table.<br/>
/// <var>pStarName</var> is the name of the star table.<br/>
/// <var>pPropName</var> is the name of the property (from the model).<br/>
/// <var>pStarInfo</var> contains information about known star tables (and
/// gets modified by this method).<br/>
/// <var>pStarProp</var> returns (by reference) the name of the new property.<br/>
/// <var>pSourceClass</var> is the source class for the cube.<br/>
/// <var>pSourceProperty</var> is the source property for the base fact.<br/>
/// <var>pSourceExpression</var> is the source expression for the base fact.<br/>
/// <var>pAlias</var> is the optional field name alias.<br/>
/// <var>pCollation</var> is the optional collation to apply ("" or "exact").<br/>
/// <var>pContext</var> contains the name of the model element currently
/// being processed (e.g., "Product.H1.Name"). This is used for error reporting.<br/>
ClassMethod %AddPropertyToStar(pStarName As %String, pPropName As %String, ByRef pStarInfo As %String, Output pStarProp As %String, pSourceClass As %String, pSourceProperty As %String, pSourceExpression As %String, pIsReference As %Boolean, pLinkClass As %String, pLinkProperty As %String, pRangeExpression As %String, pAlias As %String, pContext As %String, pCollation As %String = "") As %Status [ Internal ]
{
}

/// Add a rollup property to the given star table.<br/>
/// <var>pStarName</var> is the name of the star table.<br/>
/// <var>pRollupFact</var> is the name of the rollup fact.<br/>
/// <var>pFactInfo</var> is the array of information about facts.<br/>
/// <var>pStarInfo</var> contains information about known star tables.<br/>
/// <var>pContext</var> contains the name of the model element currently
/// being processed (e.g., "Product.H1.Name"). This is used for error reporting.<br/>
ClassMethod %AddRollupToStar(pStarName As %String, pRollupFact As %String, ByRef pFactInfo As %String, ByRef pStarInfo As %String, pContext As %String = "") As %Status [ Internal ]
{
}

/// Given meta data for a cube, create the set of Fact
/// and Star Table classes related to it.<br/>
ClassMethod %CreateFactTable(pCube As %DeepSee.Model.cube, pCubeClass As %String, pSchema As %String, pSourceType As %String, ByRef pFactIndex As %String, ByRef pFactInfo As %List, ByRef pStarInfo As %List, ByRef pMsrIndex As %String, ByRef pRelationInfo As %String, ByRef pStorage As %String) As %Status [ Internal ]
{
}

/// Internal method. Given a list of items of the form:<br/>
/// pDepends(item) = ""<br/>
/// pDepend(item,parent)<br/>
/// Return an ordered list with base items listed first.
ClassMethod %BuildOrderedList(ByRef pDepends, Output pList) As %Status
{
}

/// Internal method. Given an item within a dependency list,
/// return its set of ancestors (items with no further dependencies).
ClassMethod %GetAncestors(pItem As %String, ByRef pDepends, Output pList, ByRef pVisited) As %Status
{
}

/// Construct a storage location for a dimension (star) table.
/// Note that these are subscripted by upper-case class name.
ClassMethod %GetDimensionLocation(pClassName As %String, pSuffix As %String = "") As %String [ CodeMode = expression, Internal ]
{
}

/// Construct a storage location for a fact table.
/// Note that these are subscripted by upper-case class name.
ClassMethod %GetFactLocation(pClassName As %String, pSuffix As %String = "") As %String [ CodeMode = expression, Internal ]
{
}

/// Construct a storage location for a listing table.
/// Note that these are subscripted by upper-case cube name.
ClassMethod %GetListingLocation(pCubeName As %String) As %String [ CodeMode = expression, Internal ]
{
}

/// Construct a storage location for a fact table index.
/// Note that these are subscripted by cube name and index number.
ClassMethod %GetIndexLocation(pCubeName As %String, pIndex As %String) As %String [ CodeMode = expression, Internal ]
{
}

/// Construct a storage location for a fact table search index.
/// Note that these are subscripted by cube name and prop name.
ClassMethod %GetSearchIndexLocation(pCubeName As %String, pPropName As %String) As %String [ CodeMode = expression, Internal ]
{
}

/// Create a Star (dimension) table.<br/>
/// This table is used to hold members of a dimension level.
ClassMethod %CreateStarTable(pCube As %DeepSee.Model.cube, pCubeClass As %String, pStar As %String, ByRef pStarInfo As %List) As %Status [ Internal ]
{
}

/// Given a class and property return its type.<br/>
/// <var>pProp</var> can contain a set of referenced fields using dot syntax.<br/>
/// Return "" if the property does not exist.<br/>
/// <var>pContext</var> is used for error messages.
/// [Previously private]
ClassMethod %GetPropertyType(Output tSC As %Status, Output pParms As %String, pClass As %String, pProp As %String, pContext As %String = "") As %String [ Internal ]
{
}

/// Convert a dot syntax reference to an SQL arrow syntax expression.
ClassMethod %GetSQLFieldExpression(Output tSC As %Status, pClass As %String, pPropExpr As %String, pAllowStreams As %Boolean = 0) As %String
{
}

/// Return a description string for the given class member.
ClassMethod %MakeDescription(pMemberType As %String, pName As %String, pSource As %String = "", pNotes As %String = "") As %String
{
}

/// Produce a storage definition for the <var>pPropName</var> that can be inserted into the class's storage definition.
/// The array <var>pKnownValues</var> contains the previously compiled storage data, and is used
/// as a working index to avoid collisions in the storage definition. The <var>pNewValues</var> array
/// will contain the storage data for all properties actually encountered while working through
/// this current definition.
ClassMethod %MakePropStorageDef(pPropName As %String = "", ByRef pKnownValues, ByRef pNewValues) As %Dictionary.StorageDataValueDefinition
{
}

/// For the given source class and reference to property within the source
/// class, find the type of the property; the aliased name for the property; the root property needed to
/// fetch complete details on the property.
ClassMethod %AnalyzeStarProperty(pSourceClass As %String, pSourceProperty As %String, Output pType As %String, Output pParms, pContext As %String = "") As %Status [ Internal ]
{
}

/// Convert a class name of the form %Library.xxx to %xxx.
ClassMethod %DenormalizeType(pType As %String) As %String [ CodeMode = expression ]
{
}

/// Test to determine if the current type is a string or is a custom datatype
/// with %String as a superclass
ClassMethod %IsString(pType As %String) As %Boolean
{
}

/// Given a classname, method name, base expression, and optional list
/// of options, return a value that can be used as an SQL computed field
/// expression. Match the options with arguments in the functions formal spec.
ClassMethod %MakeSQLCompute(Output pCode, pClass As %String, pMethod As %String, pBase As %String, ByRef pOptions) As %Status
{
}

/// Take a time function specification ("Function(p=1)") and find
/// from it the function name and list of options with their values.
ClassMethod %ParseTimeFunction(pSpec As %String, Output pFuncName As %String, Output pOptions As %String) As %Status
{
}

/// Take a ObjectScript expression and find all the occurences of
/// <pVarName>.Property, replace them and return a list of property references.
/// An expression can also contain a reference to a class method
/// of the cube class using the syntax %cube.Method. This is replaced later.
ClassMethod %ParseExpression(pCode As %String, Output pResult As %String, Output pPropList As %String, pVarName As %String = "%source") As %Status
{
}

/// Returns the SQL table name for class <var>pClass</var>.
ClassMethod %GetSQLTableName(pClass As %String) As %String [ Final ]
{
}

/// Returns the SQL name of property <var>pProp</var> for class <var>pClass</var>.
ClassMethod %GetSQLColumnName(pClass As %String, pProp As %String) As %String [ Final ]
{
}

/// Compare the meta data for the given cube with a prior definition.<br/>
/// Results are returned in <var>pResults</var>.
ClassMethod %CompareMetaData(pCube As %String, Output pResults) As %Status [ Final, Internal ]
{
}

/// Build the meta data for the given subject area model.
/// pCaptions(dname,hname,lname) = displayName<br/>
ClassMethod %ProcessSubjectArea(pCubeClass As %String, pSubject As %DeepSee.Model.SubjectArea.subjectArea, ByRef pCaptions As %String, pJoinList As %String = "") As %Status [ Internal ]
{
}

/// Create a unique cursor name to avoid SQL problems!
ClassMethod %CreateCursorName(pPrefix As %String, pClassName As %String) As %String [ Internal ]
{
}

}
