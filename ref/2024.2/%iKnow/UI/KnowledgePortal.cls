Class %iKnow.UI.KnowledgePortal Extends Styles [ Deprecated, System = 4 ]
{

Parameter AUTONS = 1;

Parameter DOMAIN = "%iKnow";

Parameter RESOURCE = "%Development";

Parameter JSINCLUDES = "jquery-3.5.1.min.js,bootstrap-4-4-1/dist/js/bootstrap.bundle.min.js";

Parameter CSSINCLUDES = "bootstrap-4-4-1/dist/css/bootstrap.min.css";

Property domain As %ZEN.Datatype.integer(ZENURL = "domain");

Property term As %ZEN.Datatype.string(ZENURL = "term");

Property source As %ZEN.Datatype.integer(ZENURL = "source");

Property summaryPct As %ZEN.Datatype.integer [ InitialExpression = 100 ];

Property filter As %ZEN.Datatype.string(ZENURL = "filter");

Property filtermode As %ZEN.Datatype.integer(ZENURL = "filtermode") [ InitialExpression = {$$$FILTERALLANDSORT} ];

Property skiplists As %ZEN.Datatype.string(ZENURL = "skiplists");

Property languageMode As %ZEN.Datatype.string(VALUELIST = ",en,ja", ZENURL = "langmode") [ InitialExpression = "en" ];

Property pageSize As %ZEN.Datatype.integer(ZENURL = "pagesize") [ InitialExpression = 10 ];

Property drill As %ZEN.Datatype.string;

Property includeOtherNamespaces As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Property enableAutocomplete As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

Property useStemming As %ZEN.Datatype.boolean;

Property useRepresentationForm As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Interpret path data as Entity Vectors
Property useEntityVectors As %ZEN.Datatype.boolean(ZENURL = "useEntityVectors") [ Internal ];

XData Style
{
}

XData Contents [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

Method InputTerm(pBase As %String) As %String [ ZenMethod ]
{
}

ClientMethod inputTermClient(text) [ Language = javascript ]
{
}

ClientMethod onTermKeyUp() [ Language = javascript ]
{
}

ClientMethod explore(string, fromField) [ Language = javascript ]
{
}

ClientMethod refreshAll() [ Language = javascript ]
{
}

Method DrawTopEntities(pSeed As %String) As %Status
{
}

Method DrawSimEntities(pSeed As %String) As %Status
{
}

Method DrawRelEntities(pSeed As %String) As %Status
{
}

Method DrawEntities(ByRef pEntities, pID As %String, ByRef pPanes) As %Status [ Private ]
{
}

Method GetSkiplists() As %RawString [ Private ]
{
}

Method DrawPaths(pSeed As %String) As %Status
{
}

ClientMethod drillSources(spec) [ Language = javascript ]
{
}

ClientMethod openSource(srcID) [ Language = javascript ]
{
}

ClientMethod summarize(pct) [ Language = javascript ]
{
}

Method DrawSourceListModal(pSeed As %String) As %Status
{
}

Method DrawSourceModal(pSeed As %String) As %Status
{
}

ClientMethod toggleHighlighting(type) [ Language = javascript ]
{
}

ClientMethod fixHighlighting(type) [ Language = javascript ]
{
}

Method DrawPagingFooter(pID, pCount As %Integer = 0, pLegend As %Boolean = 0) [ Private ]
{
}

Method ResetPages() As %Status [ ZenMethod ]
{
}

Method NextPage(pID As %String, pPage As %Integer) As %Status [ ZenMethod ]
{
}

Method TogglePane(pID As %String, pPane As %Integer) As %Status [ ZenMethod ]
{
}

Method DrawButtons(pSeed As %String) As %Status
{
}

Method DrawFilterPane(pSeed As %String) As %Status
{
}

/// Subclasses can override this method to supply custom filter types to be displayed
/// in the filter type dropdown in the following format:
/// pCustomFilterTypes(typeName) = typeLabel
ClassMethod GetCustomFilterTypes(Output pCustomFilterTypes) As %Status
{
}

/// Subclasses can override this method to draw the input fields specific to a custom
/// filter type added through <method>GetCustomFilterTypes</method>.
/// <var>pSettings</var> is the string capturing user input, as assembled by <method>getCustomFilterSettings</method>.
Method DrawCustomFilterInputs(pFilterType As %String, pSettings As %String) As %Status
{
}

/// Subclasses can override this method to pick up the values of the input fields
/// specific to a custom filter type as draw in <method>DrawCustomFilterIntputs</method>
/// and concatenate them into a settings string.
ClientMethod getCustomFilterSettings(filterType) [ Language = javascript ]
{
}

/// Subclasses can override this method to instantiate an actual <class>%iKnow.Filters.Filter</class>
/// object based on the supplied settings.
/// <var>pSettings</var> is the string capturing user input, as assembled by <method>getCustomFilterSettings</method>.
Method CreateCustomFilter(pFilterType As %String, pSettings As %String) As %iKnow.Filters.Filter
{
}

ClientMethod resetFilter() [ Language = javascript ]
{
}

ClientMethod submitFilter() [ Language = javascript ]
{
}

ClientMethod setFilterLocation(location) [ Language = javascript ]
{
}

Method ErrorHandler(pSC As %Status) As %Status
{
}

Method ToggleFilter(pLocation As %String, pLogic As %String = "", pNegation As %Boolean = -1) As %Status [ ZenMethod ]
{
}

Method RemoveFilter(pLocation As %String = "") As %Status [ ZenMethod ]
{
}

Method AddFilter(pString As %String, pLocation As %String = "") As %Status [ ZenMethod ]
{
}

Method GetSubFilter(pFilter As %iKnow.Filters.GroupFilter, pLocation As %String) As %iKnow.Filters.Filter [ Internal, Private ]
{
}

ClientMethod updateFilter(seed) [ Language = javascript ]
{
}

ClientMethod applyPane(pane) [ Language = javascript ]
{
}

Method GetFilter() As %iKnow.Filters.Filter
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod closeInfo() [ Language = javascript ]
{
}

Method ShowInfo() As %Boolean [ ZenMethod ]
{
}

Method DisableInfo() [ Internal, ZenMethod ]
{
}

Method DrawSkiplistsPane(pSeed As %String) As %Status
{
}

ClientMethod toggleSkiplist(id) [ Language = javascript ]
{
}

Method DrawSettingsPane(pSeed As %String) As %Status
{
}

Method DrawLegend(pSeed As %String) As %Status
{
}

}
