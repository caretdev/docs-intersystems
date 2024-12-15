///  <p>This is the base class for iKnow Filter objects, restricting the scope of an iKnow Query
///  to a subset of all the sources in a domain through filter criteria based on the properties of
///  a Source. These criteria are expressed through a number of <b>Filter Parameters</b> which should
///  be passed as arguments to the <method>%New</method> method when instantiating a filter object.
///  Typically, the first Filter Parameter is the Domain ID of the domain of which sources are to
///  be filtered.</p>
///  <p>Filters have a <b>String Representation</b> so they can be passed around in non-object
///  environments such as SQL and SOAP. Subclasses should therefore provide an unambiguous
///  implementation for <method>ToString</method>, serializing its Filter Parameters so the string can
///  be passed around and then <var>deserialized</var> through the <method>RestoreFilterFromString</method>
///  method. See also <method>CreateAsString</method> and <class>%iKnow.Filters.FilterWSAPI</class> for
///  handling filters in non-COS environments.</p>
///  <p>Subclasses should provide an implementation for (at least) <method>BuildSourceFilter</method>,
///  building a bitstring with 1s for those Source IDs satisfying the filter criteria the filter class
///  represents. In their <method>%OnNew</method> implementation, subclasses should make sure to
///  set the <property>DomainId</property> property and call <method>Initialize</method> after
///  setting all other properties specific to its implementation that influence the outcome of its
///  <method>ToString</method>.</p>
///  <p>Filters can be <b>cached</b> so their calculated bitstrings can be reused (as long as they
///  are still valid) across processes and time. Cache usage can be configured either by setting the
///  $$$IKPENABLEFILTERCACHE domain parameter, or through a subclass explicitly enabling or
///  disabling it when calling <method>Initialize</method>.</p>
///  <p>Sample Filter implementations include <class>%iKnow.Filters.ExternalIdFilter</class>,
///  <class>%iKnow.Filters.SentenceCountFilter</class> and <class>%iKnow.Filters.SimpleMetadataFilter</class></p>
///  <p><b>WARNING:</b> When implementing a custom filter class, either make its properties read-only,
///  or override the corresponding Set methods to call <method>ChangeParams</method> to reset the
///  internal representations after property values change. When setting these updateable properties in
///  the class' <method>%OnNew</method> method, use i% syntax to bypass these setters.</p>
Class %iKnow.Filters.Filter Extends %RegisteredObject [ Abstract, Deprecated, System = 4 ]
{

///  The domain ID this filter instance is targeting.
Property DomainId As %Integer [ Final ];

///  Whether or not this filter instance is stored in the persistent cache.
Property IsCached As %Integer [ Final, InitialExpression = -1, ReadOnly ];

///  An internal identifier for this Filter instance.
Property FilterId As %Integer [ Internal, ReadOnly ];

Property FilteredBitsGlo As %String [ Internal, Private, ReadOnly ];

Property IsCalculatedGlo As %String [ Internal, Private, ReadOnly ];

Property FilterValidGlo As %String [ Internal, Private, ReadOnly ];

Property FilteredGlo As %String [ Internal, Private, ReadOnly ];

Property FilteredFreqGlo As %String [ Internal, Private, ReadOnly ];

Property FilteredSpreadGlo As %String [ Internal, Private, ReadOnly ];

Property FilteredQParams As %String [ Internal, Private, ReadOnly ];

Property FilteredQRange As %String [ Internal, Private, ReadOnly ];

Property FilteredQResult As %String [ Internal, Private, ReadOnly ];

///  <p>The total number of sources satisfying this filter instances criteria.
///  <p>This property is used to choose the fastest access path in iKnow Query implementations.</p>
Property FilteredSourceCount As %Integer [ InitialExpression = -1, ReadOnly ];

///  <p>The total number of distinct entities occurring in at least one of the sources satisfying
///  this filter instances criteria.</p>
///  <p>This property is used to choose the fastest access path in iKnow Query implementations.</p>
Property FilteredEntityUniqueCount As %Integer [ InitialExpression = -1, Private, ReadOnly ];

///  <p>The total number of distinct CRCs occurring in at least one of the sources satisfying
///  this filter instances criteria.</p>
///  <p>This property is used to choose the fastest access path in iKnow Query implementations.</p>
Property FilteredCrcUniqueCount As %Integer [ InitialExpression = -1, Private, ReadOnly ];

///  <p>The ratio of sources satisfying this filter instances criteria to the total number of sources
///  in this domain.</p>
///  <p>This property is used to choose the fastest access path in iKnow Query implementations.</p>
Property Selectivity As %Numeric [ InitialExpression = -1, ReadOnly ];

///  <p>This method initializes the data structures this Filter object will be using througout its
///  lifetime as an object instance. If caching is enabled for this object (<var>useCache</var> = 1),
///  it will check if there is already a cached entry corresponding to these filter criteria it can
///  reuse, or create a new cache entry otherwise. If caching is disabled (<var>useCache</var> = 0),
///  Process-Private Globals will be used for storing this filter instances internals and nothing
///  will be reused. If <var>useCache</var> = -1 (default), the domain default will be used
///  (set through the $$$IKPENABLEFILTERCACHE domain parameter).</p>
Method Initialize(useCache As %Integer = -1) As %Status
{
}

///  <p>Utility method to restore a cached filter based on its cached filter ID.</p>
ClassMethod RestoreFilterFromId(domainId As %Integer, filterId As %Integer) As %iKnow.Filters.Filter [ Final ]
{
}

///  <p>Utility method to recreate a filter based on its string representation, which
///  by default corresponds to the filter class name, a pipe character (|) and a filter-specific
///  string containing all parameters required to recreate the string using the <method>%New</method>
///  method. Subclasses should override <method>RestoreFilterFromStringInternal</method> if this
///  default behavior is not sufficient.</p>
///  <p>This method is used primarily in SQL and Web Service scenarios, where the filter objects
///  themselves cannot be passed in a SQL statement or SOAP request.</p>
ClassMethod RestoreFilterFromString(filterSpec As %String) As %iKnow.Filters.Filter [ Final ]
{
}

///  <p>Default implementation, with the filterParams corresponding to all <method>%New</method> arguments.
///  See also <method>RestoreFilterFromString</method>.</p>
ClassMethod RestoreFilterFromStringInternal(filterParams As %String) As %iKnow.Filters.Filter [ Private ]
{
}

///  <p>Subclasses should implement this method to build a string representation of the filter
///  instance. It should start with the filter class name, followed by a pipe (|) character and
///  then a string representation that can be interpreted by its <method>RestoreFilterFromStringInternal</method>
///  implementation.</p>
Method ToString() As %String [ Abstract ]
{
}

///  <p>Returns a bitstring representing the Source IDs satisfying this Filters criteria, for
///  the given offset (sourceId\64000+1).</p>
Method GetSourceFilter(offset As %Integer) As %String [ Final ]
{
}

///  <p>Method to be called by the subclass' implementation of <method>BuildSourceBits</method> to
///  register a bitstring of Source IDs at a particular offset.</p>
Method SetSourceBits(offset As %Integer, bits As %String) As %Status [ Final, Private ]
{
}

///  <p>Retrieves a bitstring representing the Source IDs satisfying this Filters criteria, for
///  the offset (sourceId\64000+1) following the supplied one. The returned number is the next
///  offset (given the direction).</p>
Method GetNextSourceFilterOffset(offset As %Integer = "", Output nextBits As %Integer, direction As %Integer = 1) As %Integer
{
}

///  <p>This is the primary method that needs to be implemented by an actual <class>%iKnow.Filters.Filter</class>
///  subclass to translate the abstract filter criteria the subclass addresses into a bitstring based on
///  Source IDs. The subclass' implementation of this method should use <method>SetSourceBits</method>
///  for this purpose, setting the requested bitstrings for each offset up to <var>maxOffset</var>.</p>
Method BuildSourceFilter(maxOffset As %Integer) As %Status [ Abstract, Private ]
{
}

Method GetSecondaryFilter(type As %Integer, offset As %Integer) As %String [ Internal ]
{
}

Method GetNextFilterOffset(type As %Integer, offset As %Integer, Output nextBits As %String, direction As %Integer = 1) As %Integer [ Internal ]
{
}

///  <p>Returns a bitstring on entUniIDs, representing those unique entities appearing in at least
///  one source satisfying the filter criteria.</p>
Method GetEntityUniqueFilter(offset As %Integer) As %String [ Final ]
{
}

///  <p>Returns the next offset for which this filter has bits (also returned as <var>nextBits</var>) in its
///  filter on unique entity IDs.</p>
Method GetNextEntityUniqueFilterOffset(offset As %Integer, Output nextBits As %String, direction As %Integer = 1) As %Integer [ Final ]
{
}

///  <p>Returns a bitstring on entOccIDs, representing those entity occurrences appearing in a source
///  source satisfying the filter criteria.</p>
Method GetEntityOccurrenceFilter(offset As %Integer) As %String [ Final ]
{
}

///  <p>Returns the next offset for which this filter has bits (also returned as <var>nextBits</var>) in its
///  filter on entity occurrence IDs.</p>
Method GetNextEntityOccurrenceFilterOffset(offset As %Integer, Output nextBits As %String, direction As %Integer = 1) As %Integer [ Final ]
{
}

///  <p>Returns a bitstring on crcUniIDs, representing those unique CRCs appearing in at least
///  one source satisfying the filter criteria.</p>
Method GetCRCUniqueFilter(offset As %Integer) As %String [ Final ]
{
}

///  <p>Returns the next offset for which this filter has bits (also returned as <var>nextBits</var>) in its
///  filter on unique CRC IDs.</p>
Method GetNextCRCUniqueFilterOffset(offset As %Integer, Output nextBits As %String, direction As %Integer = 1) As %Integer [ Final ]
{
}

///  <p>Returns a bitstring on crcUniIDs, representing those unique CCs appearing in at least
///  one source satisfying the filter criteria.</p>
Method GetCcUniqueFilter(offset As %Integer) As %String [ Final ]
{
}

///  <p>Returns the next offset for which this filter has bits (also returned as <var>nextBits</var>) in its
///  filter on unique CC IDs.</p>
Method GetNextCcUniqueFilterOffset(offset As %Integer, Output nextBits As %String, direction As %Integer = 1) As %Integer [ Final ]
{
}

///  <p>Returns a bitstring on crcOccIDs, representing those CRC occurrences appearing in a source
///  satisfying the filter criteria.</p>
Method GetCRCOccurrenceFilter(offset As %Integer) As %String [ Final ]
{
}

///  <p>Returns the next offset for which this filter has bits (also returned as <var>nextBits</var>) in its
///  filter on CRC occurrence IDs.</p>
Method GetNextCRCOccurrenceFilterOffset(offset As %Integer, Output nextBits As %String, direction As %Integer = 1) As %Integer [ Final ]
{
}

///  <p>Returns a bitstring on path IDs, representing those paths appearing in a source satisfying
///  the filter criteria.</p>
Method GetPathFilter(offset As %Integer) As %String [ Final ]
{
}

///  <p>Returns the next offset for which this filter has bits (also returned as <var>nextBits</var>) in its
///  filter on path IDs.</p>
Method GetNextPathFilterOffset(offset As %Integer, Output nextBits As %String, direction As %Integer = 1) As %Integer [ Final ]
{
}

///  <p>Builds a filter on entUniIds or crcUniIds, starting from the one on Source IDs.</p>
Method BuildUniqueFilter(type As %Integer) As %Status [ Final, Internal ]
{
}

///  <p>Builds a filter on entity occurrence IDs specifically in a concept or relation role,
///  starting from the one on entity occurrence IDs.</p>
Method BuildTypedEntOccFilter(type As %Integer) As %Status [ Final, Internal ]
{
}

///  <p>Builds a filter on entOccIds, crcOccIds or pathIds, starting from the one on Source IDs.</p>
Method BuildOccurrenceFilter(type As %Integer = {$$$IKFENTOCC}) As %Status [ Final, Internal ]
{
}

///  <p>Resets all internal representations, forcing further use of this filter to
///  recalculate results. If a <var>type</var> is supplied, only the bitstrings of that type
///  are reset, including dependent ones. In the case of Source IDs (<var>type</var> = $$$IKFSOURCE),
///  specific offset values can be invalidated separately.</p>
Method Invalidate(type As %Integer = {$$$IKFSOURCE}) As %Status
{
}

///  <p>This class method is an access point to generate the string representation (as specified in
///  <method>ToString</method>) for <class>%iKnow.Filters.Filter</class> classes, accessible from COS
///  and SQL scenarios that cannot or prefer not to directly instantiate objects through COS.</p>
///  <p>When calling this method, you should supply the <b>Filter Parameters</b> as if calling the
///  <method>%New</method> method of this particular Filter implementation.</p>
///  <p>For Web Service scenario's, use the corresponding method in <class>%iKnow.Filters.FilterWSAPI</class>.</p>
ClassMethod CreateAsString(createParams...) As %String [ Final, SqlProc ]
{
}

///  <p>This class enables SQL users to create the string representation of a
///  <class>%iKnow.Filters.GroupFilter</class> composed of multiple subfilters passed in using their
///  respective string representations as the <var>filters...</var> parameter.</p>
///  <p>For Web Service scenario's, use the corresponding method in <class>%iKnow.Filters.FilterWSAPI</class>.</p>
ClassMethod CreateGroupAsString(domainId As %Integer, groupLogic As %Integer = {$$$GROUPFILTERAND}, negated As %Boolean = 0, filters...) As %String [ Final, SqlProc ]
{
}

///  Override Set method to invalidate filter upon change
Method DomainIdSet(domainId As %Integer) As %Status [ Internal, ServerOnly = 1 ]
{
}

///  <p>This method should be called inside *Set methods of subclasses that allow their properties
///  to be changed in the instances lifetime, to make sure it's properly re-initialized.</p>
Method ChangeParams() As %Status [ Private ]
{
}

///  <p>Checks whether this filter is in a valid state and all calculated bitstrings are up-to-date
///  through a call to <method>IsValid</method>, the result of which is returned as <var>isValid</var>. If
///  the bitstrings of the requested <var>type</var> are invalid, <method>Invalidate</method> is called.</p>
Method Validate(type As %Integer = {$$$IKFSOURCE}, Output isValid As %Boolean = 0) As %Status [ Private ]
{
}

///  <p>Checks if this filter for <var>type</var> is still up-to-date with regards to incorporating the
///  most recent source additions and changes. Subclasses might wish to override this method but should
///  combine their additional checks with the result of this root implementation if they do.</p>
///  <p>If the requested filter is not calculated, this method will return 0.</p>
Method IsValid(type As %Integer = {$$$IKFSOURCE}) As %Boolean
{
}

Method SelectivityGet() As %Numeric [ Internal, ServerOnly = 1 ]
{
}

Method FilteredSourceCountGet() As %Integer [ Internal, ServerOnly = 1 ]
{
}

///  <p>Returns the total number of distinct entities occurring in at least one of the sources satisfying
///  this filter instances criteria.</p>
///  <p>This property is used to choose the fastest access path in iKnow Query implementations.</p>
Method GetFilteredEntityUniqueCount(ByRef approximate As %Boolean = 0) As %Integer [ Final ]
{
}

///  <p>Returns the total number of distinct CRCs occurring in at least one of the sources satisfying
///  this filter instances criteria.</p>
///  <p>This property is used to choose the fastest access path in iKnow Query implementations.</p>
Method GetFilteredCrcUniqueCount(ByRef approximate As %Boolean = 0) As %Integer [ Internal, ServerOnly = 1 ]
{
}

///  <p>Clears a specific filter from the persistent filter cache, if it exists.</p>
ClassMethod ClearCachedFilter(domainId As %Integer, filterId As %Integer) As %Status [ Final, SqlProc ]
{
}

///  <p>Clears all filters from the persistent filter cache.</p>
ClassMethod ClearCachedFilters(domainId As %Integer) As %Status [ Final, SqlProc ]
{
}

///  <p>Returns the total frequency of an entity in the sources satisfying this filter instances
///  criteria, where the entities role is concept (if <var>role</var> = $$$ENTTYPECONCEPT), relation
///  (if <var>role</var> = $$$ENTTYPERELATION) or either of the two (if <var>role</var> = $$$ENTTYPEANY).</p>
Method GetFilteredEntityFrequency(entUniId As %Integer, role As %Integer = {$$$ENTTYPEANY}) As %Integer
{
}

///  <p>Returns the total frequency of a stem in the sources satisfying this filter instances
///  criteria, where the stem's role is concept (if <var>pRole</var> = $$$ENTTYPECONCEPT), relation
///  (if <var>pRole</var> = $$$ENTTYPERELATION) or either of the two (if <var>pRole</var> = $$$ENTTYPEANY).</p>
Method GetFilteredStemFrequency(pStemUniId As %Integer, pRole As %Integer = {$$$ENTTYPEANY}) As %Integer
{
}

///  <p>Returns the total number of sources in which the supplied entity appears that satisfy this
///  filter instances criteria, where its role is concept (if <var>role</var> = $$$ENTTYPECONCEPT), relation
///  (if <var>role</var> = $$$ENTTYPERELATION) or either of the two (if <var>role</var> = $$$ENTTYPEANY).</p>
Method GetFilteredEntitySpread(entUniId As %Integer, role As %Integer = {$$$ENTTYPEANY}, details As %List = "") As %Integer
{
}

///  <p>Returns the total number of sources in which the supplied stem appears that satisfy this
///  filter instances criteria, where its role is concept (if <var>pRole</var> = $$$ENTTYPECONCEPT), relation
///  (if <var>pRole</var> = $$$ENTTYPERELATION) or either of the two (if <var>pRole</var> = $$$ENTTYPEANY).</p>
Method GetFilteredStemSpread(pStemUniId As %Integer, pRole As %Integer = {$$$ENTTYPEANY}, details As %List = "") As %Integer
{
}

///  <p>Returns the total frequency of a CRC in the sources satisfying this filter instances criteria.</p>
Method GetFilteredCrcFrequency(crcUniId As %Integer) As %Integer
{
}

///  <p>Returns the total number of sources satisfying this filter instances criteria in which the
///  supplied CRC appears.</p>
Method GetFilteredCrcSpread(crcUniId As %Integer) As %Integer
{
}

///  <p>Returns the total frequency of a CC in the sources satisfying this filter instances criteria.</p>
Method GetFilteredCcFrequency(ccUniId As %Integer, type As %Integer = {$$$IKFCCUNI}) As %Integer
{
}

///  <p>Returns the total number of sources satisfying this filter instances criteria in which the
///  supplied CC appears.</p>
Method GetFilteredCcSpread(ccUniId As %Integer, type As %Integer = {$$$IKFCCUNI}) As %Integer
{
}

///  <p>Utility method to explicitly register the filtered frequency for an entity or CRC.
/// Note that for stems, we use -type in order not to mix with the positive values ($$$IKFENTOCC,
/// $$$IKFENTOCCC, $$$IKFENTOCCR) used for entities.</p>
Method SaveFilteredFrequency(type As %Integer, id As %Integer, freq As %Integer) As %Status [ Internal ]
{
}

///  <p>Utility method to explicitly register the filtered spread for an entity or CRC.
/// Note that for stems, we use -type in order not to mix with the positive values ($$$IKFENTOCC,
/// $$$IKFENTOCCC, $$$IKFENTOCCR) used for entities.</p>
Method SaveFilteredSpread(type As %Integer, id As %Integer, spread As %Integer) As %Status [ Internal ]
{
}

///  <p>Returns whether the <var>id</var> of the given <var>type</var> appears in any source satisfying this
///  filter instances criteria.</p>
Method IsFiltered(id As %Integer, type As %Integer = {$$$IKFSOURCE}) As %Boolean
{
}

///  <p>Returns the first Source ID satisfying this filter isntances criteria, starting from the
///  lowest (direction 1) or highest Source ID (direction -1). Returns "" when no source is filtered.</p>
Method GetFirstFilteredSource(direction As %Integer = 1) As %Integer
{
}

///  <p>Merges this filter instances internal bitstring representation with the supplied
///  global using AND logic.</p>
Method MergeBits(globName As %String, type As %Integer = {$$$IKFSOURCE}) As %Status [ Internal ]
{
}

/// pParams has empty positions for the pPage and pPageSize parameters
/// Only use for queries without ByRef or Output parameters (except pResult) !!
Method CheckResultCache(pQueryClass As %String, pQueryName As %String, pParams As %List, pPage As %Integer, pPageSize As %Integer, Output pIsCached, Output pResult) As %Status
{
}

/// Same as <method>CheckResultCache</method>, but for single-result queries
/// Only use for queries without ByRef or Output parameters !!
Method CheckResultCacheSingle(pQueryClass As %String, pQueryName As %String, pParams As %List, Output pIsCached, Output pResult) As %Status
{
}

Method StoreResultCache(pQueryClass As %String, pQueryName As %String, pParams As %List, pPage As %Integer, pPageSize As %Integer, ByRef pResult) As %Status
{
}

Method StoreResultCacheSingle(pQueryClass As %String, pQueryName As %String, pParams As %List, pResult) As %Status
{
}

Method GetNextSrcId(pSrcId As %Integer) As %Integer
{
}

/// <p>Converts the supplied string <var>pString</var> into a <class>%iKnow.Filters.Filter</class>
/// object. In addition to the normal <method>RestoreFilterFromString</method> functionality (which
/// expects <var>pString</var> to be the output of a <method>ToString</method> call on a filter
/// object), this method supports the following shorthands:</p>
/// <ul>
/// <li>A comma-separated list of source IDs (fe: "123,45,987" or "654"), resulting in a <class>%iKnow.Filters.SourceIdFilter</class></li>
/// <li>A range of source IDs expressed as [from]:[to] (fe: "1:500", which includes source IDs 1 and 500), resulting in a <class>%iKnow.Filters.SourceIdRangeFilter</class></li>
/// <li>A metadata filter condition [field name][operator][value] (fe: "Year>2000" or "Country!=Canada"), resulting in a <class>%iKnow.Filters.SimpleMetadataFilter</class></li>
/// </ul>
/// <p>Note: while covering a majority of common filter operations, the shorthand syntax is meant
/// to simplify exploration through the command-line and does not handle every possible combination
/// of parameters. Application code should therefore always use regular filter constructor methods
/// and the string representations produced by <method>ToString</method> (which this method also
/// accepts).</p>
ClassMethod FromString(pDomainId As %String, pString As %String, Output pFilter As %iKnow.Filters.Filter) As %Status
{
}

Method ToArray(Output pArray, pType As %Integer = {$$$IKFSOURCE}) As %Status [ Internal ]
{
}

Method ToBitstring(Output pArray, pType As %Integer = {$$$IKFSOURCE}) As %Status [ Internal ]
{
}

ClassMethod CreateFromBitstring(pDomainId As %Integer, ByRef pBitstring) As %iKnow.Filters.Filter
{
}

/// Utility method to return a label for this filter instance. Custom filter classes may
/// override this method to return a nicer label in client applications.
Method GetLabel() As %String
{
}

}
