/// <p>This is the base class for the sample iKnow Portal pages, which is available to be subclassed
/// by custom Zen pages exposing iKnow content and/or functionality. Some of the convenience services
/// provided by this page include:</p>
/// <ul>
/// 		<li>methods and widgets to select and manage a 'current' domain, source and term for the session, which can be used by queries and operations on this page.</li>
/// 		<li>a pane featuring a modalGroup widget for the user to specify a filter based on metadata criteria (showing all visible metadat fields for the current domain).</li>
/// 		<li>utility methods to page through results from iKnow queries.</li>
/// </ul>
Class %iKnow.UI.AbstractPortal Extends Styles [ Abstract, Deprecated, System = 4 ]
{

/// If true, auto-switch namespace to whatever $NAMESPACE is passed in.
Parameter AUTONS = 1;

Parameter APPLICATION;

Parameter DOMAIN = "%iKnow";

/// All pages in <package>%iKnow.UI</package> require at least the %Development resource
Parameter RESOURCE = "%Development";

Property domain As %ZEN.Datatype.integer(ZENURL = "domain");

Property term As %ZEN.Datatype.string(ZENURL = "string");

Property source As %ZEN.Datatype.integer(ZENURL = "source");

Property filter As %ZEN.Datatype.string(ZENURL = "filter");

Property filtermode As %ZEN.Datatype.integer(ZENURL = "filtermode") [ InitialExpression = {$$$FILTERALLANDSORT} ];

Property skiplists As %ZEN.Datatype.string(ZENURL = "skiplists");

Property languageMode As %ZEN.Datatype.string(VALUELIST = ",en,ja", ZENURL = "langmode") [ InitialExpression = "en" ];

/// Simple pane containing the iKnow logo
XData logoPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Initializes some of the panes and session variables used by this page, fetching domain,
/// source and term variables from the request (if present).
/// If certain activities need to be performed in a subclass, override
/// <method>OnAfterCreatePage</method> rather than this method.
Method %OnAfterCreatePage() As %Status
{
}

Method OnAfterCreatePage() As %Status
{
}

/// Utility method to avoid executing queries when no domain is specified (which could lead to
/// noisy errors in the UI).
Method ExecuteQuery(pRS As %Library.ResultSet, ByRef tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

/// Same as ExecuteQuery, but will use the system domain (ID=0) if ..source<0
Method ExecuteQuerySys(pRS As %Library.ResultSet, ByRef tSC As %Status, pInfo As %ZEN.Auxiliary.QueryInfo) As %Boolean
{
}

/// Utility method to end the session from the client.
Method EndSession() As %Status [ Final, ZenMethod ]
{
}

/// Simple pane containing a dropdown field with all domains in the current instance. Selecting a
/// domain will reload the page in the namespace of the selected domain, with the domain=# as a
/// URL parameter to be picked up by <method>%OnAfterCreatePage</method>.
/// <p>Selecting a domain from this list will update the "current domain" selection and trigger
/// <method>updateDomainClient</method>.</p>
XData optDomainPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Returns the currently selected domain ID.
/// <p>NOTE: this method is deprecated. Please access <property>domain</property> directly instead.</p>
Method GetDomain() As %Integer [ Deprecated, Final, Internal, ZenMethod ]
{
}

/// ZenMethod to take appropriate cleanup action if the domain is updated. Will in turn call
/// <method>OnUpdateDomain</method>, which can be overridden by subclasses.
Method UpdateDomain(domainId As %Integer) As %Status [ Final, ZenMethod ]
{
}

/// This method can be overridden at the subclass level to take any additional server-side
/// actions when the domain is changed.
Method OnUpdateDomain(domainId As %Integer) As %Status
{
}

/// <p>Auto-complete field linked to the GetSimilar query in <class>%iKnow.Queries.EntityQAPI</class>,
/// which will provide all entities similar to the entered string in the current domain as
/// auto-complete suggestions.</p>
/// <p>Selecting a value from this list of suggestions, pressing enter or clicking the start button
/// displayed next to the intput field will update the "current term" and trigger
/// <method>updateTermClient</method>.</p>
XData txtTermPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

Method InputTerm(pBase As %String) As %String [ ZenMethod ]
{
}

ClientMethod inputTermClient(text) [ Language = javascript ]
{
}

ClientMethod inputTermDeferred(text) [ Language = javascript ]
{
}

/// Returns the currently selected term.
/// <p>NOTE: this method is deprecated. Please access <property>term</property> directly instead.</p>
Method GetTerm() As %String [ Deprecated, Final, Internal, ZenMethod ]
{
}

/// Client-side method which will explicitly select a certain term, updating the txtTerm input field in
/// <xdata>txtTermPane</xdata> and then call <method>updateTermClient</method>.
ClientMethod useTermClient(term) [ Final, Language = javascript ]
{
}

/// Client-side method to be called when the user selects a new term, which will call
/// <method>UpdateTerm</method> and <method>onUpdateTermClient</method>.
ClientMethod updateTermClient(term) [ Final, Language = javascript ]
{
}

/// Client-side method subclasses can override to take additional actions when the user selects
/// a new term.
ClientMethod onUpdateTermClient(term) [ Language = javascript ]
{
}

/// Key capture method to trigger <method>updateTermClient</method> when the enter key is pressed.
ClientMethod onTermKeyUp() [ Language = javascript ]
{
}

/// ZenMethod taking appropriate server-side cleanup and update actions when a new term is selected.
/// Calls <method>OnUpdateTerm</method> afterwards.
Method UpdateTerm(term As %String) As %Status [ Final, ZenMethod ]
{
}

/// Server-side methods subclasses can override to take additional actions when the user selects
/// a new term.
Method OnUpdateTerm(term As %String) As %Status
{
}

/// Utility method to return the "current page" stored in the session for the supplied component
/// name, or 1 if no page was registered so far.
Method GetPage(componentName As %String) As %Integer [ Final ]
{
}

/// Client-side method to trigger a components query to be re-executed for the next page of results.
ClientMethod nextPageClient(componentName) As %Status [ Final, Language = javascript ]
{
}

/// Updates the current page for the supplied component to the next integer value.
Method NextPage(componentName As %String) As %Integer [ Final, ZenMethod ]
{
}

/// Client-side method to trigger a components query to be re-executed for the previous page of results.
ClientMethod previousPageClient(componentName) As %Status [ Final, Language = javascript ]
{
}

/// Updates the current page for the supplied component to the previous integer value (minimum value is 1).
Method PreviousPage(componentName As %String) As %Integer [ Final, ZenMethod ]
{
}

/// This method should to be implemented by subclasses using the paging functions, giving all paged
/// components a meaningful initial page value (usually 1).
Method InitPages() As %Status
{
}

/// Resets all page information in the session.
Method ResetPages() As %Integer [ ZenMethod ]
{
}

/// <p>Simple pane containing a dropdown list of the 100 most recent sources (trough the GetByDomain
/// query in <method>%iKnow.Queries.SoureQAPI</method>) and buttons to page through more results.</p>
/// <p>Selecting a source from this list will update the "current source" selection and triggger
/// <method>updateSourceClient</method>.</p>
XData optSourcePane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Returns the currently selected source ID.
/// <p>NOTE: this method is deprecated. Please access <property>source</property> directly instead.</p>
Method GetSource() As %Integer [ Deprecated, Final, ZenMethod ]
{
}

Method GetSourceDomainId() As %Integer [ Private ]
{
}

/// Returns the currently selected source as a <class>%iKnow.Objects.Source</class> or
/// <class>%iKnow.Objects.VirtualSource</class> object.
Method GetSourceObject() As %iKnow.Objects.Source [ Final ]
{
}

/// Server-side method updating the source pointers and taking any other appropriate actions. Invokes
/// <method>OnUpdateSource</method> afterwards.
Method UpdateSource(sourceId As %Integer) As %Status [ Final, ZenMethod ]
{
}

/// This method is called whenever the language mode changes, as part of <method>UpdateSource</method>
/// or <method>%OnAfterCreatePage</method>
Method OnChangeLanguageMode() As %Status
{
}

/// Server-side method subclasses can override to take additional actions upon a change in the
/// current source.
Method OnUpdateSource(sourceId As %Integer) As %Status
{
}

/// Client-side method updating the source pointers and taking any other appropriate actions. In turn
/// invokes <method>Updatesource</method> and <method>onUpdateSourceClient</method>.
ClientMethod updateSourceClient(source) [ Final, Language = javascript ]
{
}

/// Client-side method subclasses can override to take additional actions upon a change in the
/// current source.
ClientMethod onUpdateSourceClient(source) [ Language = javascript ]
{
}

/// This pane contains a modalGroup popup window displaying the current filter and form fields
/// to add additional filter criteria. Clicking the filter button will invoke <method>updateFilterClient</method>.
XData filterPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Simple pane reflecting the number of sources satisfying the current filter.
XData filterCountPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod changeFilterTypeClient() [ Language = javascript ]
{
}

Method ChangeFilterType(pFilterType As %String) As %Status [ ZenMethod ]
{
}

ClientMethod changeFilterMDFieldClient() [ Language = javascript ]
{
}

ClientMethod changeFilterMDOpClient() [ Language = javascript ]
{
}

ClientMethod changeFilterDSDimFieldClient() [ Language = javascript ]
{
}

Method ChangeFilterDSDimField(pDimSpec As %String) As %Status [ ZenMethod ]
{
}

ClientMethod refreshMDFilterFields() [ Language = javascript ]
{
}

Method ChangeFilterMDField(pFieldId As %Integer) As %Status [ ZenMethod ]
{
}

Method ChangeFilterMDOp(pOperator As %Integer) As %Status [ ZenMethod ]
{
}

ClientMethod clearFilterClient() [ Language = javascript ]
{
}

Method ClearFilter() As %Status [ ZenMethod ]
{
}

ClientMethod addFilterClient() [ Language = javascript ]
{
}

Method AddFilter(pGroup As %String = 0) As %String [ ZenMethod ]
{
}

/// This method draws the filter in the filter popup screen
Method DrawFilter(pSeed As %String) As %Status
{
}

Method DrawFilterObject(pFilter As %iKnow.Filters.Filter, pDepth As %String, pMode As %String = "VIEW") As %Status [ Private ]
{
}

ClientMethod toggleGroupLogicClient(depth) [ Language = javascript ]
{
}

Method ToggleGroupLogic(pGroup As %String) As %Status [ ZenMethod ]
{
}

ClientMethod setCurrentGroupClient(depth) [ Language = javascript ]
{
}

ClientMethod removeFilterClient(depth) [ Language = javascript ]
{
}

Method RemoveFilterAt(pGroup) As %Status [ ZenMethod ]
{
}

/// Returns the current filter string, if any
/// <p>NOTE: this method is deprecated. Please access <property>filter</property> directly instead.</p>
Method GetCurrentFilterString() As %String [ Deprecated ]
{
}

/// Returns the current filter object, if any
Method GetCurrentFilterObject() As %iKnow.Filters.Filter
{
}

/// Returns the current filter mode, if any
Method GetCurrentFilterMode() As %Integer
{
}

/// Display the filter popup window.
ClientMethod showFilterForm() [ Final, Language = javascript ]
{
}

/// Client-side method called when the user commits his filter criteria in the filter popup window.
/// This will call <method>OnUpdateFilter</method> on the server, close the popup and call
/// <method>onUpdateFilterClient</method> afterwards.
ClientMethod updateFilterClient() [ Final, Language = javascript ]
{
}

Method OnUpdateFilter() As %Status [ ZenMethod ]
{
}

/// Client-side method subclasses can override to execute additional logic when the user has changed
/// filter criteria.
ClientMethod onUpdateFilterClient() [ Language = javascript ]
{
}

/// Client-side method called when the "drill" link next to a filter (in VIEW mode) is clicked
ClientMethod drillFilterClient(filterString) [ Language = javascript ]
{
}

/// Simple informative pane that can be included to display additional help/details about this page.
/// The displayed text is provided through <method>GetInfoPaneText</method>.
XData infoPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Builds <xdata>infoPane</xdata>.
Method BuildInfoPane() As %Status [ Final ]
{
}

/// Returns the text to be displayed in <xdata>infoPane</xdata>. To be overridden by the subclass using it.
Method GetInfoPaneText() As %String
{
}

ClientMethod hideInfoPaneClient(hide) [ Final, Internal, Language = javascript ]
{
}

Method HideInfoPane(hide As %Boolean = 1) As %Status [ Final, Internal, ZenMethod ]
{
}

XData skiplistPane [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

ClientMethod showSkiplists() [ Language = javascript ]
{
}

ClientMethod setSkiplistsClient() [ Language = javascript ]
{
}

Method SetSkiplists(skipListIds As %String) [ ZenMethod ]
{
}

}
