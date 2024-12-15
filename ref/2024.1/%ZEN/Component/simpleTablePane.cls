///  This component draws an HTML table based on the contents
///  of a query. This can either be a pre-built class query or
///  an SQL statement.<br>
///  The is a base class that provides the underlying mechanisms
///  used by more complex table panes.
Class %ZEN.Component.simpleTablePane Extends (component, querySource) [ Abstract, Deprecated, Inheritance = right, System = 3 ]
{

Parameter SYSMODULE = "table";

///  If true and multiSelect is false, then clicking on the selected row un-selects it.
Property enableToggleSelect As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

///  If true, then row numbers are displayed.
Property showRowNumbers As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

///  If true, then a column indicating the selected row is displayed.
Property showRowSelector As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

///  If true, then display rows using alternating colors.
Property showZebra As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

///  If true, then the user can select a row within the table.
Property rowSelect As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

///  If true, then the user can select multiple rows within the table.
///  An extra column, containing checkboxes, will be displayed to
///  indicate which rows are selected.
Property multiSelect As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

///  If true (the default) then the query associated with this tablePane
///  will be executed when the table is first displayed. Otherwise the
///  tablePane will execute the query on demand.
Property initialExecute As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

///  Index (row number) of current selected row (0 based).
Property selectedIndex As %ZEN.Datatype.integer [ InitialExpression = -1 ];

///  For multi-select tables, this is the set of which rows are
///  selected.<br>
///  The value of this property is a csv-list of values
///  corresponding to which row is selected.<br>
///  For selected items the list contains the current user-defined logical value
///  for the row (as specified by the <property>valueColumn</property>).<br>
///  For unselected items the list contains an empty string.
Property selectedRows As %ZEN.Datatype.string(XMLPROJECTION = "none");

///  Logical value of current selected row within the table.
///  Do not access this directly; use getProperty('value') instead.
Property value As %ZEN.Datatype.string(ZENEXPRESSION = 1);

///  onselectrow event handler:
///  This event is fired when a new row is selected.
///  This event is passed a variable, <var>which</var>, which indicates
///  how the row was selected: "", "click" or "keypress".
Property onselectrow As %ZEN.Datatype.eventHandler;

///  onunselectrow event handler:
///  This event is fired when the currently selected row is unselected.
Property onunselectrow As %ZEN.Datatype.eventHandler;

///  onmultiselect event handler:
///  This event is fired the user changes the set of multiply-selected rows.
Property onmultiselect As %ZEN.Datatype.eventHandler;

///  ondblclick event handler:
///  This event is fired when a row is double-clicked.
Property ondblclick As %ZEN.Datatype.eventHandler;

///  Internal property used to track focus.
Property hasFocus As %ZEN.Datatype.boolean(XMLPROJECTION = "none", ZENSETTING = 0) [ Internal ];

///  Class to be appended to the class name of the row when the user moves
///  his/her mouse over the row.
Property onmouseoverClass As %ZEN.Datatype.cssClass;

///  defines style sheet used by this component
XData Style
{
}

///  Draw innerHTML for this component (without enclosing div).
Method %DrawHTML()
{
}

///  Draw the table.
Method %DrawTable(pRS As %ResultSet) As %Status
{
}

///  For multi-select table, test if a given row (0-based)
///  is selected.
ClientMethod isRowSelected(row) [ Language = javascript ]
{
}

///  For multi-select tables, select or unselect the given row (0-based)
///  depending on the value of <var>flag</var>.
///  Updates the corresponding checkbox.
ClientMethod selectMultiRow(row, flag) [ Language = javascript ]
{
}

///  For multi-select tables, mark all (visible) rows as
///  selected or unselected depending on the value of <var>flag</var>.
ClientMethod selectAllMultiRows(flag) [ Language = javascript ]
{
}

///  Internal method.
///  Update the selectedRows checkboxes to match the value
///  in the selectedRows property.
ClientMethod updateRowSelectBoxes() [ Internal, Language = javascript ]
{
}

///  Click handler for header checkbox for multi-select table.
ClientMethod cbHeaderClick(cb) [ Internal, Language = javascript ]
{
}

///  Click handler for multi-select checkbox.
ClientMethod cbClick(cb, row) [ Internal, Language = javascript ]
{
}

///  Handler for clicks within a row.
ClientMethod clickHandler(row) [ Internal, Language = javascript ]
{
}

///  Handler for double-clicks within a row.
ClientMethod dblclickHandler() [ Internal, Language = javascript ]
{
}

///  Client-side method to select the given row (0-based) in the table.
///  If <var>scroll</var> is true, scroll the new row into view.
///  If <var>which</var> is present, it is passed along to the user event notification.
ClientMethod selectRow(row, scroll, which) [ Language = javascript ]
{
}

///  Internal method.<br>
///  Applications should use the <method>executeQuery</method> of the
///  <class>tablePane</class> class.<br>
///  Call to the server and update the contents of the tablePane.
///  This is a wrapper around the <method>refreshContents</method> method.
ClientMethod refreshTable(sync) [ Internal, Language = javascript ]
{
}

///  Called after refreshContents-- make sure row is selected.
ClientMethod onRefreshContents() [ Internal, Language = javascript ]
{
}

///  This is called whenever we are updated from the server.
ClientMethod onupdateHandler() [ Internal, Language = javascript ]
{
}

///  Set the value of a named property.<br>
///  Assume that subclasses that simply wrap HTML controls
///  have named the control 'control' or else have overridden
///  this method.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

///  Client-side method to input focus to this control.
///  Implemented by subclasses.
ClientMethod focus() [ Language = javascript ]
{
}

///  Client-side method to return the logical value associated with this table.
ClientMethod getValue() As %String [ Final, Language = javascript ]
{
}

///  Handler for onmouseover and onmouseout events for a given row.
///  The handler only takes action if <property>onmouseoverClass</property>
///  is specified, and adds the value of this property to the current value for the
///  row's class.
ClientMethod onmouseHandler(row, over) [ Language = javascript ]
{
}

}
