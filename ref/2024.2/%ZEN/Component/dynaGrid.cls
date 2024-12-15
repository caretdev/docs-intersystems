/// An editable grid control.<br/>
/// The data and size of the grid is provided by the
/// <class>%ZEN.Auxiliary.dataSet</class> associated with
/// the grid.<br/>
/// The first dimension of the dataSet supplies rows, the
/// second supplies columns. The third dimension, if present,
/// supplies "pages" for the grid. (One page is visible at a time).
Class %ZEN.Component.dynaGrid Extends (control, dataView) [ Deprecated, System = 3 ]
{

/// Do not include in "form" module.
Parameter SYSMODULE;

/// Subclasses can set this to change default css class used for grids.
Parameter DEFAULTGRIDCLASS As STRING = "dynaGrid";

/// Default value for the <property>gridLabel</property> property.
Parameter DEFAULTGRIDLABEL As STRING;

/// Default value for the <property>rowLabelWidth</property> property in pixels.
Parameter DEFAULTROWLABELWIDTH As INTEGER = 100;

/// Default value for the <property>columnWidth</property> property in pixels.
Parameter DEFAULTCOLUMNWIDTH As INTEGER = 100;

/// Default value for the <property>showArrows</property> property.
Parameter DEFAULTSHOWARROWS As BOOL = 0;

/// Optional CSS class for the table containing the grid.
Property gridClass As %ZEN.Datatype.cssClass [ InitialExpression = {..#DEFAULTGRIDCLASS} ];

/// Data displayed by this grid control.
Property dataSet As %ZEN.Auxiliary.dataSet(ZENSETTING = 0);

/// Additional specification for columns within the grid.
Property columns As list Of %ZEN.Auxiliary.gridColumn(XMLPROJECTION = "ELEMENT", XMLREF = 1, XMLTYPECONSTRAINT = "CHOICE", ZENSETTING = 0);

/// Additional specification for rows within the grid.
Property rows As list Of %ZEN.Auxiliary.gridRow(XMLPROJECTION = "ELEMENT", XMLREF = 1, XMLTYPECONSTRAINT = "CHOICE", ZENSETTING = 0);

/// Additional specification for cells within the grid.
/// This allows cell-by-cell overrides of formats and styles.
Property cells As list Of %ZEN.Auxiliary.gridCell(XMLPROJECTION = "ELEMENT", XMLREF = 1, XMLTYPECONSTRAINT = "CHOICE", ZENSETTING = 0);

/// Caption to display in upper, left label cell.
Property gridLabel As %ZEN.Datatype.caption [ InitialExpression = {..#DEFAULTGRIDLABEL} ];

/// If true, the user can double-click on row and column labels and edit their value.
Property editLabels As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Specifies whether column labels should be displayed.
Property showColumnLabels As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Width used for row labels. This may be specified as either a fixed width in pixels
/// or as a percentage of the total space allocated for the component.
Property rowLabelWidth As %ZEN.Datatype.length [ InitialExpression = {..#DEFAULTROWLABELWIDTH} ];

/// This is the default width (in pixels) used for columns that do not supply a width.
Property columnWidth As %ZEN.Datatype.length [ InitialExpression = {..#DEFAULTCOLUMNWIDTH} ];

/// Specifies whether row labels should be displayed.
Property showRowLabels As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Specifies whether the add rows and columns arrows should be displayed.
Property showArrows As %ZEN.Datatype.boolean [ InitialExpression = {..#DEFAULTSHOWARROWS} ];

/// onarrowclick event handler:
/// If defined, this event is fired when
/// the user clicks on a row or column arrow.
/// The variable which will indicate which arrow is clicked.
Property onarrowclick As %ZEN.Datatype.eventHandler;

/// This is the row number (1-based) of the current selected cell.
Property currRow As %ZEN.Datatype.integer [ InitialExpression = 1 ];

/// This is the column number (1-based) of the current selected cell.
Property currColumn As %ZEN.Datatype.integer [ InitialExpression = 1 ];

/// This specifies the current selected range of cells as a
/// comma-separated list of integers. The list is of the form:<br/>
/// startRow,startCol,endRow,endCol<br/>
/// All cells numbers are 1-based.<br/>
/// If the range is equal to "", then no cells are selected.<br/>
/// This is only used if <property>multiSelect</property> is true.
Property selectedRange As %ZEN.Datatype.csv;

/// If true, users can select a range of cells in the grid.
Property multiSelect As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// In case of 3-dimensional dataSet, this is the current
/// "page" (third dimension) being displayed. (1-based).
Property currPage As %ZEN.Datatype.integer [ InitialExpression = 1 ];

/// If true, use the zenScrollIntoView function to try and make the
/// current cell visible.<br>
Property scrollIntoView As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// If true (the default), then the contents of cells within the grid will not
/// word wrap (by setting the nowrap attribute for the cell's td element).
Property nowrap As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// oneditcell event handler:
/// If defined, this event is fired when
/// a cell is about to be edited.
/// If this event handler returns a value, then it is used
/// as DHTML to render the cell editor.
Property oneditcell As %ZEN.Datatype.eventHandler;

/// ondrawcell event handler:
/// If defined, this event is fired when
/// a cell is about to be drawn.
/// If this event handler returns a value, then it is used
/// as DHTML to render the cell contents.
Property ondrawcell As %ZEN.Datatype.eventHandler;

/// onchangecell event handler:
/// If defined, this event is fired when
/// the user changes the value of a cell.
Property onchangecell As %ZEN.Datatype.eventHandler;

/// onclickrow event handler:
/// If defined, this event is fired when
/// the user clicks on a row label.
Property onclickrow As %ZEN.Datatype.eventHandler;

/// onclickcolumn event handler:
/// If defined, this event is fired when
/// the user clicks on a column label.
Property onclickcolumn As %ZEN.Datatype.eventHandler;

/// onclicklabel event handler:
/// If defined, this event is fired when
/// the user clicks on grid label cell in the upper left.
Property onclicklabel As %ZEN.Datatype.eventHandler;

/// onselectcell event handler:
/// If defined, this event is fired when the user navigates to a new cell.<br/>
/// The current cell row and column number is updated before this call is made.<br/>
/// The event handler is passed 2 variables, <var>row</var> and <var>col</var>, which
/// contain the row and column number of the current cell (1-based).
Property onselectcell As %ZEN.Datatype.eventHandler;

/// ongetcellvalue event handler:
/// If defined, this event is fired to get the value to display in the current cell.<br/>
/// The current cell row and column number is updated before this call is made.<br/>
/// The event handler is passed 3 variables, <var>row</var> and <var>col</var>, which
/// contain the row and column number of the current cell (1-based); and <var>data</var>,
/// which is the value for the cell provided by the grid's data set.<br/>
/// If not defined or if this event return handler returns null, then the value from the
/// grid's data set is used.<br/>
/// This callback is also invoked when the value of a cell is directly set by
/// the <method>setCellValue</method> method.<br/>
/// This is different than the <property>ondrawcell</property> event, which returns the actual HTML to display within a cell.
Property ongetcellvalue As %ZEN.Datatype.eventHandler;

/// onrender event handler:
/// If defined, this event is fired just before the grid is rendered.<br/>
Property onrender As %ZEN.Datatype.eventHandler;

/// ondblclick event handler:
/// This event is fired when the mouse is double-clicked on the control.
Property ondblclick As %ZEN.Datatype.eventHandler;

/// onkeyup event handler for default cell edit control.
Property oneditkeyup As %ZEN.Datatype.eventHandler;

/// onkeydown event handler for default cell edit control.
Property oneditkeydown As %ZEN.Datatype.eventHandler;

/// onchangepage event handler:
/// If defined, this event is fired when
/// the user clicks on the next or previous page buttons for a 3D grid.
/// If this callback returns false, the page change will not happen.
Property onchangepage As %ZEN.Datatype.eventHandler;

/// Name of Server-side callback method to call to information
/// for each node of this tree.<br>
/// This must be the name of a server-only method in the page
/// class that contains this component.
Property OnCreateDataSet As %ZEN.Datatype.delegator(FORMALSPEC = "pGrid:%ZEN.Component.dynaGrid,pDataSet:%ZEN.Auxiliary.dataSet", RETURNTYPE = "%Status");

/// Default format to apply to cells in this grid.<br/>
/// This is a DeepSee format string: e.g., "###.##"
/// This is overridden by row and column-level formatting.
Property format As %ZEN.Datatype.string;

/// Additional style to apply to cells in this grid.<br/>
/// This is applied before any row and column-level styles.
Property style As %ZEN.Datatype.style;

/// Additional style to apply to column headers in this grid.<br/>
Property columnHeaderStyle As %ZEN.Datatype.style;

/// Additional style to apply to row headers in this grid.<br/>
Property rowHeaderStyle As %ZEN.Datatype.style;

/// Specify whether cell borders should be "all" (the default) or "none".<br/>
Property borders As %ZEN.Datatype.string(VALUELIST = ",all,none") [ InitialExpression = "all" ];

/// Specify whether zebra striping should be applied to the grid.
Property showZebra As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Background color applied to the selected cell range.
Property selectedRangeBackground As %ZEN.Datatype.style [ InitialExpression = "rgb(87,138,168)" ];

/// Background color applied to the selected cell.
Property selectedCellBackground As %ZEN.Datatype.style [ InitialExpression = "rgb(47,98,128)" ];

/// Color applied to the selected cell range.
Property selectedCellColor As %ZEN.Datatype.style [ InitialExpression = "white" ];

/// defines style sheet used by this component.
XData Style
{
}

Method %OnNew(initvalue As %RawString) As %Status [ Private, ProcedureBlock = 1 ]
{
}

/// Client-side method to render this component.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Calculate the pixels needed to render the edge of a given cell, including
/// (potentially) the space needed for the margins, borders and padding
ClientMethod getEdgeWidth(node, margins, borders, padding) [ Language = javascript ]
{
}

/// Get the defined width of a node as specified in the CSS
ClientMethod getCSSWidthSpec(node) [ Language = javascript ]
{
}

/// Adjust the column sizes of this grid.
ClientMethod adjustSizes() [ Language = javascript ]
{
}

/// Return an object containing display information for row <var>r</var>
/// (0-based).
ClientMethod getRowInfo(r) [ Language = javascript ]
{
}

/// Return an object containing display information for column <var>c</var>
/// (0-based).
ClientMethod getColumnInfo(c) [ Language = javascript ]
{
}

/// Return the cell descriptor for the given cell (if any).
/// (0-based).
ClientMethod getCellInfo(page, row, col) [ Language = javascript ]
{
}

/// Prepares data for display within a given cell.
/// If there is an <method>ondrawcell</method> callback,
/// it is invoked. This callback has a chance to chance the contents
/// that will be displayed within the cell.
ClientMethod getCellContents(data, r, c) [ Language = javascript ]
{
}

/// This callback provides a way to fill in
/// the dataSet object used to provide values for this grid.
Method %CreateDataSet() As %Status
{
}

/// Initialize additional client-side values
ClientMethod onCreate() [ Language = javascript ]
{
}

/// Notification that the dataController associated with this dataView
/// has raised an event.
ClientMethod notifyViewHandler(reason, data1, data2, data3) [ Language = javascript ]
{
}

/// Return the dataSet object associated with this grid.
ClientMethod getDataSet() [ Language = javascript ]
{
}

/// Return row number (1-based) of the most recently selected row.
ClientMethod getCurrRow() [ Language = javascript ]
{
}

/// Return column number (1-based) of the most recently selected column.
ClientMethod getCurrColumn() [ Language = javascript ]
{
}

/// Display edit control in the current cell.
/// If <var>defval</var> is defined, then use it as the initial value in the editor.
/// <var>which</var> indicates what type of cell is being edited: "row" (row label), "column"
/// (column label), otherwise a data cell.
ClientMethod editCell(defval, which) [ Language = javascript ]
{
}

/// Return the HTML that renders the cell editor for the given cell.
/// <var>r</var> and <var>c</var> are 1-based.
/// If <var>r</var> is 0, then we are editing a column header;
/// If <var>c</var> is 0, then we are editing a row header;
/// <var>which</var> indicates what is being edited (see editCell).
ClientMethod getEditCellHTML(r, c, value, which) [ Language = javascript ]
{
}

/// Stop editing of the current cell.<br>
/// If <var>cancel</var> is true, then do not save current control value.
ClientMethod stopEditCell(cancel) [ Language = javascript ]
{
}

/// Return the html element for the current cell editor, if there is one.
ClientMethod getCellEditor() [ Language = javascript ]
{
}

/// Return whether a given cell can be edited; Row and column are 1-based.
ClientMethod isCellEditable(r, c) [ Language = javascript ]
{
}

/// Return whether a given cell is visible; Row and column are 1-based.
ClientMethod isCellVisible(r, c) [ Language = javascript ]
{
}

/// Return number of rows in this grid.
ClientMethod getRowCount() [ Language = javascript ]
{
}

/// Return number of columns in this grid.
ClientMethod getColumnCount() [ Language = javascript ]
{
}

/// Return number of "pages" in this grid.
ClientMethod getPageCount() [ Language = javascript ]
{
}

/// Return value of grid cell; Row and column are 1-based.
ClientMethod getCellValue(r, c) [ Language = javascript ]
{
}

/// Set the value of grid cell; Row and column are 1-based.
ClientMethod setCellValue(value, r, c) [ Language = javascript ]
{
}

/// Set the value of grid label; <var>index</var> is 1-based. <var>which</var> is "row" or "column".
ClientMethod setLabelValue(value, which, index) [ Language = javascript ]
{
}

/// If implemented, this callback method is called at page render-time
/// when this component is added to a page.
Method %OnAddToPageAfter() As %Status
{
}

/// Client-side method to input focus to this control.
ClientMethod focus() [ Language = javascript ]
{
}

/// Applies the row and column labels defined by the
/// <property>rows</property> and <property>columns</property>
/// collections.
Method %ApplyDefaultLabels()
{
}

/// This method fills in reasonable default values for
/// this control. Used by tools (such as Control Tester) to
/// dynamically create controls.
Method %SetDefaultValues()
{
}

/// User has clicked on a cell.
ClientMethod cellClickHandler(row, col, evt) [ Language = javascript ]
{
}

/// User has dbl-clicked on a cell.
ClientMethod cellDblClickHandler(row, col, evt) [ Language = javascript ]
{
}

/// User has clicked on the grid label.
ClientMethod gridLabelHandler() [ Language = javascript ]
{
}

/// User has clicked on a row label.
ClientMethod rowLabelHandler(row) [ Language = javascript ]
{
}

/// User has double-clicked on a row label.
ClientMethod rowLabelDblClickHandler(row) [ Language = javascript ]
{
}

/// User has clicked on a column label.
ClientMethod columnLabelHandler(col) [ Language = javascript ]
{
}

/// User has double-clicked on a column label.
ClientMethod columnLabelDblClickHandler(col) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Get the value of a property for a cell descriptor of this grid.
/// pageno, rowno, and colno are 1-based.
ClientMethod getCellProperty(pageno, rowno, colno, property) [ Language = javascript ]
{
}

/// Set the value of a property for a cell descriptor of this grid.
/// pageno, rowno, and colno are 1-based.
ClientMethod setCellProperty(pageno, rowno, colno, property, value) [ Language = javascript ]
{
}

/// Get the value of a property for a column descriptor of this grid.
ClientMethod getColumnProperty(colno, property) [ Language = javascript ]
{
}

/// Set the value of a property for a column descriptor of this grid.
ClientMethod setColumnProperty(colno, property, value) [ Language = javascript ]
{
}

/// Get the value of a property for a row descriptor of this grid.
ClientMethod getRowProperty(rowno, property) [ Language = javascript ]
{
}

/// Set the value of a property for a row descriptor of this grid.
ClientMethod setRowProperty(rowno, property, value) [ Language = javascript ]
{
}

/// For 3-D grid, move to the next page of the grid.
ClientMethod nextPage() [ Language = javascript ]
{
}

/// For 3-D grid, move to the previous page of the grid.
ClientMethod previousPage() [ Language = javascript ]
{
}

/// Move to a new, editable, cell. <var>dir</var> is "up","down","left","right"
/// Returns true if move was successful.
ClientMethod moveToCell(dir) [ Language = javascript ]
{
}

/// Process key up event within the grid's cell edit control.
ClientMethod cellEditKeyUpHandler(evt) [ Language = javascript ]
{
}

/// Process keys pressed within the grid's cell edit control.
ClientMethod cellEditKeyHandler(evt) [ Language = javascript ]
{
}

/// Process keydown event within the grid's invisible edit control.
ClientMethod gridKeyDownHandler(evt) [ Language = javascript ]
{
}

/// Process keypress event within the grid's invisible edit control.
ClientMethod gridKeyPressHandler(evt) [ Language = javascript ]
{
}

/// Make the specified cell the current cell.<br/>
/// <var>r</var> and <var>c</var> are 1-based.<br/>
/// If <var>notify</var> is true, then raise an onSelectCell event.
ClientMethod selectCell(r, c, notify) [ Language = javascript ]
{
}

/// Notification that user is about to move to a new cell.
ClientMethod selectCellHandler(r, c) [ Language = javascript ]
{
}

/// Focus passed to the grid's invisible edit control.
ClientMethod gridKeyFocus() [ Language = javascript ]
{
}

/// Focus taken from the grid's invisible edit control.
ClientMethod gridKeyBlur() [ Language = javascript ]
{
}

/// Return the range of selected cells or null if nothing selected.
/// The range is returned as an array of startRow,startCol,endRow,endCol.
ClientMethod getSelectedRange() [ Language = javascript ]
{
}

/// Set the selected cell range. Addresses are 1-based.<br/>
ClientMethod selectCellRange(startRow, startCol, endRow, endCol) [ Language = javascript ]
{
}

/// Click handler for arrows.
ClientMethod arrowHandler(which) [ Internal, Language = javascript ]
{
}

}
