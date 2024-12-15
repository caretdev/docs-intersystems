/// <p>The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the
/// <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW">product
/// documentation</a> for more detail.</p>
/// <p>This class is used to generate and manage SQL projections of iKnow data structures for a
/// particular domain. The easiest way to generate these SQL projections is by setting the objectsPackage
/// attribute on the &lt;domain&gt; element in a Domain Definition. <br/>
/// These projections can be customized in any of the following ways:</p>
/// <ol>
/// <li>New properties for metadata can be added to any table. they can be either writeable properties (such as source-level metadata) or computed/calculated fields to denormalize the schema. Non-computed fields should be set using regular UPDATE calls in SQL or set commands in COS. Computed fields (with the SqlComputed flag on) will be populated automatically when either of the following conditions is met:
///   <ol>
/// 		<li>The computed property has the SqlComputeOnChange attribute set to one or more custom fields: the value is updated when one of those is updated</li>
/// 		<li>The computed property is based on built-in fields (for example to denormalize the schema, such as adding a SourceId property to the Parts table): the value is updated (set) automatically when the domain is being built. Note that computed fields are built in a specific order and particular dependencies may not be satisfied, in which case the condition below applies. The build order is Sources, [EntityUnique, StemUnique, CrcUnique, CcUniqe], Sentence, Path, Part, CrcOccurrence, with the [] indicating that these are built in parallel.</li>
/// 		<li>The table's %BuildCustomFields() method is called. Note that this is called automatically as part of loading / updating a domain. Iow, this method only needs to be called explicitly when a computed property depends on a custom field and its SqlComputeOnChange is not set appropriately, or when it has non-trivial dependencies on other tables and the automated call to %BuildCustomFields() does not cover them.</li>
///   </ol></li>
/// 	<li>Existing properties (created as part of the default mapping) that are marked as Calculated and SqlComputed can be marked SqlComputed only (not Calculated). These properties' values will then be persisted rather than calculated on-the-fly, which may benefit query performance. See above for the policy on when computed fields' values are updated.</li>
/// <li>New indices can be added on existing or custom properties, regardless of whether their values are simply persisted, computed-persisted or calculated. These indices will be updated automatically when loading/updating a domain or when updating writeable fields as added in option 1.</li>
/// <li>Custom methods, optionally serving to populate indices (like *BuildValueArray()) can be added to the existing tables.</li>
/// </ol>
/// <p>The CustomAnnotations table is special in the sense that it's the only table that can be written to directly. It allows users to specify custom annotations for specific sentence parts (Part table), which will be available through the Annotations property of that Part table, next to attributes and matching results.</p>
/// <p>The following modifications are NOT supported:
/// <ul>
/// <li>modifying the definition of any property marked as ReadOnly, other than turning calculated fields into computed ones as described above. </li>
/// <li>modifying the definition of any index or foreign key whose name starts with a % sign</li>
/// <li>modifying or overriding any *Get() or *BuildValueArray() method for a ReadOnly property provided in the generated classes or its superclasses</li>
/// <li>dropping any of the generated tables</li>
/// <li>INSERT and DELETE operations on any of the generated tables, except CustomAnnotations. Note that there are triggers that should prevent this.</li>
/// <li>UPDATE operations on any non-custom fields. Note that this should be prevented by the ReadOnly attributes of those fields.</li>
/// </ul>
/// <p>These table projections and any associated data will be dropped when dropping the domain. </p>
/// <p>It is important to note that the generated projections include a number of denormalizations, such as calculated fields providing convenience access to data stored in another table. For example, the EntityValue property of the Part table is a calculated field based on the string value of the corresponding EntityUnique record. This means filtering or grouping by such denormalized columns directly may lead to valid but not necessarily efficient SQL. Therefore, it is recommend to check query plans and, when adopting the queries for production use (or when implementing a query generation utility), ensure appropriate indices will be used, either custom (as explained earlier) or default ones by adding a query subclause.</p>
/// <p>When generating these tables, the actual classes, properties and indices generated will be based on the Build Flag settings and some domain parameters (most importantly $$$IKPSTEMMING). If these would change (which already assumes the domain is empty), the GenerateDomainTables() method should be re-invoked.</p>
Class %iKnow.Tables.Utils [ Deprecated, System = 4 ]
{

/// <p>Creates a set of tables representing the data in domain <var>pDomainId</var> in package
/// <var>pPackageName</var>. If <var>pOverWrite</var>=1, existing table definitions will be overwritten,
/// which may therefore no longer preserve non-calculated custom field values.</p>
/// <p>If <var>pRefClass</var> is non-null, a "Ref" property of that type will be added to the Source class,
/// initialized with the value of its LocalReference property (ie, the ID field used when loading
/// from a SQL table).</p>
/// <p>Any metadata fields referenced in <var>pMetadata</var> will be added to the Source class as
/// calculated fields, along with indices mapping the corresponding iKnow data structures where possible.</p>
/// <p>A list of additional indices to be created can be supplied through <var>pIndices</var> in the
/// following format:
///  <blockquote><tt>pIndices("<i>TableName</i>", "idx", "<i>IndexName</i>") = $lb("<i>Properties</i>", "<i>IndexType</i>")</tt></blockquote>
/// For the Source table, these can be references to <var>pRefClass</var> columns by using arrow syntax.</p>
ClassMethod CreateDomainTables(pDomainId As %Integer, pPackageName As %String, pRefClass As %String = "", pMetadata As %List = "", ByRef pAdditionalIndices, pGlobalPrefix As %String = "", pOverWrite As %Boolean = 0, pQueue As %Boolean = 0) As %Status
{
}

ClassMethod CustomizeTables(pDomainId As %Integer = "", pPackageName As %String, ByRef pCustomziations, pCompile As %Boolean = 1) As %Status [ Internal, Private ]
{
}

/// Drops any classes generated by <method>CreateDomainTables</method> in package <var>pPackageName</var>
/// and associated customization data (field values & indices)
ClassMethod DropDomainTables(pPackageName As %String) As %Status
{
}

ClassMethod SyncDictionaryMatchCustomizations(pDomainId As %Integer = "", pPackageName As %String = "", pAutoPurge As %Boolean = 1, pStartSrcId As %Integer = "", pEndSrcId As %Integer = "", pFilter As %iKnow.Filters.Filter = "") As %Status
{
}

/// Either pDomainId or pPackageName has to be passed in, or both if they are known
ClassMethod SyncCustomizations(pDomainId As %Integer = "", pPackageName As %String = "", pAutoPurge As %Boolean = 1, pStartSrcId As %Integer = "", pEndSrcId As %Integer = "", ByRef pRanges) As %Status
{
}

ClassMethod CreateClass(Output pClassDef As %Dictionary.ClassDefinition, pFQName As %String, pDataLocation As %String, pIndexLocation As %String, pOverWrite As %Boolean, pSuper As %String = "AbstractTable") As %Status [ Internal ]
{
}

ClassMethod AddProperty(pClassDef As %Dictionary.ClassDefinition, pName As %String, pType As %String, ByRef pParams, pStoragePos As %Integer = 0, pReadOnly As %Boolean = 1, pCalculated As %Boolean = 0, pComputeCode As %String = "", pInternal As %Boolean = 0, pSqlFieldName As %String = "") As %Status [ Internal ]
{
}

ClassMethod AddParameter(pClassDef As %Dictionary.ClassDefinition, pName As %String, pValue As %String = "", pInternal As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod AddIndex(pClassDef As %Dictionary.ClassDefinition, pName As %String, pProperties As %String = "", pUnique As %Boolean = 0, pType As %String = "", pGlobal As %String = "") As %Status [ Internal ]
{
}

ClassMethod AddFK(pClassDef As %Dictionary.ClassDefinition, pName As %String, pProperties As %String, pTarget As %String, pTargetKey As %String = "", pNoCheck As %Boolean = 1) As %Status [ Internal ]
{
}

ClassMethod AddBVA(pClassDef As %Dictionary.ClassDefinition, pPropName As %String, pValueCode As %String = "", pAcceptZero As %Boolean = 1) As %Status [ Internal ]
{
}

}
