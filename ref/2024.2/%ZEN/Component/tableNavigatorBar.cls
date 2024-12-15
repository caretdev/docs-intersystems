/// This composite component displays a navigation bar
/// (paging information and links to pages) for
/// a <class>%ZEN.Component.tablePane</class>.<br>
Class %ZEN.Component.tableNavigatorBar Extends component [ Deprecated, System = 3 ]
{

Parameter SYSMODULE = "table";

/// Localization domain
Parameter DOMAIN = "%ZEN";

/// id of <class>%ZEN.Component.tablePane</class> component this
/// navigator is associated with.<br>
/// Note: if this component is placed within a composite element, then the
/// tablePane must be within the same composite element.
Property tablePaneId As %ZEN.Datatype.id(COMPONENTTYPE = "tablePane");

/// This is the maximum number of page number "buttons" to display within
/// the navigator. The default is 5.<br/>
/// If set to less than 1, then 1 is used.
Property maxButtons As %ZEN.Datatype.integer [ InitialExpression = 5 ];

/// This is the maximum page size that a user can enter within
/// the navigator. The default is 1000.
Property maxPageSize As %ZEN.Datatype.integer [ InitialExpression = 1000 ];

/// This is the maximum rows that a user can enter within the navigator.
/// The default is 100000. Designer may override this, but end user's entry cannot be greater than this number.
Property navmaxRows As %ZEN.Datatype.integer [ InitialExpression = 100000 ];

/// This is the maximum rows that the associated table can load. Value can be changed from the "Max rows" field.
/// The default is 1000.
Property maxRows As %ZEN.Datatype.integer [ InitialExpression = 1000 ];

/// If true, show a filter input box as part of the navigator.
/// This filter box does not do anything on its own, you need to assign
/// an onfilterChange event to make this happen.
Property showFilter As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, let users control the page size of the table pane using
/// the navigator.
Property showPageSize As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, let users control the maximum rows of the table pane using
/// the navigator.
Property showMaxRows As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, it will invoke user function to save pageSize and maxRows and
/// designer should provide call backs for onPageSizeChange and onMaxRowsChange.
Property saveSizeMax As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Localized "Filter" message.
Property msgFilter As %ZEN.Datatype.caption;

/// Localized "page size" message.
Property msgPageSize As %ZEN.Datatype.caption;

/// Localized "max rows" message.
Property msgMaxRows As %ZEN.Datatype.caption;

/// Localized "Results" message.
Property msgFound As %ZEN.Datatype.caption;

/// Localized "Page" message.
Property msgPage As %ZEN.Datatype.caption;

/// Localized "of" found message.
Property msgOf As %ZEN.Datatype.caption;

/// Localized "first page" message.
Property msgFirstPage As %ZEN.Datatype.caption;

/// Localized "last page" message.
Property msgLastPage As %ZEN.Datatype.caption;

/// Localized "next page" message.
Property msgNextPage As %ZEN.Datatype.caption;

/// Localized "previous page" message.
Property msgPreviousPage As %ZEN.Datatype.caption;

/// onfilterChange event handler:
/// This event is fired when the user changes the value in the
/// filter box displayed by this navigator.
/// <var>value</var> is passed to this callback and is the
/// current value of the filter control.
Property onfilterChange As %ZEN.Datatype.eventHandler;

/// onPageSizeCghange event handler:
/// This event is fired when user changes the value in the "Page size" box
/// displayed by this navigator.
/// <var>value</var> is passed to this callback and is the
/// current value of the "Page size" control.
Property onPageSizeChange As %ZEN.Datatype.eventHandler;

/// onMaxRowsChange event handler:
/// This event is fired when user changes the value in the "Max rows" box
/// displayed by this navigator.
/// <var>value</var> is passed to this callback and is the
/// current value of the "Max rows" control.
Property onMaxRowsChange As %ZEN.Datatype.eventHandler;

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// Client-side method to render this control.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Render HTML for paging buttons.
ClientMethod renderButtons() [ Language = javascript ]
{
}

/// This method is called from the associated tablePane when
/// it changes state. The navigator responds by updating the
/// state of its controls.
ClientMethod updateState() [ Language = javascript ]
{
}

/// Event handler for filter box.
/// This method is called when the value of the filter box changes.
ClientMethod onfilterHandler(value) [ Language = javascript ]
{
}

/// Event handler for page size box.
/// This method is called when the value of the page size box changes.
ClientMethod onpageSizeHandler(ctrl) [ Language = javascript ]
{
}

/// Event handler for maxRows box.
/// This method is called when the value of the maxRows box changes.
ClientMethod onmaxRowsHandler(ctrl) [ Language = javascript ]
{
}

/// Move to the specified page in the associated tablePane.
/// where can be 'first','last','next','prev' or a page number.
ClientMethod gotoPage(where) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Connect to table pane.
ClientMethod connect() [ Language = javascript ]
{
}

}
