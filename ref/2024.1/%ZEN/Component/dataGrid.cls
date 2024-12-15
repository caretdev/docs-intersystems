/// Implements a component for viewing and editing tabular data.<br/>
/// This is an HTML5 component; it will only correctly run on HTML5 compliant browsers.
Class %ZEN.Component.dataGrid Extends (control, dataView) [ Deprecated, System = 3 ]
{

/// Pick up formula code.
Parameter INCLUDEFILES = "dsparser.js";

/// Do not include in "form" module.
Parameter SYSMODULE;

Parameter DEFAULTENCLOSINGCLASS As STRING = "dataGrid";

/// Domain used for localization.
Parameter DOMAIN = "%ZEN";

/// Optional row descriptors for this grid.
Property rowDescriptors As list Of %ZEN.Auxiliary.gridRowDescriptor(XMLPROJECTION = "ELEMENT", XMLREF = 1, XMLTYPECONSTRAINT = "CHOICE", ZENSETTING = 0);

/// Optional column descriptors for this grid.
Property columnDescriptors As list Of %ZEN.Auxiliary.gridColumnDescriptor(XMLPROJECTION = "ELEMENT", XMLREF = 1, XMLTYPECONSTRAINT = "CHOICE", ZENSETTING = 0);

/// Optional descriptor for the summary row.
Property summaryRow As %ZEN.Auxiliary.gridRowDescriptor(XMLNAME = "summaryRow", ZENSETTING = 0);

/// For sortable tables, this is the column used for sorting results (1-based).
Property sortColumn As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// For sortable tables, this is the order to sort values within the
/// current column. Values can be "", "asc" (ascending), or "desc" (descending).
Property sortOrder As %ZEN.Datatype.string(VALUELIST = ",asc,desc");

/// Indicates where column-wise sorting should occur.
/// This can be "client" or "server".
Property sortMode As %ZEN.Datatype.string(VALUELIST = ",client,server") [ InitialExpression = "client" ];

/// Indicates where data paging should occur.
Property pagingMode As %ZEN.Datatype.string(VALUELIST = ",client,server") [ InitialExpression = "client" ];

/// If true, display a check box in each row to allow selection of the row.
Property showRowSelector As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, the user can resize columnns with the mouse.
Property canResizeColumns As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// This property contains a csv-list of the row numbers (1-based) in which the row selector checkbox is
/// currently set.<br/>
/// If all rows are checked, it is set to "all".
Property checkedRows As %ZEN.Datatype.csv;

/// Optional title to display along top of grid.
Property gridTitle As %ZEN.Datatype.caption;

/// Optional style to apply to grid title.
Property gridTitleStyle As %ZEN.Datatype.style;

/// Optional style to apply to grid status area.
Property gridStatusStyle As %ZEN.Datatype.style;

/// Specifies whether column labels should be displayed.
Property showColumnLabels As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Width used for row labels. This is a number of pixels.
/// If not defined, then a width is calculated.
Property rowLabelWidth As %ZEN.Datatype.integer;

/// This is the default width (in pixels) used for columns that do not supply a width.
/// If not defined, then a width is calculated.
Property columnWidth As %ZEN.Datatype.integer;

/// This is the default height (in pixels) used for rows that do not supply a height.
/// If not defined, then the height is calculated.
Property rowHeight As %ZEN.Datatype.integer;

/// Specifies whether row labels should be displayed.
Property showRowLabels As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// This specifies how parent row labels with multiple child labels are displayed.<br/>
/// If true, then one parent label is displayed for each set of children.
/// If false, then the parent row label is repeated for each child.
Property rowLabelSpan As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// This specifies how parent column labels with multiple child labels are displayed.<br/>
/// If true, then one parent label is displayed for each set of children.
/// If false, then the parent row label is repeated for each child.
Property columnLabelSpan As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// onheaderclick event handler:
/// If defined, this event is fired when
/// the user clicks on a row or column header.
/// The variable <var>which</var> will indicate which header is clicked: "row" or "column".
/// The variable <var>index</var> will indicate the ordinal number of the header (1-based).
Property onheaderclick As %ZEN.Datatype.eventHandler;

/// This is the row number (1-based) of the current selected cell.
Property currRow As %ZEN.Datatype.integer [ InitialExpression = 1 ];

/// This is the column number (1-based) of the current selected cell.
Property currColumn As %ZEN.Datatype.integer [ InitialExpression = 1 ];

/// This is the current "page" when this grid is paging through data.
/// Use the <method>getCurrPage</method> method to view this.
Property currPage As %ZEN.Datatype.integer [ InitialExpression = 1 ];

/// This is the current "page" size when this grid is paging through data.
/// Use the <method>getPageSize</method> method to view this.
Property pageSize As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// This specifies the current selected range of cells as a
/// comma-separated list of integers. The list is of the form:<br/>
/// startRow,startCol,endRow,endCol<br/>
/// All cells numbers are 1-based.<br/>
/// If the range is equal to "", then no cells are selected.<br/>
/// This is only used if <property>multiSelect</property> is true.
Property selectedRange As %ZEN.Datatype.csv;

/// This is the column number (1-based) of the column that supplies the
/// value for a row within the table.
Property valueColumn As %ZEN.Datatype.integer [ InitialExpression = 1 ];

/// Specifies how selection works within the grid.<br/>
/// If "rows", then the user selects entire rows at a time.<br/>
/// If "cells", then the user can select and move between individual cells.<br/>
Property selectMode As %ZEN.Datatype.string(VALUELIST = ",rows,cells") [ InitialExpression = "rows" ];

/// If supplied, this is a key used to filter results that are already on the client.
Property filterKey As %ZEN.Datatype.string;

/// If true, users can select a range of cells in the grid.
Property multiSelect As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, this grid will display formula values when a cell is edited. Otherwise
/// the current value of the cell is displayed.
Property hasFormulas As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Default format to apply to cells in this grid.<br/>
/// This is a DeepSee format string: e.g., "###.##"
/// This is overridden by row and column-level formatting.
Property format As %ZEN.Datatype.string;

/// Sometimes datagrid is *never* used to enter numbers only strings, for instance diagnostic codes with 0s trailing to the left or after a decimal point
Property alwaysString As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Additional style to apply to cells in this grid.<br/>
/// This is applied before any row and column-level styles.
Property style As %ZEN.Datatype.style;

/// Additional style to apply to column headers in this grid.<br/>
Property columnHeaderStyle As %ZEN.Datatype.style;

/// Additional style to apply to row headers in this grid.<br/>
Property rowHeaderStyle As %ZEN.Datatype.style;

/// Specify whether zebra striping should be applied to the grid.
Property showZebra As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Background color to apply to even rows when zebra striping is on.
Property evenRowBackground As %ZEN.Datatype.style [ InitialExpression = "#F8F8F8" ];

/// Foreground color to apply to even rows when zebra striping is on.
Property evenRowColor As %ZEN.Datatype.style;

/// Style to apply to odd rows when zebra striping is on.
/// Background color to apply to odd rows when zebra striping is on.
Property oddRowBackground As %ZEN.Datatype.style;

/// Foreground color to apply to odd rows when zebra striping is on.
Property oddRowColor As %ZEN.Datatype.style;

/// Background color of cells when mouse is over them.
Property cellHoverColor As %ZEN.Datatype.string [ InitialExpression = "#EEEEEE" ];

/// Background color to apply to the current cell.
Property currCellBackground As %ZEN.Datatype.style [ InitialExpression = "#D0D0FF" ];

/// Foreground color to apply to the current cell.
Property currCellColor As %ZEN.Datatype.style [ InitialExpression = "#000000" ];

/// ondrawcell event handler:
/// If defined, this event is fired when
/// a cell is about to be drawn.
/// The event is passed <var>value</var>, <var>row</var>, and <var>col</var> (1-based).
/// If this event handler returns a value, then it is used to render the cell contents.<br/>
/// The return of this event is either null, in which case the default rendering is used for the cell
/// or an object with any of the following properties:<br/>
/// <var>content</var> - HTML to display within the cell.<br/>
/// <var>align</var> - horizontal alignment for the cell.<br/>
/// <var>style</var> - CSS style for the cell.<br/>
/// <var>format</var> - format string for the cell (ignored if content is supplied).<br/>
/// <var>image</var> - image for the cell (ignored if content is supplied).<br/>
/// <var>type</var> - type for the cell (ignored if content is supplied).<br/>
/// <var>value</var> - value for the cell (ignored if content is supplied).<br/>
Property ondrawcell As %ZEN.Datatype.eventHandler;

/// onselectcell event handler:<br/>
/// If defined, this event is fired when the user navigates to a new cell.<br/>
/// The current cell row and column number is updated before this call is made.<br/>
/// The event handler is passed 2 variables, <var>row</var> and <var>col</var>, which
/// contain the row and column number of the current cell (1-based).
Property onselectcell As %ZEN.Datatype.eventHandler;

/// onselectrow event handler:<br/>
/// If defined, this event is fired when the user toggles any of the visible row
/// selector checkboxes within the grid<br/>
/// The event handler is passed one variable, <var>range</var>, a string enumerating
/// the currently checked rows.  This range has two special values: "" indicating that
/// no rows are currently checked, or the reserved value "all" indicating that all rows
/// have been checked.  Between these extremes, the range parameter will become a CSV string
/// listing the (1-based) indices of the currently checked rows.<br/>
/// As this event is linked to the toggling of the row selectors, it only fires if
/// <var>showRowSelector</var> is true
Property onselectrow As %ZEN.Datatype.eventHandler;

/// onchangecell event handler:<br/>
/// If defined, this event is fired when the user finished editing a cell value.<br/>
/// The current cell row and column number is updated before this call is made.<br/>
/// The event handler is passed <var>value</var> (the new cell value). It should return
/// the value to be placed into the cell or null to cancel the edit.
Property onchangecell As %ZEN.Datatype.eventHandler;

/// ongetfunctions event handler:<br/>
/// If defined, this event is fired when the formula engine for this component is initialized.<br/>
/// It should return a list of additional functions that can be evaluated by the formula engine.
Property ongetfunctions As %ZEN.Datatype.eventHandler [ Internal ];

/// onaction event handler:<br/>
/// If defined, this event is fired when the user executes an action within a cell
/// (such as clicking on a column-defined checkbox, button, or link.)<br/>
/// The current cell row and column number is updated before this call is made.<br/>
/// The event handler is passed 3 variables, <var>row</var>, <var>name</var>, and <var>value</var>, which
/// contain the row number of the current cell (1-based), the logical name of the column, and the current value of the
/// action control, if applicable.
Property onaction As %ZEN.Datatype.eventHandler;

/// ongetlookupdata event handler:<br/>
/// Return a javascript array of data to display within the popup for a lookup column.
/// This can be any array of object or literal values.
Property ongetlookupdata As %ZEN.Datatype.eventHandler;

/// ongettitle event handler:
/// If defined, this event returns the HTML that will be displayed within the
/// title area of this grid (top of grid). This supercedes the <property>gridTitle</property>
/// property if defined.
Property ongettitle As %ZEN.Datatype.eventHandler;

/// ongetstatus event handler:
/// If defined, this event returns the HTML that will be displayed within the
/// status area of this grid (bottom of grid).
Property ongetstatus As %ZEN.Datatype.eventHandler;

/// onfiltercell event handler:<br/>
/// If defined, this event is fired when the user enters a new filter key.<br/>
/// The event handler is passed an object, <var>info</var>, with the properties
/// row,col,value, and key. The event handler should return true if the row containing the
/// cell matches the filter or false otherwise.
Property onfiltercell As %ZEN.Datatype.eventHandler;

Property lblSearch As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Search")} ];

Property lblWorking As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Working")} ];

Property lblErrorRenderContents As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Error in renderContents.")} ];

Property lblErrorRenderSkeleton As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Error in renderSkeleton.")} ];

Property lblErrorRenderCells As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Error in renderCells.")} ];

Property lblErrorAdjustSizes As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Error in adjustSizes.")} ];

Property lblErrorSelectCell As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Error in selectCell.")} ];

/// Setting this to 0 will disable code execution when loading and rendering the grid
/// This is useful when you want to enter = and not a formula in a particular column. This is a grid wide setting
Property useEngine As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// defines style sheet used by this component.
XData Style
{
}

/// Initialize additional client-side values
ClientMethod onCreate() [ Language = javascript ]
{
}

/// Initialize the calculation engine.
ClientMethod initEngine() [ Language = javascript ]
{
}

/// Recalculate values of cells using the formula engine.
ClientMethod recalc() [ Language = javascript ]
{
}

/// Evaluate a single expression (outside of the general set of cells).
ClientMethod evaluate(expr, row, col) [ Language = javascript ]
{
}

/// Client-side method to render this component.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Render the main divs (without content).
ClientMethod renderSkeleton() [ Internal, Language = javascript ]
{
}

/// Utility for pulling specific settings out of a user defined style string
ClientMethod extractUserStyleSetting(styleStr, attr) [ Internal, Language = javascript ]
{
}

/// Render the data and headers within the grid.
ClientMethod renderCells(recalc) [ Internal, Language = javascript ]
{
}

/// Test for override of cell content.
/// This may be overridden by subclasses.
ClientMethod getCellContent(value, r, c) [ Internal, Language = javascript ]
{
}

/// Return the HTML for the paging buttons.
ClientMethod getPagingHTML() [ Language = javascript ]
{
}

/// Return the (resolved) value of the given cell (0-based).
ClientMethod getCellValue(r, c) [ Internal, Language = javascript ]
{
}

/// Set the value of grid cell; Row and column are 0-based.
ClientMethod setCellValue(value, r, c) [ Language = javascript ]
{
}

/// Set the client-side filter key.
ClientMethod setFilterKey(key, update) [ Language = javascript ]
{
}

/// Reset and re-render the entire grid contents.
ClientMethod updateGrid(reset) [ Language = javascript ]
{
}

/// Re-render the data cells within this grid.<br/>
/// If <var>immediate</var> is true, execute immediately. Otherwise
/// use a timer.<br/>
ClientMethod updateCells(immediate, reindex, delay) [ Language = javascript ]
{
}

/// Do the actual work of rerendering the data within this grid.
ClientMethod reallyUpdateCells() [ Internal, Language = javascript ]
{
}

/// Set the size of this component (in pixels).
ClientMethod setSize(width, height) [ Internal, Language = javascript ]
{
}

/// Helper function to define the method getComputedStyle() is the browser
/// does not already have an innate one (i.e. IE8)
ClientMethod defineGetComputedStyle() [ Internal, Language = javascript ]
{
}

/// Helper function for AdjustSizes to address special logic needs of interactive
/// Column width resizing.
ClientMethod adjustSizesInColumnResize(sz) [ Internal, Language = javascript ]
{
}

/// Helper method to service the Paging and Status DIVs when processing an
/// AdjustSizes request.  Note: this call may change the value of sz.encHgt.
ClientMethod adjustSizesAreasPagingStatus(sz, pagingDiv, statusDiv) [ Internal, Language = javascript ]
{
}

/// Helper function for adjustSizes.  This snippet walks over the column headers
/// to update the cwid entries of the sizing object based on attribute settings
/// or, in their absence, actual rendered avatars.  In addition, the column header height
/// cHdrHgt, is updated to reflect the maximum bounds of any of the cells visited.
ClientMethod adjustSizesColumnHeaders(sz, cols) [ Internal, Language = javascript ]
{
}

/// Helper function for adjustSizes.  This snippet walks over the rows and row headers
/// to update the rhgt and rHdrWid entries of the sizing object based on attribute settings
/// or, in their absence, actual rendered avatars.
ClientMethod adjustSizesRowHeaders(sz, rows, hdrLabels) [ Internal, Language = javascript ]
{
}

/// Helper function for adjustSizes.  This snippet walks over various elements that comprise
/// the summary row, sets the attribute cSumHgt and may upwardly adjust the values of
/// cwid and rHdrHgt depending on current values and its own rendering needs.
ClientMethod adjustSizesSummaryRow(sz, cols) [ Internal, Language = javascript ]
{
}

/// Helper function for adjustSizes.  This snippet walks over actual data cells
/// and may upwardly adjust the values of cwid and rhgt depending on current values
/// rendering needs.
ClientMethod adjustSizesDataCells(sz, cols, rows) [ Internal, Language = javascript ]
{
}

/// Initialize sizing object with the current style contraints we need to satisfy
ClientMethod initializeSizingObject(inResize, encDiv, titleDiv) [ Internal, Language = javascript ]
{
}

/// Adjust sizes of this component.
ClientMethod adjustSizes() [ Internal, Language = javascript ]
{
}

/// Return number of displayed rows in this grid.<br/>
/// If <var>filtered</var> (the default), return only filtered results.
ClientMethod getRowCount(filtered) [ Language = javascript ]
{
}

/// Return number of displayed columns in this grid.
ClientMethod getColumnCount() [ Language = javascript ]
{
}

/// Mouse wheel handler.
ClientMethod wheelHandler(evt) [ Language = javascript ]
{
}

/// Vertical Scroll handler.
ClientMethod cellScrollVt() [ Language = javascript ]
{
}

/// Horizontal Scroll handler..
ClientMethod cellScrollHz() [ Language = javascript ]
{
}

/// Mouse double-click handler for column resize.
ClientMethod resizeMouseDblClick(evt, index) [ Language = javascript ]
{
}

/// Mouse down handler for column resize.
ClientMethod resizeMouseDown(evt, index) [ Language = javascript ]
{
}

/// Mouse up handler for resize handle (connected to window).
ClientMethod resizeMouseUp(evt) [ Language = javascript ]
{
}

/// Mouse move handler for column resize.
ClientMethod resizeMouseMove(evt) [ Language = javascript ]
{
}

/// Mouse down handler for selector resize.
ClientMethod sizeHandleMouseDown(evt) [ Language = javascript ]
{
}

/// Mouse up handler for size handle (connected to window).
ClientMethod sizeHandleMouseUp(evt) [ Language = javascript ]
{
}

/// Mouse move handler for selector resize.
ClientMethod sizeHandleMouseMove(evt) [ Language = javascript ]
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

/// Process keydown event within the grid's invisible edit control.
ClientMethod gridKeyDownHandler(evt) [ Language = javascript ]
{
}

/// Process keypress event within the grid's invisible edit control.
ClientMethod gridKeyPressHandler(evt) [ Language = javascript ]
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

/// Client-side method to give input focus to this control.
ClientMethod focus() [ Language = javascript ]
{
}

/// Move to a new, editable, cell. <var>dir</var> is "up","down","left","right","end",or "home".
/// Returns true if move was successful.<br/>
/// <var>updateRange</var> indicates that we are in "select range" mode.
ClientMethod moveToCell(dir, updateRange) [ Language = javascript ]
{
}

/// Make the specified cell the current cell.<br/>
/// <var>row</var> and <var>col</var> are 1-based.<br/>
/// If <var>notify</var> is true, then raise an onSelectCell event.<br/>
ClientMethod selectCell(row, col, notify, updateRange) [ Language = javascript ]
{
}

/// Notification that user is about to move to a new cell.
ClientMethod selectCellHandler(r, c) [ Language = javascript ]
{
}

/// Notification that user has fired a cell action.
ClientMethod cellActionHandler(r, name, value) [ Language = javascript ]
{
}

/// Hilight (or unhighlight) the current selected cell headers.
ClientMethod highlightCells(flag) [ Language = javascript ]
{
}

/// Move the cell selector to the given cells (1-based).
ClientMethod moveCellSelector(startRow, startCol, endRow, endCol) [ Language = javascript ]
{
}

/// Handler for the dynamic cell editor control to allow the user to
/// click the mouse to initially position the cursor and, thereafter,
/// use left and right arrow keys to move within the edited string.
ClientMethod cellInputClickHandler(event) [ Internal, Language = javascript ]
{
}

/// Display edit control in the current cell.
/// If <var>defval</var> is defined, then use it as the initial value in the editor.
/// <var>which</var> indicates what type of cell is being edited: "row" (row label), "column"
/// (column label), otherwise a data cell.
ClientMethod editCell(defval, which) [ Language = javascript ]
{
}

/// Focus taken from the grid's cell edit control.
ClientMethod cellEditBlur() [ Language = javascript ]
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

/// Return the html element for the current cell selector, if there is one.
ClientMethod getCellSelector() [ Language = javascript ]
{
}

/// Return whether a given cell can be edited; Row and column are 1-based.
ClientMethod isCellEditable(r, c) [ Language = javascript ]
{
}

/// Return whether a given cell is visible; Row and column are 1-based.
ClientMethod isCellVisible(r, c) [ Internal, Language = javascript ]
{
}

/// Mouse over for a cell.
ClientMethod cellMouseOver(row, col, evt) [ Language = javascript ]
{
}

/// Mouse out for a cell.
ClientMethod cellMouseOut(row, col, evt) [ Language = javascript ]
{
}

/// User has clicked on the cell selector.
ClientMethod selectorClickHandler(evt) [ Language = javascript ]
{
}

/// User has dbl-clicked on the cell selector.
ClientMethod selectorDblClickHandler(evt) [ Language = javascript ]
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

/// Build the client-side sort index for this grid.
/// This also takes care of filterKey filtering, if needed.
ClientMethod buildSortIndex() [ Internal, Language = javascript ]
{
}

/// Resolve all row descriptors for this grid into a set of row info objects that
/// are used for actual rendering.
ClientMethod buildRowIndex() [ Internal, Language = javascript ]
{
}

/// Build a list of leaf row descriptors (with spanning headers if needed).
/// Return the number of leaf nodes.
ClientMethod buildRowLeafIndex(rowArray, list, dimInfo, depth, parent) [ Internal, Language = javascript ]
{
}

/// Return the number of row descriptors.
ClientMethod getRowDescriptorCount() [ Language = javascript ]
{
}

/// Return an object containing the descriptor for row <var>r</var> (0-based).
/// <var>r</var> is an index into the actual set of row descriptors.
ClientMethod getRowDescriptor(r) [ Language = javascript ]
{
}

/// Return an array of row descriptors (or null).
ClientMethod getRowDescriptors() [ Language = javascript ]
{
}

/// Return an array of column descriptors (or null).
ClientMethod getColumnDescriptors() [ Language = javascript ]
{
}

/// Return an object containing display information for row <var>r</var> (0-based).
/// <var>r</var> is a resolved row number within the current page!!!.
ClientMethod getRowInfo(r) [ Language = javascript ]
{
}

/// Resolve all column descriptors for this grid into a set of column info objects that
/// are used for actual rendering.
ClientMethod buildColumnIndex() [ Internal, Language = javascript ]
{
}

/// Build a list of leaf node column descriptors.
/// Return the number of leaf nodes.
ClientMethod buildColumnLeafIndex(columnArray, list, dimInfo, depth, parent) [ Internal, Language = javascript ]
{
}

/// Return the number of column descriptors.
ClientMethod getColumnDescriptorCount() [ Language = javascript ]
{
}

/// Return an object containing the descriptor for column <var>c</var> (0-based).
/// <var>c</var> is an index into the actual set of column descriptors.
ClientMethod getColumnDescriptor(c) [ Language = javascript ]
{
}

/// Return an object containing display information for column <var>c</var> (0-based).
/// If there are nested columns, this always refers to the bottom-most set of columns.
ClientMethod getColumnInfo(c) [ Language = javascript ]
{
}

/// Test if this grid is in "design" mode;.
ClientMethod getDesignMode() [ Internal, Language = javascript ]
{
}

/// Return number of data "pages" within this grid.
ClientMethod getPageCount() [ Internal, Language = javascript ]
{
}

/// Return number of rows on the current "page".
ClientMethod getRowsOnPage() [ Internal, Language = javascript ]
{
}

/// Return size of data "pages" within this grid.
/// 0 indicates no paging is used.
ClientMethod getPageSize() [ Internal, Language = javascript ]
{
}

/// Set the size of data "pages" within this grid.
/// 0 indicates no paging is used.
ClientMethod setPageSize(pageSize) [ Internal, Language = javascript ]
{
}

/// Number of the current "page" when paging (1-based).
ClientMethod getCurrPage() [ Internal, Language = javascript ]
{
}

/// Set the current "page" when paging (1-based).
ClientMethod setCurrPage(page) [ Internal, Language = javascript ]
{
}

/// Show next page in grid.
ClientMethod nextPage() [ Language = javascript ]
{
}

/// Show previous page in grid.
ClientMethod prevPage() [ Language = javascript ]
{
}

/// When paging, return the row number (0-based) of the current visible top row.
ClientMethod getRowOffset() [ Internal, Language = javascript ]
{
}

/// User has clicked on a row header.
ClientMethod rowClickHandler(evt, row) [ Language = javascript ]
{
}

/// User has double-clicked on a row header.
ClientMethod rowDblClickHandler(evt, row) [ Language = javascript ]
{
}

/// User has clicked on a column header.
ClientMethod columnClickHandler(evt, col) [ Language = javascript ]
{
}

/// User has double-clicked on a column header.
ClientMethod columnDblClickHandler(evt, col) [ Language = javascript ]
{
}

/// Split a css value into the style values into styles for an inner and outer cell div.
ClientMethod splitStyle(style, info) [ Internal, Language = javascript ]
{
}

/// User click on a row selector check box.
ClientMethod cbClick(which) [ Internal, Language = javascript ]
{
}

/// Display a message for this form.
ClientMethod showMessage(msg) [ Language = javascript ]
{
}

/// Hide the message for this form.
ClientMethod hideMessage() [ Language = javascript ]
{
}

/// Start "wait" state for this grid.
ClientMethod beginWait() [ Language = javascript ]
{
}

/// End "wait" state for this grid.
ClientMethod endWait() [ Language = javascript ]
{
}

/// Show the given content in the overlay for this grid.
ClientMethod showOverlay(content) [ Language = javascript ]
{
}

/// Hide the overlay for this grid.
ClientMethod hideOverlay() [ Language = javascript ]
{
}

/// Notification that the dataController associated with this grid
/// has raised an event.
ClientMethod notifyViewHandler(reason, data1, data2, data3) [ Language = javascript ]
{
}

/// Number of rows.
/// Part of formula provider API.
ClientMethod getCellRowCount() [ Internal, Language = javascript ]
{
}

/// Number of columns.
/// Part of formula provider API.
ClientMethod getCellColumnCount() [ Internal, Language = javascript ]
{
}

/// Column name (0-based).
/// Part of formula provider API.
ClientMethod getCellColumnName(c) [ Internal, Language = javascript ]
{
}

/// Get the value to display within the cell editor.
/// This is either the raw value (which may be a formula) or the resolved value
/// depending on the hasFormulas property.
ClientMethod getCellEditData(r, c) [ Internal, Language = javascript ]
{
}

/// Get raw cell value (0-based).
/// Part of formula provider API.
ClientMethod getCellData(r, c) [ Internal, Language = javascript ]
{
}

/// Get raw cell value from controller (row is 0-based).
/// Part of formula provider API.
ClientMethod getCellExternalData(r, prop) [ Internal, Language = javascript ]
{
}

/// Return the value (using the <property>valueColumn</property>) of the
/// given row (1-based).
ClientMethod getRowValue(row) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Display the dropdown popup window.<br/>
/// <var>spec</var> is an object with any of the following properties:<br/>
/// top - top edge of popup.<br/>
/// left - left edge of popup.<br/>
/// parentDiv - if supplied, use this to place the popup.<br/>
/// value - current logical value.<br/>
/// data - array of data elements to display; can be an array of objects or literal values.<br/>
/// propertyList - if data contains objects, this is a csv-list of properties to display.<br/>
/// idProperty - if data contains objects, this the name of the property supplying the id value.<br/>
/// textProperty - if data contains objects, this the name of the property supplying the display value.<br/>
/// title - title to display in popup.<br/>
/// applyValue - function to call a value is selected within the popup.<br/>
ClientMethod showPopup(spec) [ Language = javascript ]
{
}

/// Value applied from popup.
ClientMethod applyValue(value, text) [ Language = javascript ]
{
}

/// Return the content for the popup/dropdown.
ClientMethod getPopupContent(group) [ Language = javascript ]
{
}

/// Get the HTML contents of the popup lookup table.
ClientMethod getLookupTableHTML(spec, filter) [ Internal, Language = javascript ]
{
}

/// Apply contents of filter control.
ClientMethod applyFilter() [ Internal, Language = javascript ]
{
}

/// Utility to stop the propagation of an event to other handlers
ClientMethod killEvent(evt) [ Internal, Language = javascript ]
{
}

/// Keydown in popup.
ClientMethod filterKeyDown(evt) [ Internal, Language = javascript ]
{
}

/// Key up in popup.
ClientMethod filterKeyUp(evt) [ Internal, Language = javascript ]
{
}

/// Notification that the popup group is displayed.
ClientMethod showGroupHandler() [ Language = javascript ]
{
}

/// Notification that the popup group is hidden.
ClientMethod hideGroupHandler() [ Language = javascript ]
{
}

/// Find the search results div (wrapper around lookup results table).
ClientMethod getSearchDiv() [ Internal, Language = javascript ]
{
}

/// Select an item within the popup (used by keyboard handling).
ClientMethod selectPopupItem(index) [ Language = javascript ]
{
}

/// Return the array of row header labels to be displayed in the upper left nub.
ClientMethod getRowHeaderLabels() [ Language = javascript ]
{
}

/// Return the number of the current row (1 based).
ClientMethod getCurrRow() [ Language = javascript ]
{
}

/// Return the number of the current column (1 based).
ClientMethod getCurrColumn() [ Language = javascript ]
{
}

}
