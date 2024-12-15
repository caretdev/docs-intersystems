/// Subclasses of this class are used to define
/// "cubes" that can be queried by the DeepSee engine.<br/>
/// The Cube XDATA block defines the contents of a DeepSee cube
/// (dimensions and measures) as an XML document.
/// When a subclass of this class is compiled, it generates
/// the indexed fact table that holds the data for this cube.<br/>
/// This class also provides the APIs needs to explore
/// a cube's metadata that are used by the DeepSee utilities.
Class %DeepSee.CubeDefinition Extends %RegisteredObject [ Abstract, CompileAfter = (%DeepSee.Model.cube, %DeepSee.Generator), System = 4 ]
{

/// This parameter is used to transform original cube definition.
/// If it is defined in subclass then the cube definition is piped
/// through XSLT transformation. XSL is taken from XData block named
/// in this parameter.
Parameter TRANSFORMXSL As STRING;

/// This parameter is used to transform original cube definition.
/// If it is defined in a subclass then the cube definition is piped
/// through the transformation defined in the class named
/// by this parameter.
Parameter TRANSFORMERCLASS As STRING;

/// This parameter controls whether the compile of this class will utilize the cube versioning mechanism. If
/// set to 1, the current class definition will act as a generator for a distinct version of the cube. <br>
/// The <var>version</var> attribute of the &lt;cube&gt tag must be set if this is set to 1.
Parameter USECUBEVERSIONS = 0;

/// This projection is used to keep track of when Cubes are
/// compiled or deleted.
/// This XData section provides the definition of the cube.
XData Cube [ XMLNamespace = "http://www.intersystems.com/deepsee" ]
{
}

/// Return an instance of the <class>%DeepSee.Model.cube</class>
/// meta-data object that describes this cube.
ClassMethod %GetModel() As %DeepSee.Model.cube [ CodeMode = objectgenerator, Final, GenerateAfter = (%OnProcessFact, %OnApplyOverrides), Internal ]
{
}

/// Update the "sharesIndex" for the given cube.
ClassMethod %UpdateSharesIndex(pCubeName As %String) As %Status [ Internal ]
{
}

/// Return information on the source data for this cube.
ClassMethod %GetSourceInfo(Output pInfo) As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %GetModel, Internal ]
{
}

/// Return the logical name for the %COUNT measure used by this cube.
ClassMethod %GetCountName() As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %GetModel, Internal ]
{
}

/// Return the (localized) caption for the %COUNT measure used by this cube.
/// Returns "" if this has not been overridden by the cube.
ClassMethod %GetCountCaption() As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %GetModel, Internal ]
{
}

/// Return the (localized) caption for a given listing within this cube.
ClassMethod %GetListingCaption(pListing As %String) As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %GetModel, Internal ]
{
}

/// Return the (localized) description for a given listing within this cube.
ClassMethod %GetListingDescription(pListing As %String) As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %GetModel, Internal ]
{
}

/// Return the (localized) caption for a given listing field within this cube.
ClassMethod %GetListingFieldCaption(pField As %String) As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %GetModel, Internal ]
{
}

/// Return the (localized) description for a given listing field within this cube.
ClassMethod %GetListingFieldDescription(pField As %String) As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %GetModel, Internal ]
{
}

/// For a pre-defined member within a given level in this cube, return its (localized) caption (display name).
ClassMethod %GetLevelMemberCaption(pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer, pName As %String) As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %GetModel, Internal ]
{
}

/// For a given dimension, hierarchy, and level return its localized caption. The <var>pPropName</var> may be
/// used to reference either a property or a pre-defined &lt;member&gt; element.
ClassMethod %GetMemberCaption(pDimName As %String, pHierName As %String = "", pLevelName As %String = "", pPropName As %String = "") As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %GetModel, Internal ]
{
}

/// For a given dimension, hierarchy, and level return its localized description. The <var>pPropName</var> may be
/// used to reference either a property or a pre-defined &lt;member&gt; element.
ClassMethod %GetMemberDescription(pDimName As %String, pHierName As %String = "", pLevelName As %String = "", pPropName As %String = "") As %String [ CodeMode = objectgenerator, Final, GenerateAfter = %GetModel, Internal ]
{
}

/// Return the list of cell-cache values that should be pre-loaded.
/// On return <var>pList</var> will contain an array of the form:<br/>
/// pList(n,spec) = factNo<br/>
ClassMethod %GetCellCachePreLoads(Output pList) As %Status [ CodeMode = objectgenerator, Final, GenerateAfter = %GetModel, Internal ]
{
}

/// Build the entire fact table with data from the source table.<br/>
/// If <var>pVerbose</var> is true, then status information is written to the console.<br/>
/// Users should not call this method; they should used the %BuildCube method
/// in the <class>%DeepSee.Utils</class> class.
ClassMethod %BuildFactTable(pVerbose As %Boolean = 0, pFactList As %String = "") As %Status [ CodeMode = objectgenerator, GenerateAfter = (%GetModel, %OnProcessFact), Internal ]
{
}

/// Update Fact indices with data from the source table.<br/>
/// Read all rows from the source table between <var>pStartId</var> and
/// <var>pEndId</var>.<br/>
/// If <var>pEndId</var> is missing (""), then update one fact with source id <var>pStartId</var><br/>.
/// If <var>pVerbose</var> is true, then write status information to the console.<br/>
/// <var>pTaskGroup</var> is used when this method is called by the DeepSee TaskMaster.<br/>
/// If <var>pBatchMode</var> is true, then perform the update in batch mode.<br/>
ClassMethod %UpdateFacts(pStartId As %String, pEndId As %String = "", pBatchMode As %Boolean = 0, pVerbose As %Boolean = 0, pTaskGroup As %String = "", Output pUpdates As %Integer, pRefProp As %String = "", pRefID As %String = "", ByRef pDimTables) As %Status [ CodeMode = objectgenerator, GenerateAfter = (%GetModel, %OnProcessFact) ]
{
}

/// Update Fact indices with data from selected columns in the source table.<br/>
/// The fact list is limited using the <var>pFactList</var> parameter, which can be either a comma-delimited list or a $LB.
/// Read all rows from the source table between <var>pStartId</var> and
/// <var>pEndId</var>.<br/>
/// If <var>pEndId</var> is missing (""), then update one fact with source id <var>pStartId</var><br/>.
/// If <var>pVerbose</var> is true, then write status information to the console.<br/>
/// <var>pTaskGroup</var> is used when this method is called by the DeepSee TaskMaster.<br/>
/// If <var>pBatchMode</var> is true, then perform the update in batch mode.<br/>
ClassMethod %UpdateFactsList(pFactList As %String = "", pStartId As %String, pEndId As %String = "", pBatchMode As %Boolean = 0, pVerbose As %Boolean = 0, pTaskGroup As %String = "", Output pUpdates As %Integer, pRefProp As %String = "", pRefID As %String = "", ByRef pDimTables) As %Status [ CodeMode = objectgenerator, GenerateAfter = (%GetModel, %OnProcessFact) ]
{
}

/// Delete facts from this cube that correspond to rows in the source table with source id <var>pSourceId</var><br/>.
/// If <var>pVerbose</var> is true, then write status information to the console.<br/>
ClassMethod %DeleteFact(pSourceId As %String) As %Status [ CodeMode = objectgenerator, GenerateAfter = (%GetModel, %OnProcessFact) ]
{
}

/// Check to make sure a given ID exists in the source table.<br/>
ClassMethod %CheckSourceId(pSourceId As %String, pVerbose As %Boolean = 0, pStatus As %Status) As %Boolean [ CodeMode = objectgenerator, GenerateAfter = (%GetModel, %OnProcessFact) ]
{
}

/// Find the starting and ending id values for this cube's source data class.<br/>
/// This is used when populating an entire cube.
ClassMethod %GetSourceIds(Output pStartId As %String, Output pEndId As %String) As %Status [ CodeMode = objectgenerator, GenerateAfter = (%GetModel, %OnGetSourceIds), Internal ]
{
}

/// If implemented, this method is called when a cube is being completely rebuilt *and*
/// the rebuild is not using parallel processing.<br/>
/// On return <var>pStartId</var> and <var>pEndId</var> must contain the first and last row id values
/// for this cube's source data table, such that a query of the form:<br/>
/// SELECT ... FROM SOURCE WHERE %ID BETWEEN pStartId AND pEndId<br/>
/// will return all the rows of the source table.<br/>
/// This gives the developer the opportunity to bypass the built-in query that fetchs these values.<br/>
ClassMethod %OnGetSourceIds(Output pStartId As %String, Output pEndId As %String) As %Status [ Abstract ]
{
}

/// Delete all cached values for this cube.
ClassMethod %KillCache() As %Status [ Final ]
{
}

/// Delete the cell cache for this cube.
ClassMethod %KillCellCache() As %Status [ Final ]
{
}

/// Delete the results cache for this cube.
ClassMethod %KillResultsCache() As %Status [ Final ]
{
}

/// Delete all Facts as well as cached results from the cube.
ClassMethod %KillFacts() As %Status [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]
{
}

/// Notification that all facts have been deleted.<br/>
/// If implemented, this is called when the <method>%KillFacts</method> is called.
ClassMethod %OnKillFacts() As %Status
{
}

/// Notification that this cube is about to be built.<br/>
/// If the build is invoked using a selected <var>pFactList</var>, this list will be passed to the callback in a $LB format.
ClassMethod %OnBuildCube(pFactList As %List) As %Status
{
}

/// Notification that this cube has completed its build.<br/>
/// The status of the overall build is contained in <var>pBuildStatus</var>. If the build is otherwise successful,
/// the value of <var>pBuildStatus</var> can be changed within the callback to become the new status returned by %BuildCube.
/// If there were any build errors in the individual facts the count of these errors is reported in
/// <var>pBuildErrors</var>
ClassMethod %OnAfterBuildCube(pBuildStatus As %Status, pBuildErrors As %Boolean = 0) As %Status
{
}

/// Notification that a fact within the cube is to be processed (inserted
/// or updated).<br/>
/// <var>pID</var> is the id of the row in the source data being processed.<br/>
/// <var>pFacts</var> is an array containing the values that will be used for the
/// row, subscripted by fact name.<br/>
/// <var>pSkip</var> is a boolean value returned by reference; If true then the record
/// is not processed.<br/>
/// <var>pInsert</var> is true if the current fact will be inserted into the cube's fact table.
ClassMethod %OnProcessFact(pID As %String, ByRef pFacts As %String, Output pSkip As %Boolean, pInsert As %Boolean) As %Status [ Abstract ]
{
}

/// Notification that a fact within the cube has been processed (inserted
/// or updated). This method does not allow for any intervention of the processing of the fact,
/// but rather provides an opportunity to react to success or failure in processing. The return status is ignored by the caller.<br/>
/// <var>pID</var> is the id of the row in the source data being processed.<br/>
/// <var>pFacts</var> is an array containing the values that will be used for the
/// row, subscripted by fact name.<br/>
/// <var>pUpdateStatus</var> is the status about to be returned by %ProcessFact. If an error is passed in, this error will
/// already be logged in the DeepSee logs and the ^DeepSee.BuildErrors global.
ClassMethod %OnAfterProcessFact(pID As %String, ByRef pFactArray As %String, pUpdateStatus As %Status) As %Status [ Abstract ]
{
}

/// Return number of facts in this cube's fact table.
ClassMethod %GetFactCount() As %Integer
{
}

/// Return name of the fact class used by this cube.
ClassMethod %GetFactClass() As %String
{
}

/// Return the approximate starting and ending id values for this cubes fact table.
ClassMethod %GetFactIdRange(Output pStartId As %Integer, Output pEndId As %Integer) As %Status [ Final ]
{
}

/// Return the logical name of the cube defined by this class (in its original case).
ClassMethod %GetCubeName() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]
{
}

/// Test whether this cube is abstract or not.
ClassMethod %IsAbstract() As %Boolean [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]
{
}

/// Test whether this cube is compound or not.
ClassMethod %IsCompound(Output pJoinList As %String) As %Boolean
{
}

/// Return the caption of the cube defined by this class.
/// If not defined, the cube name is returned.
ClassMethod %GetCubeCaption() As %String [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]
{
}

/// Return the precompute level of the cube defined by this class.
ClassMethod %GetPrecomputeLevel() As %Integer [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]
{
}

/// Test if this cube supports drill through (listing) queries.
ClassMethod %CanDrillThrough() As %Boolean
{
}

/// Take cube relationship  with name <var>pRelationName</var>
/// and transform the original key value <var>pKey</var> into
/// the id of the corresponding fact in the fact table and return it
/// via <var>pID</var>.
ClassMethod %GetRelationshipId(pRelationName As %String, pKey As %String, Output pID As %Integer) As %Status [ CodeMode = objectgenerator, GenerateAfter = %GetModel ]
{
}

/// Notification that a listing (drillthrough) query is about to be executed.<br/>
/// This is called immediately before a listing query is executed.
/// This is useful for cases where additional setup work is required before
/// a listing query can run.<br/>
/// <var>pSQL</var> is the listing query that will be executed.
ClassMethod %OnExecuteListing(pSQL As %String) As %Status
{
}

/// Return the filter spec for this cube, if any.
ClassMethod %GetFilterSpec() As %String [ Final ]
{
}

/// This callback gives a Cube a chance to programmatically define a filter spec.
ClassMethod %OnGetFilterSpec(pFilterSpec As %String) As %String
{
}

/// Return the name of the default listing for this cube, if any.
ClassMethod %GetDefaultListing() As %String [ Final ]
{
}

/// This callback gives a cube a chance to programmatically return the name
/// of the listing to use as its default listing.
/// This must be the name of a defined listing within the cube.
/// Return "" to use the pre-defined default listing.
ClassMethod %OnGetDefaultListing() As %String
{
}

/// Return list of possible actions for this Cube.
/// This list is supplied from the KPI class specified by the cube's actionClass property, if defined.
/// This drives the list of action selections for widget connected to this cube.
/// This takes the form:<br/>
/// pActions(n)=$LB(name,caption)<br/>
ClassMethod %GetActionList(ByRef pActions As %List) As %Status [ Final, Internal ]
{
}

/// Inject a fact into the fact table for this cube that is not associated with the source data table.<br/>
/// <var>pFactId</var> is the id of the fact in the fact table. Set this to "" for an insert. On return
/// it will contain the id used for the fact.<br/>
/// <var>pValues</var> is an array of fact values subscripted by sourceProperty name (case must match <b>exactly</b>.
/// If <var>pDimensionsOnly</var> is true, then only the dimension tables for the cube are affected;
/// no facts are inserted.
ClassMethod %InjectFact(ByRef pFactId As %String, ByRef pValues As %String, pDimensionsOnly As %Boolean = 0, pFactList As %String = "") As %Status [ CodeMode = objectgenerator, GenerateAfter = (%GetModel, %OnProcessFact) ]
{
}

/// Callback used for XSL transforms.
ClassMethod %OnGetModel(pXSL As %String, tSource As %Stream.TmpCharacter, Output tOutput As %BinaryStream) As %Status [ Internal ]
{
}

/// If implemented, this is called before the cube model is processed.
/// It gives the class a change to modify the ^DeepSee.Overrides global.
ClassMethod %OnApplyOverrides() As %Status [ CodeMode = objectgenerator ]
{
}

/// Lookup a single value with the given key and DeepSee term list name.
/// This can be invoked by source expressions within this cube.<br/>
/// <var>pTermList</var> is the name (with no extension) of the termlist.<br/>
/// <var>pKey</var> is the key to lookup within the termlist.<br/>
/// <var>pDefault</var> is an optional default value to return if the key is not found within the termlist.<br/>
/// <var>pField</var> is an optional field to lookup within the termlist. By default, this is the "value" field.<br/>
ClassMethod %Lookup(pTermList As %String = "", pKey As %String = "", pDefault As %String, pField As %String = "VALUE") As %String
{
}

/// Invoke a Business Rule on the current record within the source class.
/// <var>pID</var> should contain the object id of the record within the source class.
/// This can be invoked by source expressions within this cube.
ClassMethod %Rule(pRuleName As %String = "") As %String
{
}

/// This callback gives a Cube a chance to programmatically provide a set of
/// members for a computed dimension.<br/>
/// Find the set of members for this computed dimension object satisfying
/// <var>pRollupKey</var> and <var>pRange</var> (if applicable for this implementation).<br/>
/// This is passed and returns:<br/>
/// pMemberList($I(pMemberList)) = $LB(id (expression for MDX computed dimension),caption,key,[format])<br/>
ClassMethod %OnGetComputedMembers(pDimName As %String, pHierName As %String, pLevelName As %String, ByRef pMemberList, pRollupKey As %String = "", ByRef pRange As %String = "") As %Status
{
}

}
