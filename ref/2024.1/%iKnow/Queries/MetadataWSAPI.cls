/// <p>This is an automatically generated class, offering a functionally equivalent set of methods and queries as <class>%iKnow.Queries.MetadataAPI</class>, exposed as WebMethod methods.</p><p>See the classdocs for <class>%iKnow.Queries.MetadataAPI</class> for more information.</p>
Class %iKnow.Queries.MetadataWSAPI Extends %iKnow.Queries.AbstractWSAPI [ Deprecated, System = 4 ]
{

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
ClassMethod AddField(domainId As %Integer, fieldName As %String, supportedOperators As %ListOfDataTypes = {$lb($$$MDOPEQUAL)}, dataType As %String = {$$$MDDTSTRING}, storage As %Integer = {$$$MDSTNORMAL}, caseSensitive As %Boolean = 0, lovId As %Integer = -1, validateLov As %Boolean = 1, hidden As %Boolean = 0) As %Library.Integer [ WebMethod ]
{
}

/// <p>Adds a List Of Values to the domain, which can then be used as a list of allowable values for
/// one or more metadata fields.</p>
ClassMethod AddListOfValues(domainId As %Integer, lovName As %String, autoExtend As %Boolean = 1) As %Library.Integer [ WebMethod ]
{
}

/// Adds a new value to an existing List Of Values
ClassMethod AddLovValue(domainId As %Integer, lovId As %Integer, value As %String, rank As %Integer = -1) As %Boolean [ WebMethod ]
{
}

/// <p>Create a <class>%iKnow.Filters.Filter</class> instance that filters sources according to
/// the given criteria, using the filter class compatible with this <class>%iKnow.Queries.MetadataI</class>
/// implementation.</p>
/// <p>For the default MetadataAPI, this is a <class>%iKnow.Filters.SimpleMetadataFilter</class> instance.</p>
ClassMethod CreateFilter(pDomainId As %Integer, pFieldName As %String, pOperator As %String, pValue As %String) As %iKnow.Filters.Filter [ WebMethod ]
{
}

/// Returns the metadata field ID corresponding to the supplied name, or "" if none exists in this domain.
ClassMethod GetFieldId(domainId As %Integer, fieldName As %String) As %Library.Integer [ WebMethod ]
{
}

/// Returns all the distinct values currently in use for a given metadata field (by name).
/// See also <method>GetUniqueValues</method> for a version returning the number of sources with
/// this metadata value and sorting options.
ClassMethod GetFieldValues(domainId As %Integer, fieldName As %String, page As %Integer = 1, pageSize As %Integer = 10) As %XML.DataSet [ WebMethod ]
{
}

/// Returns all the distinct values currently in use for a given metadata field (by ID).
ClassMethod GetFieldValuesById(domainId As %Integer, mdFieldId As %Integer, page As %Integer = 1, pageSize As %Integer = 10) As %XML.DataSet [ WebMethod ]
{
}

/// <p>Returns all field definitions (including their properties) for the given domain.</p>
/// <p>Setting <var>includeHidden</var> to true will also return any metadata fields marked as 'hidden'.</p>
ClassMethod GetFields(domainId As %Integer, includeHidden As %Boolean = 0) As %XML.DataSet [ WebMethod ]
{
}

/// Returns all the allowed values for a given metadata LOV.
ClassMethod GetLovValues(domainId As %Integer, lovId As %Integer) As %XML.DataSet [ WebMethod ]
{
}

/// Returns all LOVs (List of Values) registered for this domain.
ClassMethod GetLovs(domainId As %Integer, page As %Integer = 1, pageSize As %Integer = 10) As %XML.DataSet [ WebMethod ]
{
}

/// <p>Returns the "spread" of metadata values (number of distinct values) for field
/// <var>pFieldName</var> for the entities in <var>pEntityList</var>, in the sources satisfying
/// <var>pFilter</var>. When specifying multiple entities, sources (and their metadata values)
/// are included based on the value of <var>pSetOp</var>: if <var>pSetOp</var> = $$$UNION, only
/// one entity has to be present (default), if <var>pSetOp</var> = $$$INTERSECT, all of them
/// need to be present.</p>
ClassMethod GetMetaSpreadByEntities(pDomainId As %Integer, pFieldName As %String, pEntityList As %ListOfDataTypes, pFilter As %String(MAXLEN=32767) = "", pSetOp As %Integer = {$$$UNION}) As %Library.Integer [ WebMethod ]
{
}

/// <p>Returns the "spread" of metadata values (number of distinct values) for field
/// <var>pFieldName</var> for the entities in <var>pEntityIdList</var>, in the sources satisfying
/// <var>pFilter</var>. When specifying multiple entities, sources (and their metadata values)
/// are included based on the value of <var>pSetOp</var>: if <var>pSetOp</var> = $$$UNION, only
/// one entity has to be present (default), if <var>pSetOp</var> = $$$INTERSECT, all of them
/// need to be present.</p>
ClassMethod GetMetaSpreadByEntityIds(pDomainId As %Integer, pFieldName As %String, pEntityIdList As %ListOfDataTypes, pFilter As %String(MAXLEN=32767) = "", pSetOp As %Integer = {$$$UNION}) As %Library.Integer [ WebMethod ]
{
}

ClassMethod GetMetaSpreadInternal(pDomainId As %Integer, pFieldId As %Integer, pType As %String = "ENTITY", pFilter As %String(MAXLEN=32767) = "", pSetOp As %Integer = {$$$UNION}) As %Library.Integer [ WebMethod ]
{
}

/// Returns the unique metadata value corresponding to the supplied <var>pUniValueId</var>.
ClassMethod GetUniValue(pDomainId As %Integer, pUniValueId As %Integer) As %Library.String [ WebMethod ]
{
}

/// <p>Returns the number of unique metadata values for a given field <var>pFieldName</var> in
/// the sources satisfying the supplied filter, after normalization based on the field
/// specifications such as case sensitivity and data type.</p>
ClassMethod GetUniqueValueCount(pDomainId As %Integer, pFieldName As %String, pFilter As %String(MAXLEN=32767) = "") As %Library.Integer [ WebMethod ]
{
}

/// <p>Returns all the unique metadata values for field <var>pFieldName</var> in sources
/// satisfying the supplied filter, optionally sorted by value (<var>pSortType</var> = "VALUE")
/// or frequency (<var>pSortType</var> = "FREQUENCY"). The returned frequency represents the
/// number of sources with this metadata value (satisfying the filter).</p>
/// <p>NOTE: sorting by value is only precise up to the 150 first characters</p>
ClassMethod GetUniqueValues(pDomainId As %Integer, pFieldName As %String, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pSortType As %String = "") As %XML.DataSet [ WebMethod ]
{
}

/// <p>Returns all the unique metadata values for field <var>pFieldId</var> in sources
/// satisfying the supplied filter, optionally sorted by value (<var>pSortType</var> = "VALUE")
/// or frequency (<var>pSortType</var> = "FREQUENCY"). The returned frequency represents the
/// number of sources with this metadata value (satisfying the filter).</p>
/// <p>NOTE: sorting by value is only precise up to the 150 first characters</p>
ClassMethod GetUniqueValuesById(pDomainId As %Integer, pFieldId As %Integer, pPage As %Integer = 1, pPageSize As %Integer = 10, pFilter As %String(MAXLEN=32767) = "", pSortType As %String = "") As %XML.DataSet [ WebMethod ]
{
}

/// Returns the actual value for a given metadata field (by name) and source (by External ID).
ClassMethod GetValue(domainId As %Integer, fieldName As %String, externalId As %String) As %Library.String [ WebMethod ]
{
}

/// Returns the actual value for a given metadata field (by ID) and source (by Source ID).
ClassMethod GetValueById(domainId As %Integer, fieldId As %Integer, srcId As %Integer) As %Library.String [ WebMethod ]
{
}

/// <p>Returns the actual metadata values for the given source (by External ID).</p>
/// <p>Setting <var>includeHidden</var> to true will also return the values for hidden metadata fields.</p>
ClassMethod GetValues(domainId As %Integer, externalId As %String, includeHidden As %Boolean = 0) As %XML.DataSet [ WebMethod ]
{
}

/// <p>Returns the actual metadata values for the given source (by Source ID).</p>
/// <p>Setting <var>includeHidden</var> to true will also return the values for hidden metadata fields.</p>
ClassMethod GetValuesById(domainId As %Integer, srcId As %Integer, includeHidden As %Boolean = 0) As %XML.DataSet [ WebMethod ]
{
}

/// Removes a metadata field (by name) from the domain, including all references by existing sources.
ClassMethod RemoveField(domainId As %Integer, fieldName As %String) As %Boolean [ WebMethod ]
{
}

/// Removes a metadata field (by ID) from the domain, including all references by existing sources.
ClassMethod RemoveFieldById(domainId As %Integer, fieldId As %Integer) As %Boolean [ WebMethod ]
{
}

/// <p>Sets (or replaces if it exists) the value for a given metadata field (by name) for a given source
/// (by External ID).</p>
/// <p>Values for fields of type $$$MDDTSTRING are normalized and stripped of whitespace and control
/// characters at the beginning and end of the string.</p>
ClassMethod SetValue(domainId As %Integer, fieldName As %String, externalId As %String, value As %String) As %Boolean [ WebMethod ]
{
}

/// <p>Sets (or replaces if it exists) the value for a given metadata field (by ID) for a given source
/// (by Source ID). Explicitly setting a value to "" (null/empty string) will erase the current value.</p>
/// <p>Values for fields of type $$$MDDTSTRING are normalized and stripped of whitespace and control
/// characters at the beginning and end of the string.</p>
ClassMethod SetValueById(domainId As %Integer, fieldId As %Integer, srcId As %Integer, value As %String) As %Boolean [ WebMethod ]
{
}

/// <p>Updates the properties for a given metadata field (by name). See also <method>AddField</method>.</p>
/// <p>Specifying a "" for the <var>supportedOperators</var> will leave the current value for that
/// property. Similarly, specifying -1 for <var>storage</var>, <var>hidden</var> and
/// <var>validateLov</var> or -2 for <var>lovId</var> will leave their respective values
/// unmodified. Setting <var>lovId</var> to -1 will unset the LOV for this field.</p>
ClassMethod UpdateField(domainId As %Integer, fieldName As %String, supportedOperators As %ListOfDataTypes = "", storage As %Integer = -1, hidden As %Integer = -1, lovId As %Integer = -2, validateLov As %Integer = -1) As %Boolean [ WebMethod ]
{
}

/// <p>Updates the properties for a given metadata field (by ID). See also <method>AddField</method>.</p>
/// <p>Specifying a "" for the <var>supportedOperators</var> will leave the current value for that
/// property. Similarly, specifying -1 for <var>storage</var>, <var>hidden</var> and
/// <var>validateLov</var> or -2 for <var>lovId</var> will leave their respective values
/// unmodified. Setting <var>lovId</var> to -1 will unset the LOV for this field.</p>
ClassMethod UpdateFieldById(domainId As %Integer, fieldId As %Integer, supportedOperators As %ListOfDataTypes = "", storage As %Integer = -1, hidden As %Integer = -1, lovId As %Integer = -2, validateLov As %Integer = -1) As %Boolean [ WebMethod ]
{
}

Parameter NAMESPACE = "http://www.intersystems.com/iKnow/Queries/MetadataWSAPI";

Parameter SERVICENAME = "iKnow.Queries.MetadataWSAPI";

Parameter USECLASSNAMESPACES = 1;

}
