/// <p>This is an automatically generated class, offering a functionally equivalent set of methods and queries as <class>%iKnow.Queries.CrcAPI</class>, exposed as WebMethod methods.</p><p>See the classdocs for <class>%iKnow.Queries.CrcAPI</class> for more information.</p>
Class %iKnow.Queries.CrcWSAPI Extends %iKnow.Queries.AbstractWSAPI [ Deprecated, System = 4 ]
{

///  <p>This method will return all CRC triples in which any of the entities supplied in the <var>entitylist</var>
///  participate, within the boundaries of the supplied domain.</p>
///  <p>The scope of this query can be limited through supplying a <class>%iKnow.Filters.Filter</class> object for the <var>filter</var>
///  parameter to restrict the result to those CRCs occurring in any source satisfying the filter
///  criteria. When using a filter, the <var>filtermode</var> parameter will control whether or not the
///  frequency and spread of returned records should be recalculated and whether results should be
///  resorted along these recalculated numbers.</p>
///  <p>Specifying a value for <var>positionstomatch</var> will limit the result to
///  those CRCs in which the supplied entities are in the Head (with <var>positionstomatch</var> = $$$USEPOSH),
///  Relation (with <var>positionstomatch</var> = $$$USEPOSR) or Tail (with <var>positionstomatch</var> = $$$USEPOST) role
///  of the CRC, or in any combination of these (with <var>positionstomatch</var> = $$$USEPOSHT, $$$USEPOSHR,
///  $$$USEPOSRT, $$$USEPOSALL (the default)).</p>
/// <p>If stemming is enabled for this domain through $$$IKPSTEMMING, CRCs containing any actual
/// form of the entities in <var>entityList</var> will be returned. Use <var>pActualFormOnly</var>=1
/// to retrieve only those CRCs containing the actual forms in <var>entitylist</var>. This
/// argument is ignored if stemming is not enabled.</p>
ClassMethod GetByEntities(domainid As %Integer, entitylist As %ListOfDataTypes, page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", filtermode As %Integer = {$$$FILTERONLY}, positionstomatch As %Integer = {$$$USEPOSALL}, pActualFormOnly As %Boolean = 0) As %XML.DataSet [ WebMethod ]
{
}

///  <p>Returns the CRCs in this domain containing any or all of a list of entity IDs.</p>
///  <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetByEntityIds(domainid As %Integer, entityidlist As %ListOfDataTypes, page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", filtermode As %Integer = {$$$FILTERONLY}, positionstomatch As %Integer = {$$$USEPOSALL}, pActualFormOnly As %Boolean = 0) As %XML.DataSet [ WebMethod ]
{
}

///  <p>Returns all CRCs appearing in any source satisfying the supplied <var>filter</var>
///  objects criteria, with their frequencies and spread recalculated to comply with the filter
///  depending on the value of <var>filtermode</var>, but the result is NOT re-sorted, regardless
///  of the value for <var>filtermode</var> (use <method>GetTop</method> if you want sorted results).</p>
ClassMethod GetByFilter(domainid As %Integer, filter As %String(MAXLEN=32767) = "", filtermode As %Integer = {$$$FILTERONLY}) As %XML.DataSet [ WebMethod ]
{
}

///  <p>Returns the unique CRCs appearring in the specified sources.</p>
///  <p>To get the unique CRCs of a virtual source, only a single virtual source can be supplied using
///  its negative ID value (otherwise, -1 is returned).</p>
ClassMethod GetBySource(domainid As %Integer, sourceidlist As %ListOfDataTypes, page As %Integer = 1, pagesize As %Integer = 10) As %XML.DataSet [ WebMethod ]
{
}

///  <p>Returns the total number of unique CRCs in a domain, optionally limited through supplying a
///  <class>%iKnow.Filters.Filter</class> object as the <var>filter</var> parameter to restrict the result to
///  those CRCs occurring in any source satisfying the filter criteria.</p>
ClassMethod GetCountByDomain(domainid As %Integer, filter As %String(MAXLEN=32767) = "", includeZeroFrequency As %Boolean = 0) As %Library.Integer [ WebMethod ]
{
}

///  <p>Returns the number of CRCs in this domain, based on a list of entities.</p>
///  <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetCountByEntities(domainid As %Integer, entitylist As %ListOfDataTypes, filter As %String(MAXLEN=32767) = "", positionstomatch As %Integer = {$$$USEPOSALL}, pActualFormOnly As %Boolean = 0) As %Library.Integer [ WebMethod ]
{
}

///  <p>Returns the number of CRCs in this domain, based on a list of entity IDs.</p>
///  <p>See also <method>GetByEntities</method> for a description of the parameters.</p>
ClassMethod GetCountByEntityIds(domainid As %Integer, entityidlist As %ListOfDataTypes, filter As %String(MAXLEN=32767) = "", positionstomatch As %Integer = {$$$USEPOSALL}, pActualFormOnly As %Boolean = 0) As %Library.Integer [ WebMethod ]
{
}

///  <p>Returns the total number of unique CRCs appearing in either (if <var>setop</var> = $$$UNION) or
///  all (if <var>setop</var> = $$$INTERSECT) of the sources specified by ID in <var>sourceidlist</var>.</p>
///  <p>To get the unique CRCs of a virtual source, only a single virtual source can be supplied using
///  its negative ID value (otherwise, -1 is returned).</p>
ClassMethod GetCountBySource(domainid As %Integer, sourceidlist As %ListOfDataTypes, setop As %Integer = {$$$UNION}) As %Library.Integer [ WebMethod ]
{
}

///  <p>Returns the frequency of the CRC corresponding to the supplied <var>crcUniId</var>.</p>
///  <p>When specifying a Virtual Source ID, the frequency within the virtual source will be returned.</p>
ClassMethod GetFrequency(domainId As %Integer, crcUniId As %Integer, vSrcId As %Integer = 0, filter As %String(MAXLEN=32767) = "") As %Library.Integer [ WebMethod ]
{
}

///  <p>Returns, if any, the CRC ID for the combination of Head, Relation and Tail specified.</p>
///  <p>When specifying a Virtual Source ID, it will treat the head, relation and tails as virtual
///  entities, in the context of that vSrcId.</p>
ClassMethod GetId(domainid As %Integer, head As %String, relation As %String, tail As %String, vSrcId As %Integer = 0) As %Library.Integer [ WebMethod ]
{
}

///  <p>Returns the total number of CRC occurrences in the specified sources.</p>
///  <p>Use negative source IDs to refer to virtual sources</p>
ClassMethod GetOccurrenceCountBySource(domainid As %Integer, sourceidlist As %ListOfDataTypes) As %Library.Integer [ WebMethod ]
{
}

///  <p>Returns the CRC occurrences for a given source, in the order in which they appear.</p>
ClassMethod GetOccurrencesBySource(domainid As %Integer, srcid As %Integer, page As %Integer = 1, pagesize As %Integer = 10) As %XML.DataSet [ WebMethod ]
{
}

///  <p>Returns the spread of the CRC corresponding to the supplied <var>crcUniId</var>.</p>
ClassMethod GetSpread(domainId As %Integer, crcUniId As %Integer, filter As %String(MAXLEN=32767) = "") As %Library.Integer [ WebMethod ]
{
}

///  <p>Returns the most frequently occurring CRCs for this domain, sorted by descending frequency
///  (with <var>sorttype</var> $$$SORTBYFREQUENCY), spread (with <var>sorttype</var> $$$SORTBYSPREAD) or the
///  domain default (with <var>sorttype</var> $$$SORTBYDOMAINDEFAULT).</p>
///  <p>The scope of this query can be limited through supplying a <class>%iKnow.Filters.Filter</class> object for the <var>filter</var>
///  parameter to restrict the result to those CRCs occurring in any source satisfying the filter
///  criteria. When using a filter, the <var>filtermode</var> parameter will control whether or not the
///  frequency and spread of returned records should be recalculated and whether results should be
///  resorted along these recalculated numbers.</p>
///  <p>If a Virtual Source ID is provided, only the entities in that virtual source will be considered,
///  filters are ignored and the sort type will always be $$$SORTBYFREQUENCY.</p>
ClassMethod GetTop(domainid As %Integer, page As %Integer = 1, pagesize As %Integer = 10, filter As %String(MAXLEN=32767) = "", filtermode As %Integer = {$$$FILTERONLY}, sorttype As %Integer = {$$$SORTBYDOMAINDEFAULT}, vSrcId As %Integer = 0) As %XML.DataSet [ WebMethod ]
{
}

///  <p>Returns the entity values this CRC is composed of.</p>
///  <p>When specifying a Virtual Source ID, it will treat the crcid as a virtual one,
///  in the context of that vSrcId.</p>
ClassMethod GetValue(domainid As %Integer, crcid As %Integer, vSrcId As %Integer = 0) As %XML.DataSet [ WebMethod ]
{
}

Parameter NAMESPACE = "http://www.intersystems.com/iKnow/Queries/CrcWSAPI";

Parameter SERVICENAME = "iKnow.Queries.CrcWSAPI";

Parameter USECLASSNAMESPACES = 1;

}
