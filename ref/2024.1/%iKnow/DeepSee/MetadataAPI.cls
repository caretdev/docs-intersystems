/// <p>This class offers a read-only implementation for most of the
/// <class>%iKnow.Queries.MetadataI</class> interface in DeepSee-managed domains. It exposes all
/// available dimension levels and measures for the cube managing the domain. This enables
/// iKnow-style query filtering using the result of <method>CreateFilter</method> as a convenient
/// alternative to manually instantiating MDX or SQL-based filter objects.</p>
/// <p>The "virtual" metadata fields exposed this way can be referenced by name or MDX spec and
/// will be resolved as follows:
/// <ol>
/// 	<li>[dimName].[hierName].[levelName]</li>
/// 	<li>dimName.hierName.levelName</li>
/// 	<li>[dimName].[levelName]</li>
/// 	<li>dimName.levelName</li>
/// 	<li>[measures].[msrName]</li>
/// 	<li>levelName</li>
/// 	<li>msrName</li>
/// 	<li>factName</li>
/// </ol>
/// <p>If the spec is not complete (missing hierarchy and/or dimension, the "field name" is
/// resolved as the first level, measure or fact found with a corresponding name. Therefore, it
/// is recommended to use full specifications as soon as there is a potential name conflict.
/// When working with fact names, the values in the cube's Fact table are considered to be the
/// desired results and no star tables will be queried.</p>
/// <p>For iKnow-managed domains, use <class>%iKnow.Queries.MetadataAPI</class>.</p>
/// <p>NOTE: this does not support cube relationships or calculated members</p>
Class %iKnow.DeepSee.MetadataAPI Extends %iKnow.Queries.MetadataI [ Deprecated, System = 4 ]
{

/// Creates a <class>%iKnow.Filters.Filter</class> object for filtering sources according to
/// the provided criteria.
ClassMethod CreateFilter(pDomainId As %Integer, pFieldName As %String, pOperator As %String, pValue As %String, Output pSC As %Status = {$$$OK}) As %iKnow.Filters.Filter
{
}

/// Returns the full MDX spec for the given <var>pFieldName</var>, which can be used as an
/// identifier for this field.
ClassMethod GetFieldId(pDomainId As %Integer, pFieldName As %String, Output pSC As %Status = {$$$OK}) As %Integer
{
}

/// Resolves a metadata field name and returns various pieces of information about it.
ClassMethod GetFactInfo(pDomainId As %Integer, pFieldName As %String, Output pFactName As %String = "", Output pType As %String = "", Output pFullSpec As %String = "", Output pDimType As %String = "") As %Status [ Internal ]
{
}

/// Returns the actual value for a given metadata field (by name) and source (by External ID).
ClassMethod GetValue(pDomainId As %Integer, pFieldName As %String, pExternalId As %String, Output pSC As %Status) As %String
{
}

Parameter GetFieldsRT [ Internal ] = "mdFieldId:%String,fieldName:%String,supportedOperators:%List,dataType:%String,storage:%Integer,caseSensitive:%Boolean,lovId:%Integer,validateLov:%Boolean,hidden:%Boolean";

/// <p>Returns a list of all the "virtualized" metadata fields exposed for a DeepSee-managed domain
/// in an array: pFields(n) = $lb(fieldName, fullSpec, [dimension|measure]). Please note the
/// returned field names are not necessarily unique across the whole cube, so using
/// the full specificiation (returned as the first column) is safer.</p>
/// <p>Because of the "virtual" nature of these fields, only the fieldName (2nd) and supportedOperators (3rd)
/// output columns are to be taken into account. The <var>pIncludeHidden</var> parameter is ignored.</p>
ClassMethod GetFields(ByRef pFields As %Integer, pDomainId As %Integer, pIncludeHidden As %Boolean = 0) As %Status
{
}

ClassMethod GetFieldInfoById(pDomainId As %Integer, pFieldId As %String, Output pInfo) As %Status
{
}

ClassMethod GetFieldInfo(pDomainId As %Integer, pFieldName As %String, Output pInfo) As %Status
{
}

/// Use <method>GetValue</method> instead.
ClassMethod GetValueById(pDomainId As %Integer, pFieldId As %Integer, pSrcId As %Integer, Output pSC As %Status) As %String
{
}

ClassMethod SetValue(domainId As %Integer, fieldName As %String, externalId As %String, value As %String) As %Status
{
}

ClassMethod SetValueById(domainId As %Integer, fieldId As %Integer, srcId As %Integer, value As %String) As %Status
{
}

ClassMethod AddField(domainId As %Integer, fieldName As %String, supportedOperators As %List, dataType As %String = {$$$MDDTSTRING}, storage As %Integer = {$$$MDSTNORMAL}, caseSensitive As %Boolean = 0, lovId As %Integer = -1, validateLov As %Boolean = 1, hidden As %Boolean = 0) As %Integer
{
}

ClassMethod EndBatch(domainId As %Integer) As %Status
{
}

ClassMethod StartBatch(domainId As %Integer) As %Status
{
}

}
