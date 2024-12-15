/// This is a listBox that gets its list from an SQL query.<br/>
/// Refer to the <class>%ZEN.Component.querySource</class> class for
/// a description of how to provide data for this component.<br/>
/// The dataListBox control will support both drag and drop. If
/// <property>dragEnabled</property> is true, then the user can drag values
/// from the list box and drop them on other drop-enabled components.<br/>
/// If <property>dropEnabled</property> is true, then values can be dropped
/// onto the list. The value of the list box will be set to the value of the
/// dropped data.
Class %ZEN.Component.dataListBox Extends (abstractListBox, querySource) [ Deprecated, Inheritance = right, System = 3 ]
{

/// If true (the default), then display multiple columns in the data
/// list if the result set contains more than 2 columns.
Property multiColumn As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// If there are multiple data columns displayed within the  data list
/// this is the column number (1-based) of the column that will provide the display
/// value for this control.<br>
/// If this value is greater than the number of columns in the query
/// then the second column will be used.
Property choiceColumn As %ZEN.Datatype.integer(MINVAL = 1, ZENSETTING = 0) [ InitialExpression = 2 ];

/// If there are multiple data columns displayed in the data list
/// this is the column number (1-based) of the column that will provide the logical
/// value for this control.<br>
/// If this value is greater than the number of columns in the query
/// then the first column will be used.
Property valueColumn As %ZEN.Datatype.integer(MINVAL = 1, ZENSETTING = 0) [ InitialExpression = 1 ];

/// If there are multiple data columns displayed in the data list,
/// this optional property defines a comma-delimited list of the column numbers
/// of the column that should be displayed.
Property displayColumns As %ZEN.Datatype.csv(ZENSETTING = 0);

/// Indicates how display values should be rendered:<br>
/// If <property>contentType</property> is "text" (the default) then the display values
/// will be HTML-escaped before being rendered.<br>
/// If <property>contentType</property> is "html" then the display values
/// will not be HTML-escaped before being rendered.
/// Use this when your display values contain HTML markup that you do not want escaped.<br>
Property contentType As %ZEN.Datatype.string(VALUELIST = ",text,html") [ InitialExpression = "text" ];

/// (optional) SQL statement that, given a value, finds a display
/// value. If present, this is used
/// to find the initial display value for cases where the
/// logical and display values are different.
Property sqlLookup As %ZEN.Datatype.sql;

/// Number of options within the list.<br>
/// This is calculated when the query for this component is run.
Property itemCount As %ZEN.Datatype.integer(XMLPROJECTION = "none");

/// User-defined list of query parameters.<br>
/// These values are passed on
/// to the user callback function that provides the query for this component
/// in order to provide values for any run-time query parameters.
Property parameters As list Of %ZEN.Auxiliary.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

/// (optional) Name of Server-side callback method that is called for each
/// item in the list before it is displayed. This callback is passed the logical
/// and display value for the current item. It returns the HTML that is to be
/// displayed within the cell for the given item.<br>
/// This must be the name of a server-only method in the page
/// class that contains this dataListBox.
/// Note: If using multi-column output, it is being called individually for each column
Property OnDrawItem As %ZEN.Datatype.delegator(FORMALSPEC = "pRS:%SQL.StatementResult,pValue:%String,pText:%String", RETURNTYPE = "%String");

/// defines style sheet used by this component
XData Style
{
}

/// This method fills in reasonable default values for
/// this control. Used by tools (such as Control Tester) to
/// dynamically create controls.
Method %SetDefaultValues()
{
}

/// Lookup up the display value for the combobox given
/// a logical value.<br>
/// This is called when the control is initially drawn.
/// A logical value of "", must have a display value of "".
Method %GetDisplayValue(pValue As %String) As %String
{
}

/// Server-side method to provide contents of the list box.
Method %DrawListContents()
{
}

/// Internal method.<br>
/// Invoke the OnDrawItem callback, if present.
Method %DrawItem(pRS As %SQL.StatementResult, pValue As %String, pText As %String) As %Text [ Internal ]
{
}

/// Execute the server-side associated with this dataListBox.<br>
/// The query is executed asynchronously, so results may not be available
/// immediately.
ClientMethod executeQuery() [ Language = javascript ]
{
}

/// Return number of items in list.<br>
ClientMethod getOptionCount() [ Language = javascript ]
{
}

/// Return the logical value of the given item (0-based) in the list.<br>
ClientMethod getOptionValue(idx) [ Language = javascript ]
{
}

/// Return the display text for the given item (0-based) in the list.<br>
ClientMethod getOptionText(idx) [ Language = javascript ]
{
}

ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
