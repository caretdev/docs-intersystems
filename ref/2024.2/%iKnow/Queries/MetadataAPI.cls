/// <p>The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the
/// <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW">product
/// documentation</a> for more detail.</p>
/// <p>This is the default implementation for the <class>%iKnow.Queries.MetadataI</class> interface
/// and the central place to manage and query metadata fields and values.</p>
Class %iKnow.Queries.MetadataAPI Extends (%iKnow.Queries.MetadataI, %iKnow.Queries.AbstractAPI) [ Deprecated, System = 4 ]
{

Parameter GetFieldsRT = "mdFieldId:%String,fieldName:%String,supportedOperators:%List,dataType:%String,storage:%Integer,caseSensitive:%Boolean,lovId:%Integer,validateLov:%Boolean,hidden:%Boolean";

/// <p>Returns all field definitions (including their properties) for the given domain.</p>
/// <p>Setting <var>includeHidden</var> to true will also return any metadata fields marked as 'hidden'.</p>
ClassMethod GetFields(ByRef result As %Integer, domainId As %Integer, includeHidden As %Boolean = 0) As %Status
{
}

/// Returns the metadata field ID corresponding to the supplied name, or "" if none exists in this domain.
ClassMethod GetFieldId(domainId As %Integer, fieldName As %String, Output sc As %Status) As %Integer
{
}

/// <p>Adds a field definition with the given name and properties.</p>
/// <ul>
/// 	<li>The <var>supportedOperators</var> parameter specifies which operations (such as $$$MDOPEQUAL) will
/// 		be available for filtering criteria</li>
/// 	<li>For <var>dataType</var>, choose either $$$MDDTSTRING, $$$MDDTNUMBER or $$$MDDTDATE ($horolog format)</li>
/// 	<li>Use <var>storage</var> to control how values are stored: $$$MDSTNORMAL for cases where you would
/// 		 use a normal index, $$$MDSTBITMAP where you would use a bitmap index (few different
/// 		 metadata values compared to total # of records)</li>
/// 	<li>If <var>dataType</var> is $$$MDDTSTRING, <var>caseSensitive</var> controls whether or not string
/// 		values should be treated as case-sensitive.</li>
/// 	<li>The <var>lovId</var> and <var>validateLov</var> parameters define whether a List Of Values is
/// 		available for this metadata field and whether input values should be verified against this list.
/// 		See also <method>AddListOfValues</method>.</li>
/// 	<li>If <var>hidden</var> is set to true, the field will by default not appear in metadata field
/// 		and value lists.</li>
/// </ul>
ClassMethod AddField(domainId As %Integer, fieldName As %String, supportedOperators As %List = {$lb($$$MDOPEQUAL)}, dataType As %String = {$$$MDDTSTRING}, storage As %Integer = {$$$MDSTNORMAL}, caseSensitive As %Boolean = 0, lovId As %Integer = -1, validateLov As %Boolean = 1, hidden As %Boolean = 0, Output sc As %Status = {$$$OK}) As %Integer
{
}

Parameter RemoveFieldEXP [ Internal ] = 1;

/// Removes a metadata field (by name) from the domain, including all references by existing sources.
ClassMethod RemoveField(domainId As %Integer, fieldName As %String) As %Status
{
}

Parameter RemoveFieldByIdEXP [ Internal ] = 1;

/// Removes a metadata field (by ID) from the domain, including all references by existing sources.
ClassMethod RemoveFieldById(domainId As %Integer, fieldId As %Integer) As %Status
{
}

Parameter UpdateFieldEXP [ Internal ] = 1;

/// <p>Updates the properties for a given metadata field (by name). See also <method>AddField</method>.</p>
/// <p>Specifying a "" for the <var>supportedOperators</var> will leave the current value for that
/// property. Similarly, specifying -1 for <var>storage</var>, <var>hidden</var> and
/// <var>validateLov</var> or -2 for <var>lovId</var> will leave their respective values
/// unmodified. Setting <var>lovId</var> to -1 will unset the LOV for this field.</p>
ClassMethod UpdateField(domainId As %Integer, fieldName As %String, supportedOperators As %List = "", storage As %Integer = -1, hidden As %Integer = -1, lovId As %Integer = -2, validateLov As %Integer = -1) As %Status
{
}

Parameter UpdateFieldByIdEXP [ Internal ] = 1;

/// <p>Updates the properties for a given metadata field (by ID). See also <method>AddField</method>.</p>
/// <p>Specifying a "" for the <var>supportedOperators</var> will leave the current value for that
/// property. Similarly, specifying -1 for <var>storage</var>, <var>hidden</var> and
/// <var>validateLov</var> or -2 for <var>lovId</var> will leave their respective values
/// unmodified. Setting <var>lovId</var> to -1 will unset the LOV for this field.</p>
ClassMethod UpdateFieldById(domainId As %Integer, fieldId As %Integer, supportedOperators As %List = "", storage As %Integer = -1, hidden As %Integer = -1, lovId As %Integer = -2, validateLov As %Integer = -1) As %Status
{
}

/// Returns the actual value for a given metadata field (by name) and source (by External ID).
ClassMethod GetValue(domainId As %Integer, fieldName As %String, externalId As %String, Output sc As %Status) As %String
{
}

/// Returns the actual value for a given metadata field (by ID) and source (by Source ID).
ClassMethod GetValueById(domainId As %Integer, fieldId As %Integer, srcId As %Integer, Output sc As %Status) As %String
{
}

Parameter GetValuesRT = "mdFieldId:%Integer,fieldName:%String,value:%String";

/// <p>Returns the actual metadata values for the given source (by External ID).</p>
/// <p>Setting <var>includeHidden</var> to true will also return the values for hidden metadata fields.</p>
ClassMethod GetValues(ByRef result As %Integer, domainId As %Integer, externalId As %String, includeHidden As %Boolean = 0) As %Status
{
}

Parameter GetValuesByIdRT = "mdFieldId:%Integer,fieldName:%String,value:%String";

/// <p>Returns the actual metadata values for the given source (by Source ID).</p>
/// <p>Setting <var>includeHidden</var> to true will also return the values for hidden metadata fields.</p>
ClassMethod GetValuesById(ByRef result As %Integer, domainId As %Integer, srcId As %Integer, includeHidden As %Boolean = 0) As %Status
{
}

Parameter SetValueEXP [ Internal ] = 1;

/// <p>Sets (or replaces if it exists) the value for a given metadata field (by name) for a given source
/// (by External ID).</p>
/// <p>Values for fields of type $$$MDDTSTRING are normalized and stripped of whitespace and control
/// characters at the beginning and end of the string.</p>
ClassMethod SetValue(domainId As %Integer, fieldName As %String, externalId As %String, value As %String) As %Status
{
}

Parameter SetValueByIdEXP [ Internal ] = 1;

/// <p>Sets (or replaces if it exists) the value for a given metadata field (by ID) for a given source
/// (by Source ID). Explicitly setting a value to "" (null/empty string) will erase the current value.</p>
/// <p>Values for fields of type $$$MDDTSTRING are normalized and stripped of whitespace and control
/// characters at the beginning and end of the string.</p>
ClassMethod SetValueById(domainId As %Integer, fieldId As %Integer, srcId As %Integer, value As %String) As %Status
{
}

/// Internal method to set a metadata value directly, without performing any existence checks.
ClassMethod SetValueByIdInternal(domainId As %Integer, fieldId As %Integer, srcId As %Integer, value As %String, skipExistingValueCheck As %Boolean = 0) As %Status [ Internal ]
{
}

/// <p>Starts a 'batch' during which metadata values can be set. Some setting operations and index
/// recalculations are optimized for batch processing.</p>
/// <p><b>NOTE:</b> It is currently up to the user to make sure no metadata values are read during
/// the batch and no values exist already (as replacing a value involves reading it). Reading metadata
/// field values during a batch is not guaranteed to return correct results.</p>
ClassMethod StartBatch(domainId As %Integer) As %Status
{
}

/// <p>Ends a metadata batch. See <method>StartBatch</method> for more details.</p>
ClassMethod EndBatch(domainId As %Integer) As %Status
{
}

/// <p>Adds a List Of Values to the domain, which can then be used as a list of allowable values for
/// one or more metadata fields.</p>
ClassMethod AddListOfValues(domainId As %Integer, lovName As %String, autoExtend As %Boolean = 1, Output sc As %Status) As %Integer [ Deprecated ]
{
}

Parameter AddLovValueEXP [ Internal ] = 1;

/// Adds a new value to an existing List Of Values
ClassMethod AddLovValue(domainId As %Integer, lovId As %Integer, value As %String, ByRef rank As %Integer = -1) As %Status [ Deprecated ]
{
}

Parameter GetLovValuesRT = "value:%String";

/// Returns all the allowed values for a given metadata LOV.
ClassMethod GetLovValues(ByRef result As %Integer, domainId As %Integer, lovId As %Integer) As %Status [ Deprecated ]
{
}

Parameter GetFieldValuesRT = "value:%String";

/// Returns all the distinct values currently in use for a given metadata field (by name).
/// See also <method>GetUniqueValues</method> for a version returning the number of sources with
/// this metadata value and sorting options.
ClassMethod GetFieldValues(ByRef result, domainId As %Integer, fieldName As %String, page As %Integer = 1, pageSize As %Integer = 10) As %Status
{
}

Parameter GetFieldValuesByIdRT = "value:%String";

/// Returns all the distinct values currently in use for a given metadata field (by ID).
ClassMethod GetFieldValuesById(ByRef result, domainId As %Integer, mdFieldId As %Integer, page As %Integer = 1, pageSize As %Integer = 10) As %Status
{
}

ClassMethod DeNormalizeValue(value As %String, mdfData As %List) As %String [ Internal ]
{
}

ClassMethod NormalizeValue(value As %String, mdfData As %List, Output isTruncated As %Boolean) As %String [ Internal ]
{
}

Parameter GetLovsRT [ Deprecated ] = "lovId:%Integer,name:%String,autoExtend:%Boolean";

/// Returns all LOVs (List of Values) registered for this domain.
ClassMethod GetLovs(ByRef result, domainId As %Integer, page As %Integer = 1, pageSize As %Integer = 10) As %Status [ Deprecated ]
{
}

/// <p><b>Note</b>: This implementation offers slight performance improvements over the default
/// implementation in <class>%iKnow.Queries.MetadataI</class> and uses the datatype-aware
/// normalized form of the metadata field value for sorting purposes.</p>
/// <p>Allows the results of <class>%iKnow.Queries.SourceAPI</class> queries to be re-sorted along
/// a particular metadata field. <var>pSort</var> is expected to contain the name of the metadata
/// field to sort by, optionally followed by a space and "ASC" (default) or "DESC". The string
/// "ExternalId" is also accepted as a valid sort field and should be resolved through the
/// GetExternalId method in <class>%iKnow.Queries.SourceAPI</class>, unless there is a metadata
/// field carrying the same name.</p>
/// <p><var>pSources</var> is expected to be an array containing all (unsorted) query results with
/// the source ID as the first row element, while <var>pResult</var> will be populated with the
/// sorted results like a usual iKnow API query.</p>
/// <p><var>pSort</var> can optionally be suffixed with a space and the string "ADDCOL", in which
/// case, a column containing the actual metadata value is appended to the results. Use this feature
/// with caution as it might impact SQL/WS clients, because the extra column is not declared in
/// the original query specs.</p>
/// <p><b>Note</b>: sources for which the requested metadata field is not populated or where its value
/// is longer than $$$IKHASHSIZE (150 characters) will be left out of the results.</p>
ClassMethod SortByField(ByRef pResult, pDomainId As %Integer, ByRef pSources, pSort As %String, pPage As %Integer = 1, pPageSize As %Integer = 10) As %Status [ Internal ]
{
}

/// Returns the unique metadata value corresponding to the supplied <var>pUniValueId</var>.
ClassMethod GetUniValue(pDomainId As %Integer, pUniValueId As %Integer) As %String
{
}

/// <p>Returns the id of a unique metadata value (for use in compressed storage) or creates it
/// if it didn't exist yet.</p>
/// <p>Note: This method is intended for internal use only.</p>
ClassMethod GetUniValueId(pDomainId As %Integer, pValue As %String, Output pSC As %Status = {$$$OK}) As %Integer [ Internal ]
{
}

Parameter GetUniqueValuesRT = "value:%String,frequency:%Integer";

/// <p>Returns all the unique metadata values for field <var>pFieldName</var> in sources
/// satisfying the supplied filter, optionally sorted by value (<var>pSortType</var> = "VALUE")
/// or frequency (<var>pSortType</var> = "FREQUENCY"). The returned frequency represents the
/// number of sources with this metadata value (satisfying the filter).</p>
/// <p>NOTE: sorting by value is only precise up to the 150 first characters</p>
ClassMethod GetUniqueValues(ByRef pResult, pDomainId As %Integer, pFieldName As %String, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %iKnow.Filters.Filter = "", pSortType As %String = "") As %Status
{
}

Parameter GetUniqueValuesByIdRT = "value:%String,frequency:%Integer";

/// <p>Returns all the unique metadata values for field <var>pFieldId</var> in sources
/// satisfying the supplied filter, optionally sorted by value (<var>pSortType</var> = "VALUE")
/// or frequency (<var>pSortType</var> = "FREQUENCY"). The returned frequency represents the
/// number of sources with this metadata value (satisfying the filter).</p>
/// <p>NOTE: sorting by value is only precise up to the 150 first characters</p>
ClassMethod GetUniqueValuesById(ByRef pResult, pDomainId As %Integer, pFieldId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %iKnow.Filters.Filter = "", pSortType As %String = "") As %Status
{
}

/// <p>Returns the number of unique metadata values for a given field <var>pFieldName</var> in
/// the sources satisfying the supplied filter, after normalization based on the field
/// specifications such as case sensitivity and data type.</p>
ClassMethod GetUniqueValueCount(pDomainId As %Integer, pFieldName As %String, pFilter As %iKnow.Filters.Filter = "", Output pSC = {$$$OK}) As %Integer
{
}

/// <p>Returns the number of unique metadata values for a given field <var>pFieldId</var> in
/// the sources satisfying the supplied filter, after normalization based on the field
/// specifications such as case sensitivity and data type.</p>
ClassMethod GetUniqueValueCountById(pDomainId As %Integer, pFieldId As %Integer, pFilter As %iKnow.Filters.Filter = "", Output pSC As %Status = {$$$OK}) As %Status
{
}

/// <p>Returns the "spread" of metadata values (number of distinct values) for field
/// <var>pFieldName</var> for the entities in <var>pEntityList</var>, in the sources satisfying
/// <var>pFilter</var>. When specifying multiple entities, sources (and their metadata values)
/// are included based on the value of <var>pSetOp</var>: if <var>pSetOp</var> = $$$UNION, only
/// one entity has to be present (default), if <var>pSetOp</var> = $$$INTERSECT, all of them
/// need to be present.</p>
ClassMethod GetMetaSpreadByEntities(pDomainId As %Integer, pFieldName As %String, pEntityList As %List, pFilter As %iKnow.Filters.Filter = "", pSetOp As %Integer = {$$$UNION}, Output pSC As %Status = {$$$OK}) As %Integer
{
}

/// <p>Returns the "spread" of metadata values (number of distinct values) for field
/// <var>pFieldName</var> for the entities in <var>pEntityIdList</var>, in the sources satisfying
/// <var>pFilter</var>. When specifying multiple entities, sources (and their metadata values)
/// are included based on the value of <var>pSetOp</var>: if <var>pSetOp</var> = $$$UNION, only
/// one entity has to be present (default), if <var>pSetOp</var> = $$$INTERSECT, all of them
/// need to be present.</p>
ClassMethod GetMetaSpreadByEntityIds(pDomainId As %Integer, pFieldName As %String, pEntityIdList As %List, pFilter As %iKnow.Filters.Filter = "", pSetOp As %Integer = {$$$UNION}, Output pSC As %Status = {$$$OK}) As %Integer
{
}

ClassMethod GetMetaSpreadInternal(pDomainId As %Integer, pFieldId As %Integer, pType As %String = "ENTITY", ByRef pIds, pFilter As %iKnow.Filters.Filter = "", pSetOp As %Integer = {$$$UNION}, Output pSC As %Status = {$$$OK}) As %Integer
{
}

/// <p>Create a <class>%iKnow.Filters.Filter</class> instance that filters sources according to
/// the given criteria, using the filter class compatible with this <class>%iKnow.Queries.MetadataI</class>
/// implementation.</p>
/// <p>For the default MetadataAPI, this is a <class>%iKnow.Filters.SimpleMetadataFilter</class> instance.</p>
ClassMethod CreateFilter(pDomainId As %Integer, pFieldName As %String, pOperator As %String, pValue As %String, Output pSC As %Status = {$$$OK}) As %iKnow.Filters.Filter
{
}

/// Returns some basic facts about metadata field <var>pFieldName</var>
ClassMethod GetFieldInfo(pDomainId As %Integer, pFieldName As %String, Output pInfo) As %Status
{
}

/// Returns some basic facts about metadata field with ID <var>pFieldId</var>
ClassMethod GetFieldInfoById(pDomainId As %Integer, pFieldId As %String, Output pInfo) As %Status
{
}

/// <p>Populates any number of metadata fields with the values retrieved based on the values
/// retrieved by a query <var>pSQL</var>. The query should at least return a column named
/// "SourceId" containing iKnow Source IDs or a column named "ExternalId" containing the full
/// External IDs of the sources whose metadata fields are to be updated. All other columns with
/// names matching existing metadata fields for this domain will be used to update or set the
/// fields' values for each record. Columns whose name does not correspond to an existing metadata
/// field will be ignored.</p>
/// <p>Sample query:
/// <blockquote><tt>SELECT ':SQL:' || YEAR(EventDate) || ':' || EventId As ExternalId, InjuriesHighest, YEAR(EventDate) "Year" FROM Aviation.Event</tt></blockquote>
/// This will update the InjuriesHighest and Year fields (if they exist).
ClassMethod PopulateFromSQL(pDomainId As %Integer, pSQL As %String, pIgnoreErrors As %Boolean = 1) As %Status
{
}

}
