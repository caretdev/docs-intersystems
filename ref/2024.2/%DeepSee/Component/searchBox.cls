/// Specialized searchBox control for DeepSee searches.
/// This is designed for use within DeepSee components and not as a stand-alone control.
Class %DeepSee.Component.searchBox Extends %ZEN.Component.abstractComboBox [ System = 3 ]
{

Parameter JSINCLUDES = "zenCSLM.js,zenESVG.js,DeepSee.js";

Parameter NAMESPACE = "http://www.intersystems.com/deepsee";

Parameter ICONAPPLY = "deepsee/ds2_checkmark_16.png";

Parameter ICONCANCEL = "deepsee/ds2_circlex_22.png";

Parameter ICONSEARCH = "deepsee/ds2_magnify_18.png";

/// Localization domain
Parameter DOMAIN = "%DeepSee";

/// Localized "loading" message displayed by control.<br>
/// This message is temporarily displayed while a server-side query is running.
Property loadingMessage As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Loading...","%ZEN")} ];

/// Name of the DeepSee dataSource driving this dropdown.
Property dataSourceName As %ZEN.Datatype.string;

/// Logical name of the filter supplying the values.
Property filterName As %ZEN.Datatype.string;

/// Maximum number of items to show.
Property maxRows As %ZEN.Datatype.integer [ InitialExpression = 500 ];

/// List of current selected item values.
Property listOfValues As list Of %ZEN.Datatype.string(XMLPROJECTION = "none");

/// List of current selected item text values.
Property listOfText As list Of %ZEN.Datatype.string(XMLPROJECTION = "none");

/// List of item text values from prior searches.
Property priorText As list Of %ZEN.Datatype.string(XMLPROJECTION = "none");

/// List of item values from prior searches.
Property priorValues As list Of %ZEN.Datatype.string(XMLPROJECTION = "none");

/// List of filter specs from other filter controls.
/// This is used to restrict the set of members displayed by this searchBox.
Property relatedFilterSpecs As list Of %ZEN.Datatype.string(XMLPROJECTION = "none");

/// List of filter key values from other filter controls.
/// This is used to restrict the set of members displayed by this searchBox.
Property relatedFilterKeys As list Of %ZEN.Datatype.string(XMLPROJECTION = "none");

/// Selection mode: "","not" or "range"
Property selectMode As %ZEN.Datatype.string(XMLPROJECTION = "none");

/// If true, allow selection of multiple items.
Property multiSelect As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// If true, require at least one selected item.
Property valueRequired As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// The type of level that provides data for this control.
Property selectType As %ZEN.Datatype.string;

/// The calendar being used for a time level.
Property calendar As %ZEN.Datatype.string;

/// If defined, name of description property for a level.
Property descriptionProperty As %ZEN.Datatype.string(XMLPROJECTION = "none");

/// Display mode.
/// Controls what is displayed in the drop down area.
Property displayMode As %ZEN.Datatype.string(VALUELIST = "list,calendar,custom,measure", XMLPROJECTION = "none") [ InitialExpression = "list" ];

/// If true, use typed in text as a search key. This is set internally.
Property useSearch As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];

/// If true, add any pivot variables associated with the data source. This is ignored if the data source
/// is itself a pivot variable.
Property appendPivotVariables As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];

/// onshowdropdown event handler:
/// This event is fired just as the dropdown is about to be rendered.
Property onshowdropdown As %ZEN.Datatype.eventHandler;

/// List of calculated member values (used for calendar dropdown).
Property listOfCMbrValues As list Of %ZEN.Datatype.string(XMLPROJECTION = "none") [ Internal ];

/// List of calculated member captions (used for calendar dropdown).
Property listOfCMbrText As list Of %ZEN.Datatype.string(XMLPROJECTION = "none") [ Internal ];

/// Value in search box. This is set internally.
Property searchText As %ZEN.Datatype.string(XMLPROJECTION = "none") [ Internal ];

/// If true, then render in preview mode.
Property previewMode As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Apply icon.
Property iconApply As %ZEN.Datatype.string [ InitialExpression = {..#ICONAPPLY} ];

/// Cancel icon.
Property iconCancel As %ZEN.Datatype.string [ InitialExpression = {..#ICONCANCEL} ];

/// Search icon.
Property iconSearch As %ZEN.Datatype.string [ InitialExpression = {..#ICONSEARCH} ];

/// Optional date format to apply (using DeepSee date format).
Property dateFormat As %ZEN.Datatype.string [ InitialExpression = "mmm d, y" ];

/// Number indicating the first day of the week in the displayed calendar. 0 = Sunday, 6 = Saturday.
Property firstDayOfWeek As %ZEN.Datatype.integer;

/// Optional csv-list of values to use for dropdown
Property valueList As %ZEN.Datatype.csv;

/// Optional csv-list of captions to use for dropdown
Property displayList As %ZEN.Datatype.csv;

/// defines style sheet used by this component
XData Style
{
}

/// Draw contents of search box.
Method %DrawHTML()
{
}

/// Internal method.<br>
/// Create contents of drop down box using DHTML.
/// If <var>loadOnly</var> is defined and true, then
/// load the contents into the cached div, but do not show.
ClientMethod renderDropdown() [ Internal, Language = javascript ]
{
}

/// Internal method.<br>
/// Create contents of drop down box using DHTML.
/// <var>value</var> is used as search filter.
/// If <var>show</var> is false, then
/// load the contents into the cached div, but do not show.
ClientMethod loadDropdown(value, show) [ Internal, Language = javascript ]
{
}

/// Internal method.<br>
/// Server-side method to load contents of the drop down box
/// by executing query associated with this control.
/// If <var>cached</var>, load contents into cache div
Method LoadDropDownContents(searchParm As %String, cached As %Boolean = 0) [ Internal, ZenMethod ]
{
}

/// Server-side method to provide contents of the list box.
/// This is called from the client.
Method %DrawDropDownContents(searchParm As %String, Output pCount As %Integer) As %Status [ Internal ]
{
}

/// Draw contents of drop down in "custom" mode.
Method %DrawCustomDropDownContents(searchParm As %String, Output pCount As %Integer) As %Status [ Internal ]
{
}

/// Draw contents of drop down in "measure" mode.
Method %DrawMeasureDropDownContents(searchParm As %String, Output pCount As %Integer) As %Status [ Internal ]
{
}

/// Parse a measure expression:<br/>
/// E.g, %SEARCH.&[[Measures].[Units Sold]>1]
Method %ParseMeasureExpression(pDataSourceName As %String, pValue As %String, Output pOp As %Integer, Output pParm As %String) As %Status [ Internal ]
{
}

/// User click on NOT (exclude members) option within dropdown.
ClientMethod notClick(iscb) [ Language = javascript ]
{
}

/// Change of range combo.
ClientMethod rangeChange(which) [ Language = javascript ]
{
}

/// User click on Range option within dropdown.
ClientMethod rangeClick(iscb) [ Language = javascript ]
{
}

/// User click on all checkbox within measure dropdown.
/// <var>iscb</var> is true if this is a click from the checkbox.
ClientMethod msrAllClick(evt, iscb) [ Language = javascript ]
{
}

/// User change value within measure expression dropdown.
ClientMethod msrChange() [ Language = javascript ]
{
}

/// User key press in measure value control.
ClientMethod msrKeyPress(evt) [ Language = javascript ]
{
}

/// User click on item within dropdown.
/// <var>iscb</var> is true if this is a click from the checkbox.
ClientMethod itemClick(evt, idx, iscb) [ Language = javascript ]
{
}

ClientMethod removeItem(idx) [ Language = javascript ]
{
}

/// Unselect all options in the dropdown list.
/// If <var>skip</var> is provided, do not reset it.
ClientMethod resetItems(skip) [ Language = javascript ]
{
}

/// Test if any checkbox is selected in the dropdown list.
ClientMethod isAnyItemSelected() [ Language = javascript ]
{
}

/// Display new values in input control.
ClientMethod updateInput() [ Language = javascript ]
{
}

/// User click on ok icon.
ClientMethod applyChange() [ Language = javascript ]
{
}

/// User click on ok icon in calendar mode.
ClientMethod applyCalendar() [ Language = javascript ]
{
}

/// User click on ok icon in measure mode.
ClientMethod applyMeasure() [ Language = javascript ]
{
}

/// Cancel user changes.
ClientMethod cancelChanges(close) [ Language = javascript ]
{
}

/// Remember current values.
ClientMethod rememberValues() [ Language = javascript ]
{
}

/// Convert value to a display value.
ClientMethod findDisplayValue(value) [ Language = javascript ]
{
}

/// User selected a value in the custom drop down.
ClientMethod selectCustomItem(text, val) [ Language = javascript ]
{
}

/// Notification that this component is about to stop being modal.
ClientMethod onEndModalHandler(zindex) [ Language = javascript ]
{
}

/// User selected a new date in the calendar.
ClientMethod dateChange(ctrl, clear) [ Language = javascript ]
{
}

/// Convert a yyyy-mm-dd date to $h.
ClientMethod dateToHorolog(val) [ Language = javascript ]
{
}

/// Convert NOW-offset to a readable date value given the type. If an unsupported type is entered, the function
/// will return a localized 'NOW'+offset.<br>
/// Supported types: day, month, year
ClientMethod resolveNowOffset(offset, type) [ Language = javascript ]
{
}

/// Convert a $H to yyyy-mm-dd date.
ClientMethod dateFromHorolog(val, nowInfo) [ Language = javascript ]
{
}

/// User click on NOW checkbox.
ClientMethod cbNowClick(isCB, which) [ Language = javascript ]
{
}

/// User change on NOW offset input
ClientMethod offsetNowChange(which) [ Language = javascript ]
{
}

/// User selected a new date range in the calendar(s).
ClientMethod dateRangeChange(which) [ Language = javascript ]
{
}

/// Change the tooltip for the input control.
ClientMethod updateTooltip() [ Language = javascript ]
{
}

/// Intercept default behavior.
/// Keydown within input control.
ClientMethod inputKeyHandler(evt) [ Language = javascript ]
{
}

/// Lookup up the display value for the combobox given a logical value.<br/>
Method %GetDisplayValue(pValue As %String, pType As %String = "") As %String
{
}

/// Adjust the placement and size of the dropdown box based on
/// current screen geometry and scrolling conditions.
ClientMethod adjustDropdownPosition() [ Language = javascript ]
{
}

/// Keypress in search box control.
ClientMethod searchKeyPress(evt) [ Language = javascript ]
{
}

/// Perform search on drop down contents.
ClientMethod doSearch() [ Language = javascript ]
{
}

/// Explicitly set text value of this control.
ClientMethod setTextValue(text) [ Internal, Language = javascript ]
{
}

/// Adjust the width of the dropdown.
ClientMethod adjustDropDownWidth() [ Internal, Language = javascript ]
{
}

}
