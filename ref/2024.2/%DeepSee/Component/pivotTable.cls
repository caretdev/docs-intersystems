/// Pivot table component.<br/>
/// This component gives users the ability to view and interact with a DeepSee cube
/// or subject area.<br/>
/// The data displayed by the pivot table can be supplied in various ways.
/// This is specified using the <property>dataSource</property>:
/// <ul>
/// <li>"manual" - Setting the value of the <property>userMDX</property> property to
/// a valid MDX statement will cause the pivotTable to display the results of the query.
/// This includes DRILLTHROUGH queries (which provide a listing of source data values).</li>
/// <li>"automatic" - The user can drag and drop member specifications onto one of the various
/// drop zones (supplied by the pivotController component) and the pivot table will automatically construct and execute an MDX query.
/// In this case, you must supply a value for the <property>cubeName</property> property.<br/>
/// This is the mode in which the DeepSee Analyzer works.</li>
/// </ul>
Class %DeepSee.Component.pivotTable Extends %ZEN.Component.component [ System = 3 ]
{

/// Pick up formula code.
Parameter JSINCLUDES = "DeepSee.js,dsparser.js";

Property absolutePositioning As %ZEN.Datatype.string [ InitialExpression = 0 ];

Parameter NAMESPACE = "http://www.intersystems.com/deepsee";

/// Localization domain
Parameter DOMAIN = "%DeepSee";

Parameter DEFAULTENCLOSINGCLASS = "dsPivotEnclosingDiv";

Parameter MAXCOLUMNS = 100;

Parameter MAXLISTINGROWS = 1000;

/// Specifies how this pivot table gets data from a DeepSee source.
Property dataSource As %ZEN.Datatype.string(VALUELIST = ",manual,automatic") [ InitialExpression = "automatic" ];

Property singleTable As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Property staleCache As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0 ];

Property reinitialized As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0 ];

/// Name of data source associated with this pivot.
Property dataSourceName As %ZEN.Datatype.string [ Internal ];

/// If defined and <property>dataSource</property> is set to "manual", then
/// this is the MDX statement used to provide the contents of the pivot table.
Property mdx As %ZEN.Datatype.string(ZENENCRYPT = 1, ZENSETTING = 0);

/// If defined, then this holds the user-supplied MDX statement used to
/// provide the contents of the pivot table.
Property userMDX As %ZEN.Datatype.string(ZENSETTING = 0);

/// If defined, then this is the name of the DeepSee KPI class used to provide
/// the contents of the pivot table.
Property kpi As %ZEN.Datatype.string;

/// Text of most recently executed query
Property currentQueryText As %ZEN.Datatype.string(ZENENCRYPT = 1, ZENSETTING = 0);

/// Resolved text of most recently executed query
Property resolvedQueryText As %ZEN.Datatype.string(ZENENCRYPT = 1, ZENSETTING = 0);

/// If defined, then this is a list of columns to display when displaying a KPI-based pivot.
/// Each item in the list can also define a caption: "property:caption,..."
/// as well as a format: "property:caption:format,..." <br/>
/// "," and ":" can be escaped with "\," and "\:"
Property columnList As %ZEN.Datatype.csv;

/// If defined, then this is the name of the column that provides the value for
/// a row within this pivot. This value is used when a row is selected, and a dashboard
/// *action* is invoked on the pivot.<br/>
/// This only applies to KPI-based pivots.
/// If not provided, then the first column is used.
Property valueColumn As %ZEN.Datatype.string;

/// Indicates if and how measures should be displayed
/// 0 = Always
/// 1 = If More Than 1 Measure
/// 2 = Never
Property hideMeasures As %ZEN.Datatype.string [ InitialExpression = 1 ];

Property hiddenMeasureText As list Of %ZEN.Datatype.string(XMLPROJECTION = "ELEMENT");

Property rowCaptionList As list Of %ZEN.Datatype.string(XMLPROJECTION = "ELEMENT");

/// If true, execute a show plan for the query.
Property showPlan As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// This is the minimum width (in pixels) used for all cells within the table.
/// The default is 120.
Property cellWidth As %ZEN.Datatype.integer [ InitialExpression = 120 ];

/// This specifies how parent row labels with multiple child labels are displayed.<br/>
/// If true, then one parent label is displayed for each set of children.
/// If false, then the parent row label is repeated for each child.
Property rowLabelSpan As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// This specifies how parent column labels with multiple child labels are displayed.<br/>
/// If true, then one parent label is displayed for each set of children.
/// If false, then the parent row label is repeated for each child.
Property columnLabelSpan As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// This is the height (in pixels) used for all cells within the table.
/// The default is 22.
Property cellHeight As %ZEN.Datatype.integer [ InitialExpression = 22 ];

/// If true, display rows containing only empty values.<br/>
/// If <var>mdx</var> is specified, this is ignored.
Property showEmptyRows As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, display columns containing only empty values.<br/>
/// If <var>mdx</var> is specified, this is ignored.
Property showEmptyColumns As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Name of the cube that will provide data for this pivot table.
Property cubeName As %ZEN.Datatype.className(ZENEXPRESSION = 1);

/// Caption to display. If not specified, the caption for the cube will be used.
Property caption As %ZEN.Datatype.string;

/// Name of listing to use for the current detail listing. If empty, the default listing is used.
Property listing As %ZEN.Datatype.string;

/// Name of listing to use for the default detail listing. If empty, the default listing for the cube is used.
Property defaultListing As %ZEN.Datatype.string;

/// If true, then listings are enabled for this pivot.
Property listingEnabled As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Specifies the select mode for a detail listing: none, "single", or "multi".
Property listingSelect As %ZEN.Datatype.string(VALUELIST = ",single,multi");

/// Specifies the type of detail listing to show: "table", or "map".
Property listingType As %ZEN.Datatype.string(VALUELIST = ",table,map", XMLPROJECTION = "none") [ InitialExpression = "table", Internal ];

/// Maximum number of total rows to display within a detail listing.
/// If empty, the default value (1000) is used.
Property listingRows As %ZEN.Datatype.integer;

/// Number of rows to display within one page of a detail listing.
/// If empty, the default value (100) is used.
Property listingPageSize As %ZEN.Datatype.integer [ InitialExpression = 100 ];

/// Specifies the select mode for the pivot table: none, "single", or "multi".
/// Turning this on displays check boxes for each row in the pivot table.
/// This is different from the built-in cell range selection mechanism.<br/>
/// This only applies to KPI-based pivots.
Property pivotSelect As %ZEN.Datatype.string(VALUELIST = ",single,multi");

/// Internal property used to remember the normalized cube name for this table.
Property cubeKey As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENSETTING = 0) [ Internal ];

/// Internal property used to remember the query key for this table.
Property queryKey As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENSETTING = 0) [ Internal ];

/// Internal property used to caching listing results for this table.
Property listingKey As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENSETTING = 0) [ Internal ];

/// Internal property to track this specific pivot instance. This is used to cancel query execution.
Property pivotNonce As %ZEN.Datatype.integer(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = {$R(1000000000)}, Internal ];

/// Internal property used to track the current total of cell values.
Property totalValue As %ZEN.Datatype.float(XMLPROJECTION = "none", ZENSETTING = 0) [ Internal ];

/// Internal property used to track the number of cells.
Property cellCount As %ZEN.Datatype.integer(XMLPROJECTION = "none", ZENSETTING = 0) [ Internal ];

/// Internal property used to track if we truncated the number of displayed columns.
Property columnsTruncated As %ZEN.Datatype.integer(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = 0, Internal ];

/// Internal property used to track the current query status.
Property queryStatus As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = 0, Internal ];

/// Internal property used to track the completion percentage of the current query.
Property queryComplete As %ZEN.Datatype.float(XMLPROJECTION = "none", ZENSETTING = 0) [ Internal ];

/// Internal property used to track number of calls to track the current query.
Property queryCalls As %ZEN.Datatype.integer(XMLPROJECTION = "none", ZENSETTING = 0) [ Internal ];

/// Internal property used to track whether the current query has pending results
/// (such as async KPIs being computed).
Property queryPending As %ZEN.Datatype.boolean(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = 0, Internal ];

/// If true, show status area along the bottom of the table.
Property showStatus As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// If true, show pivot cell count and total in status area along the bottom of the table.
Property showPivotStats As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// If true, show the query used to get results for this table.<br/>
/// This is a intended for use as a troubleshooting aid.
Property showQuery As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, user can drill down by double-clicking on row captions.
/// This is only enabled for queries automatically generated by the pivot table.
Property canDrillDown As %ZEN.Datatype.boolean(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = 1, Internal ];

/// This is used to define functions to apply to the entire row axis.
Property rowAxisOptions As pivotLevel;

/// This is used to define functions to apply to the entire column axis.
Property columnAxisOptions As pivotLevel;

/// This contains the definition of the row dimensions for this pivot table.
Property rowLevels As list Of pivotLevel(XMLNAME = "rowLevel", XMLPROJECTION = "ELEMENT");

/// This contains the definition of the column dimensions for this pivot table.
Property columnLevels As list Of pivotLevel(XMLNAME = "columnLevel", XMLPROJECTION = "ELEMENT");

/// This contains the definition of the filters for this pivot table.
Property filters As list Of pivotLevel(XMLNAME = "filter", XMLPROJECTION = "ELEMENT");

/// This contains an SQL restriction that should be applied to this pivot table.
Property sqlRestriction As %ZEN.Datatype.string(XMLNAME = "sqlRestriction", XMLPROJECTION = "ELEMENT");

/// Externally applied filter spec. This should contain a valid %FILTER clause.
/// If it starts with "%FILTER" then it is one or more %FILTER clauses.
Property contextFilterSpec As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

/// Externally applied COLUMNS spec. This should contain a valid MDX expression (without "ON COLUMNS").
Property overrideColumnSpec As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

/// Text value associated with overrideColumnSpec. Used as a label.
Property overrideColumnText As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

/// Externally applied ROWS spec. This should contain a valid MDX expression (without "ON ROWS").
Property overrideRowSpec As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

/// Text value associated with overrideRowSpec. Used as a label.
Property overrideRowText As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

/// This contains the default measure(s) (e.g., "[Measures].[Sales]") to show for this pivot table.
Property measures As list Of pivotLevel(XMLNAME = "measure", XMLPROJECTION = "ELEMENT");

/// When there are multiple measures in the measures list, speficies where to
/// place them: "rows", or "columns".
Property measureLocation As %ZEN.Datatype.string(VALUELIST = "rows,columns") [ InitialExpression = "columns" ];

/// This contains the current set of "drill into" levels for this pivot table.
Property drillLevels As list Of pivotLevel(XMLNAME = "drillLevel", XMLPROJECTION = "ELEMENT");

Property drillRowNumbers As list Of %ZEN.Datatype.string(XMLPROJECTION = "NONE");

/// This is the set of filters that describe the cell(s) used for the current listing for this pivot table.
Property listingFilters As list Of pivotLevel(XMLNAME = "listingFilter", XMLPROJECTION = "ELEMENT") [ Internal ];

/// This is the set of fields that describe the columnns used for the current custom listing for this pivot table.
Property listingFields As list Of pivotLevel(XMLNAME = "listingField", XMLPROJECTION = "ELEMENT") [ Internal ];

/// If true, user can select their own fields for listing.
Property canUseListingFields As %ZEN.Datatype.boolean(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = 0, Internal ];

/// Number of pivot result rows to show at one time.
Property pageSize As %ZEN.Datatype.integer [ InitialExpression = 100 ];

/// This is the number (1-based) of the "page" within the query
/// results that is currently displayed.
Property currPage As %ZEN.Datatype.integer [ InitialExpression = 1 ];

/// If not 0, then sort the results by the values within this column.
Property sortColumn As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// If column sorting is on, then this is the sort direction.
Property sortDir As %ZEN.Datatype.string(VALUELIST = "ASC,DESC") [ InitialExpression = "ASC" ];

/// This is the number (1-based) of the "page" within the listing that is currently displayed.
/// If this is set to -1, then the first page will be displayed AND the listing will be recomputed.
Property currListingPage As %ZEN.Datatype.integer [ InitialExpression = -1 ];

/// If not 0, then sort the listing table by the values within this column.
Property listingSortColumn As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// If listing column sorting is on, then this is the sort direction.
Property listingSortDir As %ZEN.Datatype.string(VALUELIST = "ASC,DESC") [ InitialExpression = "ASC" ];

/// If present, this is the number of rows returned by the current
/// query. This is calculated in both user query and
/// automatic query modes.<br/>
Property rowCount As %ZEN.Datatype.integer(XMLPROJECTION = "none", ZENSETTING = 0);

/// Maximum number of data rows emitted as JSON to drive charts.
/// If empty, the default value (2500) is used.
Property jsonRows As %ZEN.Datatype.integer [ InitialExpression = 2500 ];

/// If present, this is the total number of rows returned by the current listing.
Property listingRowCount As %ZEN.Datatype.integer(XMLPROJECTION = "none", ZENSETTING = 0);

/// If present, this is the number of columns returned by the current
/// query. This is calculated in both user query and
/// automatic query modes.<br/>
Property columnCount As %ZEN.Datatype.integer(XMLPROJECTION = "none", ZENSETTING = 0);

/// This contains any conditional formatting rules for the table.
Property formatRules As list Of pivotCondition(XMLNAME = "formatRule", XMLPROJECTION = "ELEMENT");

/// This contains any local calculated members for the table.
Property calculatedMembers As list Of calculatedMember(XMLNAME = "calculatedMember", XMLPROJECTION = "ELEMENT");

/// This specifies the current selected range of cells as a
/// comma-separated list of integers. The list is of the form:<br/>
/// startRow,startCol,endRow,endCol,allRows,allCols<br/>
/// All cells numbers are 1-based and represent the ordinal position of cells as they
/// are displayed and not their position within the underlying query
/// (e.g., when columns are sorted, these are still 1,2,3).<br/>
/// If allRows is 1, then all rows for indicated columns are selected.<br/>
/// If allCols is 1, then all columns for indicated rows are selected.<br/>
/// If the range is equal to "", then no cells are selected.
Property selectedRange As %ZEN.Datatype.csv;

/// Background color applied to the selected cell range.
Property selectedCellBackground As %ZEN.Datatype.style [ InitialExpression = "rgb(47,98,128)" ];

/// Color applied to the selected cell range.
Property selectedCellColor As %ZEN.Datatype.style [ InitialExpression = "white" ];

/// Optional style to apply to column headers.
Property columnHeaderStyle As %ZEN.Datatype.style;

/// Optional style to apply to row headers.
Property rowHeaderStyle As %ZEN.Datatype.style;

/// Optional style to apply to cells.
Property cellStyle As %ZEN.Datatype.style;

/// Optional style to apply to entire table
Property tableStyle As %ZEN.Datatype.style [ InitialExpression = "background-color:white" ];

/// If true, show zebra striping.
Property showZebra As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, show a caption above the row headers.
Property showRowCaption As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Holder for row caption text.
Property rowCaptionText As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENSETTING = 0) [ Internal ];

/// Optional style to apply to even rows in zebra stripe mode.
Property evenRowStyle As %ZEN.Datatype.style;

/// If set, this is the name of the color-scaling scheme to apply.
/// red-to-black,green-to-black,blue-to-black,salmon-to-black,purple-to-black,gray-to-black
/// or "custom:r1,g1,b1:r2,g2,b2".
Property colorScale As %ZEN.Datatype.string;

/// Special flag to indicate use of pivot within the Analyzer.
/// For now this turns on a background image.
Property analyzerMode As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Optional image to show in background of pivot table.
Property backgroundImage As %ZEN.Datatype.uri;

/// Opacity (0 to 1) of pivot table background image.
Property backgroundOpacity As %ZEN.Datatype.float [ InitialExpression = 0.12 ];

/// When set true, the current query is executed as a DRILLTHROUGH.<br/>
/// If the current data source is a KPI, then execute a listing provided by the KPI (if available).
Property isDrillThrough As %ZEN.Datatype.boolean(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = 0 ];

/// User-defined set of parameters. These values are passed on
/// to the user callback functions that provides the contents of
/// this table. Typically this is used to hold search parameters.
Property parameters As array Of %ZEN.Auxiliary.parameter(XMLKEYNAME = "paramName", XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

/// If set, then only one cell is displayed with this message text.
Property %message As %ZEN.Datatype.string(XMLPROJECTION = "none") [ Internal ];

/// If set this will contain the current message for display in the progress indicator.
Property progressMessage As %ZEN.Datatype.string(XMLPROJECTION = "none");

/// If true, then display row totals.
Property rowTotals As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];

/// If true, then display column totals.
Property columnTotals As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];

/// Indicate which aggregate to use for row totals: sum,min,max,count,avg,pct.
Property rowTotalAgg As %ZEN.Datatype.string(XMLPROJECTION = "none") [ InitialExpression = "sum", Internal ];

/// Indicate which aggregate to use for column totals: sum,min,max,count,avg,pct.
Property columnTotalAgg As %ZEN.Datatype.string(XMLPROJECTION = "none") [ InitialExpression = "sum", Internal ];

/// Indicate the source for row totals: "page" or "all".
Property rowTotalSource As %ZEN.Datatype.string(XMLPROJECTION = "none") [ InitialExpression = "page", Internal ];

/// Current DeepSee result set being processed.
Property %ResultSet As %DeepSee.ResultSet(XMLPROJECTION = "none") [ Internal ];

/// Current data controller used to get KPI data.
Property %KPIController As %ZEN.Auxiliary.dataController(XMLPROJECTION = "none") [ Internal ];

/// The client-side object graph referred to by this property contains the most recent
/// data for this pivot table.
Property data As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENSETTING = 0) [ Internal ];

/// oncellClick event handler:
/// This event handler is called by the pivot
/// when the user clicks the mouse on a cell within the pivot table.<br/>
/// The event handler is passed an argument, <var>pivot</var>,
/// that is <i>this</i> pivot table object.
Property oncellClick As %ZEN.Datatype.eventHandler;

/// oncellDblClick event handler:
/// This event handler is called by the pivot
/// when the user double clicks the mouse on a cell within the pivot table.<br/>
/// The event handler is passed an argument, <var>pivot</var>,
/// that is <i>this</i> pivot table object.
Property oncellDblClick As %ZEN.Datatype.eventHandler;

/// ondrill event handler:
/// This event handler is called by the pivot
/// whenever the drill down state of the pivot is changed.<br/>
/// The event handler is passed an argument, <var>pivot</var>,
/// that is <i>this</i> pivot table object.
Property ondrill As %ZEN.Datatype.eventHandler;

/// onlistingSelect event handler:
/// This event handler is called by the pivot
/// when the user selects or unselected an item within a pivot listing.<br/>
/// The event handler is passed an argument, <var>pivot</var>,
/// that is <i>this</i> pivot table object.
Property onlistingSelect As %ZEN.Datatype.eventHandler;

/// Internal flag. Set true when paging among query results.
Property isPaging As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];

/// If true, then automatically execute queries when this pivot is first displayed.
Property initialExecute As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// If true then automatically execute queries when filters, rows, or columns are changed.
Property autoExecute As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Initial value of previewMode setting for the Analyzer
Property previewMode As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0 ];

/// Allow the user to interact with the pivot even in preview mode.
Property allowPreviewInteraction As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 1 ];

/// The row limit used to truncate while in SAMPLE mode.
Property previewRowCount As %ZEN.Datatype.integer(XMLPROJECTION = "none") [ InitialExpression = 25 ];

/// This flag is set when the resultset has seen its rows truncated by a HEAD function.
Property rowsTruncated As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0 ];

/// If autoExecute is off, then this tracks that a refresh is needed.
Property changesPending As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0 ];

/// Internal property used to remember the set of selected row values.
Property selectedRowValues As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENSETTING = 0) [ Internal ];

/// Title to display when pivot is printed.
Property printTitle As %ZEN.Datatype.string(MAXLEN = 2000, XMLPROJECTION = "attribute");

/// Subtitle to display when pivot is printed.
Property printSubtitle As %ZEN.Datatype.string(MAXLEN = 2000, XMLPROJECTION = "attribute");

/// Orientation when pivot is printed: "portrait" or "landscape".
Property printOrientation As %ZEN.Datatype.string(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];

/// Display the subtitle when exporting to PDF
Property printSubtitleOn As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Display the user when exporting to PDF
Property showUser As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Page size when pivot is printed. This takes the form "8.5x11 in" (w x h).
Property printPageSize As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Page top margin when pivot is printed. This is in the same units as the page size.
Property printMarginTop As %ZEN.Datatype.float(XMLPROJECTION = "attribute");

/// Page left margin when pivot is printed. This is in the same units as the page size.
Property printMarginLeft As %ZEN.Datatype.float(XMLPROJECTION = "attribute");

/// Page right margin when pivot is printed. This is in the same units as the page size.
Property printMarginRight As %ZEN.Datatype.float(XMLPROJECTION = "attribute");

/// Page bottom margin when pivot is printed. This is in the same units as the page size.
Property printMarginBottom As %ZEN.Datatype.float(XMLPROJECTION = "attribute");

/// Width of row labels when the pivot is printed. This is in the same units as the page size.
Property printLabelWidth As %ZEN.Datatype.float(XMLPROJECTION = "attribute");

/// Width of data cells when the pivot is printed. This is in the same units as the page size.
Property printCellWidth As %ZEN.Datatype.float(XMLPROJECTION = "attribute");

/// Max rows exported to PDF
Property maxRows As %ZEN.Datatype.integer(XMLPROJECTION = "attribute");

/// Table borders
Property borderLeftCell As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

Property borderRightCell As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

Property borderTopCell As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

Property borderBottomCell As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

Property borderLeftCol As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

Property borderRightCol As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

Property borderTopCol As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

Property borderBottomCol As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

Property borderLeftRow As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

Property borderRightRow As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

Property borderTopRow As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

Property borderBottomRow As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

Property fontFamilyCell As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

Property fontSizeCell As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

Property fontFamilyCol As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

Property fontSizeCol As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

Property fontFamilyRow As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

Property fontSizeRow As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// showFilters - byTable, byTitle, off
Property showFilters As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// showListingFilters - on, off
Property showListingFilters As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// showDate - on, off
Property showDate As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// showZebraStripes - on, off
Property showZebraStripes As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Font fize used in listing
Property listingFontSize As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// filterTableStyle
Property filterTableStyle As %ZEN.Datatype.style(XMLPROJECTION = "attribute");

/// filterTableCaptionStyle;
Property filterTableCaptionStyle As %ZEN.Datatype.style(XMLPROJECTION = "attribute");

/// filterTableItemStyle;
Property filterTableItemStyle As %ZEN.Datatype.style(XMLPROJECTION = "attribute");

/// nowDisplayFormat
Property nowDisplayFormat As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// If true, then write out HTML for this pivot
/// otherwise only serve up JSON data (to drive other components).
Property showPivot As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Maximum number of rows to display for a CROSSJOIN.
Property crossJoinRowLimit As %ZEN.Datatype.integer [ InitialExpression = 2000 ];

/// Flag to indicate a HEAD function has been added to an axis by the Analyzer
Property headFunctionAdded As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

/// Run-time value of pivot variables used by this pivot.
Property pivotVariables As array Of %String(XMLPROJECTION = "NONE") [ Internal ];

/// Certain chart types may have different maximum sizes that make sense.
Property maxChartSize As %ZEN.Datatype.integer(XMLPROJECTION = "NONE") [ InitialExpression = 400 ];

/// Saves the session key of the latest executed query for access and clean-up of local cache
Property LastSessionKey As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// Saves the cube name of the latest executed query for clean-up of local cache
Property LastCube As %ZEN.Datatype.string;

/// Saves the query key of the latest executed query for clean-up of local cache
Property LastQueryKey As %ZEN.Datatype.string;

/// defines the style sheet used by this component.
XData Style
{
}

/// Execute a query after a short pause (to allow for window updates, etc.
ClientMethod deferredExecuteQuery(force) [ Internal, Language = javascript ]
{
}

/// Execute the current query for this pivot table and
/// update the display.<br/>
/// If <var>force</var> is true, then force the query
/// to be prepared.
ClientMethod executeQuery(force) [ Language = javascript ]
{
}

/// Execute a drill through for the current selected cell.
ClientMethod executeListing() [ Language = javascript ]
{
}

/// Cancel the current query for this pivot table and
/// update the display.
ClientMethod cancelQuery() [ Language = javascript ]
{
}

/// Swap the row and column definitions for this table and refresh it.
ClientMethod swapRowsAndColumns() [ Language = javascript ]
{
}

/// Return the range of selected cells or null if nothing selected.<br/>
/// The range is returned as an array of startRow,startCol,endRow,endCol,allRows,allCols.
ClientMethod getSelectedRange() [ Language = javascript ]
{
}

/// Reset this table to default settings.
ClientMethod resetTable() [ Language = javascript ]
{
}

/// Test if this pivot supports drill through.
ClientMethod canDrillThrough() [ Language = javascript ]
{
}

/// Toggle drill through state of this pivot.
/// If not in drill through mode, execute a drill through: show a listing for the current selected range of cells.
/// else restore normal view.
/// Return true if the operation took place.
ClientMethod drillThrough() [ Language = javascript ]
{
}

/// Set the drill through state of this pivot to <var>flag</var>.<br/>
/// If true, execute a drill through: show a listing for the current selected range of cells.
/// else restore normal view.
/// Return true if the operation took place.
ClientMethod setDrillThrough(flag, force) [ Language = javascript ]
{
}

/// Toggle display of the current query.
ClientMethod showMDXQuery() [ Language = javascript ]
{
}

/// Make sure any text within this list of pivot levels is localized!
Method %LocalizeElements(pCubeClass As %String, pList As %ListOfObjects) [ Internal ]
{
}

/// Updates the SessionKey, Cube, and QueryKey properties with the current session data, and deletes the previous session data from the cache
Method %UpdateLocalSession() As %Status
{
}

/// Deletes the previous session data from the local cache. Called from the frontend
Method DeleteLastResult() As %String [ ZenMethod ]
{
}

/// Delete the latest query from local cache in asynchronous mode before unloading
ClientMethod onunloadHandler() [ Language = javascript ]
{
}

/// Draw HTML for this component.
Method %DrawHTML()
{
}

/// Draw the tables that make up this component.<br/>
/// <var>pAxisCount</var> is the number of axes within the result.<br/>
/// <var>pColAxis</var> specifies which axis should be used for columns.<br/>
/// <var>pRowAxis</var> specifies which axis should be used for rows.<br/>
/// <var>pFilterInfo</var> is an array of filter information.<br/>
/// <var>pUseSort</var> indicates that row sorting is in play.
Method %DrawTable(pAxisCount As %Integer, pColAxis As %Integer, pRowAxis As %Integer, ByRef pFilterInfo, pUseSort As %Boolean = 0) As %Status
{
}

ClassMethod %GetMaxRowLevelDepth(pRow, pDepth As %Integer = 0) As %Integer
{
}

Method %CalculateSpans(ByRef pTopTableHTML, ByRef pSideTableHTML, Output pRowSpan, Output pColSpan, Output pFirstSpan = 0) As %Status
{
}

Method DivMerge(tNubTable = "", tTopTable = "", tSideTable = "", tDataTable = "", pNubTableHTML, pTopTableHTML, pSideTableHTML, pDataTableHTML)
{
}

Method %DrawNub(ByRef pNub, pRowSpan As %String, pColSpan As %String, pFirstSpan As %String) As %Status
{
}

Method %Emit(ByRef pTable, pTransform As %String = "", ByRef pIgnore = "", pRowSpan As %String, pColSpan As %String, pBorderWidth As %String = 1) As %Status
{
}

Method %MergeTables(ByRef pNubTableHTML As %String, ByRef pTopTableHTML As %String, ByRef pSideTableHTML As %String, ByRef pDataTableHTML As %String, ByRef pNubTableAttributes As %String, ByRef pTopTableAttributes As %String, ByRef pSideTableAttributes As %String, ByRef pDataTableAttributes As %String) As %Status
{
}

/// Draw table using KPI class as a source.
Method %DrawKPITable() As %Status
{
}

/// Return information on the set of columns to display for the current KPI.
/// Returns:<br/>
/// pColInfo(n) = property<br/>
/// pColInfo(n,"caption") = caption (if different)<br/>
/// This is a class method that is also called from Excel and PDF export.<br/>
/// If <var>pColumnList</var> is provided, it is a csv-list that specifies the columns
/// and column order from the KPI to display. Otherwise all columns are displayed in the order
/// defined by the KPI.
ClassMethod %GetKPIColumns(pController As %ZEN.Auxiliary.dataController, Output pColCount As %Integer, Output pColInfo, pColumnList As %String = "") As %Status [ Internal ]
{
}

/// Draw the contents of the status area.
/// <var>pMode</var> indicates whether this is a pivot status or a listing status.
Method %DrawStatusArea(pPageCount As %Integer, pMode As %String = "pivot", pTruncated As %Boolean = 0) As %Status [ Internal ]
{
}

/// Draw the table containing the data cells.<br/>
/// <var>pColRoot</var> is node number for top node along the column axis.<br/>
/// <var>pRowRoot</var> is node number for top node along the row axis.<br/>
/// <var>pStartRow</var> is the ordinal number of the first row to display.<br/>
/// <var>pEndRow</var> is the ordinal number of the last row to display.<br/>
Method %DrawDataTable(pAxisCount As %Integer, pColRoot As %Integer, pRowRoot As %Integer, pStartRow As %Integer, pEndRow As %Integer, pColumnTotals As %Boolean = 0, pRowTotals As %Boolean = 0, pUseSort As %Boolean = 0, pMaxCols As %Boolean = 1000, ByRef pHTML As %String, ByRef pHTMLAttributes As %String) As %Status
{
}

/// Draw a one-cell data table with the given message.
Method %DrawEmptyTable(pMessage As %String, ByRef pHTML As %String, ByRef pHTMLAttributes) As %Status
{
}

/// Find the number of displayed leaf nodes in the given axis.<br/>
/// <var>pAxisNo</var> is the axis number.<br/>
Method %GetAxisSize(pAxisNo As %Integer) As %Integer [ Internal ]
{
}

/// Compute information needed to draw the labels and cells of this table for the
/// given axis.<br/>
/// <var>pAxisNo</var> is the axis number.<br/>
/// <var>pSpan</var> indicates whether we should span parent labels.<br/>
/// <var>pStart</var> is the (ordinal) number of the first cell to show.<br/>
/// <var>pEnd</var> is the (ordinal) number of the end cell to show.<br/>
/// <var>pLevels</var> returns the number of levels within the axis.<br/>
/// <var>pItems</var> returns an array of items to plot.
/// This takes the form:<br/>
/// pItems(level,index) = $LB(nodeNo,colSpan,rowSpan,hasChildren,[itemNo(presorted #)])
/// (along the column axis, otherwise flip the row and col spans).<br/>
Method %GetAxisSpecs(pAxisNo As %Integer, pSpan As %Boolean, pStart As %Integer, pEnd As %Integer, Output pLevels As %Integer, Output pItems, pUseSort As %Boolean = 0) As %Status [ Internal ]
{
}

/// Get information for filters.<br/>
/// <var>pInfo</var> returns the list of filters in the first subscript:<br/>
/// pInfo(i) = $LB(idx,spec,value,text,isMsr,isMember)<br/>
/// If the <var>pReturnMembers</var> flag is set, the list of members for the filter will
/// be returned in:<br>
/// pInfo(i,j) = $LB(value,name,memberId,memberKey) for the j-th member of the i-th filter.<br/>
/// There may be advanced filters:<br/>
/// pAdvancedFilters(i) = $LB(idx,spec,text)<br/>
Method %GetFilterInfo(Output pInfo, Output pAdvancedFilters, pReturnMembers = 0) As %Status [ Internal ]
{
}

/// Create the DeepSee ResultSet needed to get data for this table.<br/>
/// Does not execute the query.<br/>
/// <var>pSC</var> is a status code.<br/>
/// <var>pParms</var> is an array of input parameter values.<br/>
/// <var>pFilterInfo</var> is an array of filter details.<br/>
/// <var>pAdvancedFilters</var> is an array of advanced filter details.<br/>
/// <var>pAxes</var> is an array of top nodes for each axis.<br/>
/// <var>pDataReady</var> is true if the query results are in the cache.<br/>
/// <var>pQueryText</var> is the text of the query.<br/>
/// <var>pComplexQuery</var> is true if this is a "complex" query that should have its axes executed first.<br/>
Method %CreateResultSet(Output pSC As %Status, ByRef pParms, ByRef pFilterInfo, ByRef pAdvancedFilters, Output pQueryText As %String, Output pAxes, Output pDataReady As %Boolean, Output pComplexQuery As %Boolean, pExecuteBaseQuery As %Boolean = 0) As %DeepSee.ResultSet
{
}

/// This callback is invoked when the pivot table is about to
/// create a result set.<br/>
/// If the callback creates a <class>%DeepSee.ResultSet</class> object and returns it
/// via <var>pRS</var>, then the pivot table will use this result set to display results.
Method %OnCreateResultSet(Output pRS As %DeepSee.ResultSet, ByRef pParms) As %Status
{
}

/// Return the total number of measures and how many are computed measures.
Method %CountMeasures(Output pMeasures As %Integer, Output pComputedMeasures As %Integer) [ Internal ]
{
}

Method %CollectMeasures(pQueryKey As %String, Output pCollectedMeasures As %String, pListingFilters As %Boolean) As %Status
{
}

/// Return true if the Measures setting stipulates the measures should be hidden from view.
Method %HideMeasures() As %Boolean
{
}

/// Construct the MDX WHERE clause for the pivot table.
Method %GetWhereClause(ByRef pFilterInfo) As %String [ Internal ]
{
}

/// Convert an array of pivot levels into an MDX axis clause
/// that will serve as part of the query executed for the pivot.
Method %GetAxisClauseFromLevels(pLevels As %AbstractList, pShowEmpty As %Boolean = 0, Output pComplexQuery As %Boolean, pDrillLevel As %Integer = "", pMaxItems As %Integer = "", pShowAll As %Boolean = 0) As %String [ Internal ]
{
}

/// Convert array of levels (from <var>pStart</var>) into a parse tree
/// that can be handed to a query.
Method ProcessLevels(pList As %AbstractList, pStart As %Integer, ByRef pTree, pParent As %Integer) [ Internal ]
{
}

/// Mouse down within a cell.
/// Try to prevent text select when selecting multiple cells.
ClientMethod cellMouseDownHandler(evt) [ Language = javascript ]
{
}

/// Notification that a cell is clicked.<br/>
/// <var>row</var> and <var>col</var> give the ordinal (logical) position of the cell.
ClientMethod cellClickHandler(evt, row, col) [ Language = javascript ]
{
}

/// Notification that a cell is double-clicked.<br/>
/// <var>row</var> and <var>col</var> give the ordinal position of the cell.
ClientMethod cellDblClickHandler(evt, row, col) [ Language = javascript ]
{
}

/// Notification that a column header is clicked.<br/>
ClientMethod columnClickHandler(evt, col) [ Language = javascript ]
{
}

/// Notification that a column header is double-clicked.<br/>
ClientMethod columnDblClickHandler(evt, col) [ Language = javascript ]
{
}

/// Notification that a listing header is double-clicked.<br/>
ClientMethod listingHeaderDblClickHandler(evt, col) [ Language = javascript ]
{
}

/// Notification that a row header is clicked.<br/>
ClientMethod rowClickHandler(evt, row) [ Language = javascript ]
{
}

/// Notification that a row header is double clicked.<br/>
ClientMethod rowDblClickHandler(evt, level, row) [ Language = javascript ]
{
}

/// Set the selected cell range. Addresses are 1-based.<br/>
ClientMethod selectCellRange(startRow, startCol, endRow, endCol, allRows, allCols, selectOnly) [ Language = javascript ]
{
}

/// For multi-page display, calculate the number of pages.
ClientMethod getPageCount() [ Language = javascript ]
{
}

/// For multi-page listing display, calculate the number of pages.
ClientMethod getListingPageCount() [ Language = javascript ]
{
}

/// For multi-page display, go to previous page, if possible.
ClientMethod previousPage() [ Language = javascript ]
{
}

/// For multi-page display, go to next page, if possible.
ClientMethod nextPage() [ Language = javascript ]
{
}

/// For multi-page display, go to the first page.
ClientMethod firstPage() [ Language = javascript ]
{
}

/// For multi-page display, go to the last page.
ClientMethod lastPage() [ Language = javascript ]
{
}

/// For multi-page display, go to specified page (1 is first page), if possible.
ClientMethod gotoPage(page) [ Language = javascript ]
{
}

/// Set the value of a named property.<br>
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Built-in drag handler for pivot table component.
/// Let the user drag the selected node.
ClientMethod dragStartHandler(dragData) [ Language = javascript ]
{
}

/// Used to provide label related info when required.
ClientMethod callGetItemSpec(labelInfo, rowItem, columnItem) [ Language = javascript ]
{
}

/// Used to provide label related info when required.
ClientMethod callFormatValue(value, formattedValue, rowItem, columnItem) [ Language = javascript ]
{
}

ClientMethod removeMeasureLabels(values, measureCaption) [ Language = javascript ]
{
}

/// Drop handler. This is called when an item is dropped onto the table.
ClientMethod dropStartHandler(dragData) [ Language = javascript ]
{
}

/// This is called when a drag operation started within this component is completed.<br/>
ClientMethod dragFinishHandler(dragData) [ Language = javascript ]
{
}

/// Hide the message box.
ClientMethod hideMessage() [ Language = javascript ]
{
}

/// Show (or hide) the "computing..." message.
ClientMethod showPendingMsg(flag, msg) [ Language = javascript ]
{
}

/// Display the message box. This message will store the incoming <var>msg</var> for use as the message default for subsequent calls.</br>
/// If a controller with its own showMessage is present for this pivotTable, dispatch the message display to that method.
ClientMethod showMessage(msg, pct, listing) [ Language = javascript ]
{
}

/// Mouse down handler for nodes.
ClientMethod itemMouseDown(evt, idx) [ Internal, Language = javascript ]
{
}

/// Mouse up handler for nodes.
ClientMethod itemMouseUp(evt) [ Internal, Language = javascript ]
{
}

ClientMethod absoluteAdjustLayout() [ Language = javascript ]
{
}

ClientMethod adjustCellSize(cellid, height, width, top, left, offsetHeight, offsetWidth) [ Language = javascript ]
{
}

ClientMethod singleTableAdjustLayout() [ Language = javascript ]
{
}

/// Adjust size and position of the layout divs that contain the table
/// as well as the cells and headers in the table.
ClientMethod adjustTableLayout() [ Language = javascript ]
{
}

/// Compute and return the size of the given html.
ClientMethod computeDivSize(theDiv, isWebKit) [ Internal, Language = javascript ]
{
}

/// Work-around for ie8!
ClientMethod ieLayout() [ Language = javascript ]
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

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// This client method, if present, is fired when the object is updated from the server.
/// This is called *after* changes have been synched.
ClientMethod onupdateHandler() [ Language = javascript ]
{
}

/// Start the timer used to update during query calculation.
ClientMethod startQueryTimer(needsRefresh) [ Language = javascript ]
{
}

/// Stop the query timer.
ClientMethod stopQueryTimer() [ Language = javascript ]
{
}

/// Internal method.<br>
/// Timer event handler used by the query timer bar.
ClientMethod queryTimerHandler() [ Internal, Language = javascript ]
{
}

/// Return the caption associate with given cube element.
ClassMethod GetItemCaption(pCubeName As %String, pSpec As %String) As %String [ ZenMethod ]
{
}

ClassMethod FormatValue(pCubeName As %String, pQueryKey As %String, pValue As %String, pFormattedValue As %ZEN.proxyObject, pRowNo As %Integer, pColNo As %Integer) As %Boolean [ ZenMethod ]
{
}

/// Get the tuple spec for the given item within the query result and place it into the proxy object.
/// <var>pAxisName</var> is "row" or "col".<br/>
/// Return true, if ok.
ClassMethod GetItemSpec(pSpec As %ZEN.proxyObject, pCubeName As %String, pQueryKey As %String, pSortDir As %String, pSortColumn As %String, pAxisName As %String, pItemNo As %Integer, pItemNoSorted As %Boolean = 0) As %Boolean [ ZenMethod ]
{
}

/// Return the filter spec for the given cell range.
ClientMethod getFilterForCells(r1, c1, r2, c2, allRows, allCols) [ Language = javascript ]
{
}

/// Get the slicer spec for the given cell within the query result and place it into the proxy object.
/// Return true, if ok.
ClassMethod GetSlicerSpecForCells(pSpec As %ZEN.proxyObject, pCubeName As %String, pQueryKey As %String, pStartRow As %Integer, pStartCol As %Integer, pEndRow As %Integer = "", pEndCol As %Integer = "", pAllRows As %Boolean = 0, pAllCols As %Boolean = 0, pSortCol As %Integer = 0, pSortDir As %String = "ASC") As %Boolean [ ZenMethod ]
{
}

/// Check on the status of the given query.
/// Return true, if ok.
ClassMethod GetQueryStatus(pObject As %ZEN.proxyObject, pCubeName As %String, pQueryKey As %String, pKPI As %String = "") As %Boolean [ ZenMethod ]
{
}

/// Get the MDX text for the current query.
ClassMethod GetQueryText(pCubeName As %String, pQueryKey As %String, pEncrypt As %Boolean = 0) As %String [ ZenMethod ]
{
}

Method SetCurrentQueryText(pWhich As %String = "current", pMDX As %String) As %Status [ ZenMethod ]
{
}

Method GetCurrentQueryText(pWhich As %String) As %String [ ZenMethod ]
{
}

/// Cancel the query specified by <var>pCubeName</var> and  <var>pQueryKey</var>.
/// Return true, if ok.
ClassMethod KillQuery(pCubeName As %String, pQueryKey As %String, pNonce As %String) As %Boolean [ ZenMethod ]
{
}

ClientMethod showIKnowMeasureValue(cubeName, measure, objId) [ Language = javascript ]
{
}

/// Execute the listing for a drillthrough query and save it to a cache global.<br/>
/// If <var>pSQLRS</var> is provided, use it.
Method %MaterializeListing(pRS As %DeepSee.ResultSet, pSQLRS As %SQL.StatementResult = "") As %Status [ Internal ]
{
}

/// Draw the listing table for a drillthrough query.<br/>
/// Assume the listing has been materialized to a listing global.
Method %DrawListing() As %Status [ Internal ]
{
}

/// Show execution plan for the query
Method %ShowPlan(pRS As %DeepSee.ResultSet) As %Status
{
}

/// Show one item in a query plan.
Method %ShowPlanItem(ByRef pPlan, pNodeNo As %Integer, pLevel As %Integer = 0) As %Status
{
}

/// Click on an item label within the filter dropdown.
ClientMethod filterLabelClick(evt, filterValue) [ Language = javascript ]
{
}

/// Push the current state of the pivot onto the "history" stack.
ClientMethod pushState() [ Internal, Language = javascript ]
{
}

/// Pop the current state of the pivot from the "history" stack.
ClientMethod popState() [ Internal, Language = javascript ]
{
}

/// Copy the (most of the) current state of another pivot into this one.
/// Used by linked pivots.
ClientMethod copyState(master) [ Internal, Language = javascript ]
{
}

/// Indicate if there are any formatting rules in play.
ClientMethod hasFormatRules() [ Language = javascript ]
{
}

/// Indicate if we can go back to a prior state.
ClientMethod canGoBack() [ Language = javascript ]
{
}

/// Go back to the previous state.
ClientMethod goBack(notify) [ Language = javascript ]
{
}

/// Indicate if we can go forward to a visited state.
ClientMethod canGoForward() [ Language = javascript ]
{
}

/// Go forward to the next state (if there is one).
ClientMethod goForward() [ Language = javascript ]
{
}

/// Clear the (shadow) modified bit for the data property.
Method %ClearDataModified() [ CodeMode = objectgenerator, Internal ]
{
}

/// Set the (shadow) modified bit for the data property.
Method %SetDataModified() [ CodeMode = objectgenerator, Internal ]
{
}

/// Render the JSON content of the target object
/// along with the other properties of the provider.
Method %OnDrawObjectProperties() [ Internal ]
{
}

/// Render the JSON content of the target object
/// along with the other properties of the provider.
Method %OnObjectSynch() As %Status [ Internal ]
{
}

/// Draw JSON output for the current query results.
Method %DrawJSON() As %Status [ Internal ]
{
}

/// Draw JSON output for a geolisting.
Method %OutputJSONForGeoListing(pRS As %DeepSee.ResultSet, pSQLRS As %SQL.StatementResult = "") As %Status [ Internal ]
{
}

/// Draw JSON output for the current KPI class.
Method %OutputJSONForKPI() As %Status [ Internal ]
{
}

ClientMethod getContent() [ Final, Internal, Language = javascript ]
{
}

/// Send an event to all listeners (dataViews) connected to this dataController.
/// <var>reason</var> is the name of the event.<br>
/// <var>source</var>, if not null, if the dataView that raised the event.<br>
/// <var>data1</var>,<var>data2</var>, and <var>data3</var> contain event-specific data passed along with the event.<br>
ClientMethod sendEventToViews(reason, source, data1, data2, data3) [ Language = javascript ]
{
}

/// Internal method.<br>
/// Establish a connection between this pivotTable and a chart component
ClientMethod register(component) [ Final, Internal, Language = javascript ]
{
}

/// Internal method.<br>
/// Break the a connection between this pivotTable and a chart component
ClientMethod unregister(component) [ Final, Internal, Language = javascript ]
{
}

/// Send notification to listeners that the data associated with this pivotTable has changed.<br/>
ClientMethod raiseDataChange() [ Final, Language = javascript ]
{
}

/// Return number of dimensions in this pivot.
ClientMethod getDimensions() [ Internal, Language = javascript ]
{
}

/// Return the number of items in the specified dimension
/// (<var>dim</var> is 1,2, or 3).
ClientMethod getDimSize(dim) [ Final, Language = javascript ]
{
}

/// Special method: return if the given dimension has hierarchical groupings
/// (to indicate that a chart should display them).
ClientMethod getDimGrouping(dim) [ Final, Internal, Language = javascript ]
{
}

/// This is a specialized variant of <method>getData</method> that
/// return the data in this controller as an array of arrays (used by charts).
ClientMethod getDataAsArrays() [ Final, Language = javascript ]
{
}

/// Get the label at position n (0-based) in the given
/// dimension (1,2, or 3).
ClientMethod getLabel(n, dim, noformat) [ Final, Language = javascript ]
{
}

/// Resolve the caption for a given axis item.
/// (This is used to get logical values for time axis members).
ClientMethod computeCaption(item, noformat) [ Final, Internal, Language = javascript ]
{
}

/// Convert a $H to yyyy-mm-dd date.
ClientMethod dateFromHorolog(val) [ Language = javascript ]
{
}

/// Return a name for the given dimension (1,2, or 3).
/// This provides the axis label for a chart.
ClientMethod getDimName(dim) [ Final, Language = javascript ]
{
}

/// Given a 0-based index, return the corresponding property name.
ClientMethod getPropertyName(n) [ Language = javascript ]
{
}

/// Return a label for the values returned by the data source.
/// This provides the axis label for a chart.
ClientMethod getValueName() [ Final, Language = javascript ]
{
}

/// Return a title to display for this data source.
/// This provides the title for a chart.
ClientMethod getDataSourceCaption(which, title) [ Final, Language = javascript ]
{
}

ClientMethod getDataByName(property, series) [ Language = javascript ]
{
}

/// dataSet API
/// Return the data contained in the specified location.
/// Location is 0-based;
ClientMethod getData(d1, d2, d3) [ Language = javascript ]
{
}

/// Return information on current filters.<br/>
/// <var>fnames</var> is an array in which the filter names will be placed.<br/>
/// <var>fvalues</var> is an array in which the filter values will be placed.<br/>
/// <var>flabels</var> is an array in which the filter labels will be placed.<br/>
ClientMethod getFilterInfo(fnames, fvalues, flabels) [ Final, Language = javascript ]
{
}

/// Parse an MDX clause representing a collection of cell addresses into a $C(10)-delimited list that can be pssed back to the client. This is designed to parse contextual filters.
ClassMethod ParseMDXExpression(pExpression, pCubeName) As %String [ ZenMethod ]
{
}

/// Return information on current pivot variables.<br/>
/// <var>pnames</var> is an array in which the variable names will be placed.<br/>
/// <var>pvalues</var> is an array in which the variable values will be placed.<br/>
ClientMethod getPivotVariableInfo(pnames, pvalues) [ Final, Language = javascript ]
{
}

/// Return names and values of current pivot variables.<br/>
/// <var>pnames</var> is an array in which the variable names will be placed.<br/>
/// <var>pvalues</var> is an array in which the variable values will be placed.<br/>
ClientMethod getPivotVariablesValues(pnames, pvalues) [ Final, Language = javascript ]
{
}

/// Associate a controller component with this pivotTable.
/// This is called by the controller component.
ClientMethod addController(ctrl) [ Internal, Language = javascript ]
{
}

/// Remove the controller component associated with this pivotTable.
/// This is called by the controller component.
ClientMethod removeController() [ Internal, Language = javascript ]
{
}

/// Update the controller component associated with this pivotTable, if any.
/// This is called internally when the state of the pivot table changes.
ClientMethod updateController() [ Internal, Language = javascript ]
{
}

/// Update the toolbar on the controller component associated with this pivotTable, if any.
/// This is called internally when the state of the pivot table changes.
ClientMethod updateToolbar() [ Internal, Language = javascript ]
{
}

Method %OnNew(initvalue As %RawString) As %Status [ Private, ProcedureBlock = 1 ]
{
}

/// Return current drill level for this pivot.
ClientMethod getDrillLevel() [ Language = javascript ]
{
}

/// Go to the given drill level.
ClientMethod gotoDrillLevel(idx) [ Language = javascript ]
{
}

/// Remove a drill level. The input parameter <var>idx</var> is the 0-based index of the level to remove.
ClientMethod removeDrillLevel(idx, evt) [ Language = javascript ]
{
}

/// Clear all current drill levels and reset the table back to its resting state.
ClientMethod removeAllDrillLevels() [ Language = javascript ]
{
}

/// Set the name of the listing (and listing type) to show for this pivot.
ClientMethod setListing(listing, type) [ Language = javascript ]
{
}

/// Click on all check box (in detail listing).
ClientMethod allClick(evt) [ Language = javascript ]
{
}

/// Click on checkbox.
ClientMethod cbClick(evt, currCb) [ Language = javascript ]
{
}

/// Click on all check box (in pivot).
ClientMethod allClickPivot(evt) [ Language = javascript ]
{
}

/// Click on checkbox in pivot.
ClientMethod cbClickPivot(evt, currCb) [ Language = javascript ]
{
}

/// Return an array of the values of the selected items in the pivot table.
/// For listing mode, this is the set of ids for the selected rows.
/// For pivot mode, this is the values of the value column for each selected row.
ClientMethod getSelectedItems() [ Language = javascript ]
{
}

/// Notification that new data is available.
ClientMethod newDataHandler() [ Language = javascript ]
{
}

/// Compute row and columns totals, as needed.
ClientMethod computeTotals() [ Language = javascript ]
{
}

/// Parse a CSS style directive and remove any "summary:val" directives within it.
ClassMethod %GetSummaryFromCSS(pStyle As %String, Output pAgg As %String) As %String
{
}

/// Return an array of column descriptors for use by a dataGrid connected to this pivot.
ClientMethod getColumnDescriptors() [ Language = javascript ]
{
}

/// Convert an axis group to descriptors.
ClientMethod processAxisColumns(list, groups, tuples) [ Internal, Language = javascript ]
{
}

/// Return an array of row descriptors for use by a dataGrid connected to this pivot.
ClientMethod getRowDescriptors() [ Language = javascript ]
{
}

/// Convert an axis group to descriptors.
ClientMethod processAxisRows(list, groups, tuples) [ Internal, Language = javascript ]
{
}

/// Return total number of pages to support dataGrid paging.
ClientMethod getPageSize() [ Internal, Language = javascript ]
{
}

/// Return total number of records to support dataGrid paging.
ClientMethod getRecordCount() [ Internal, Language = javascript ]
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

/// Return an array of row captions (shown above headers).
ClientMethod getRowCaptions() [ Internal, Language = javascript ]
{
}

/// Notification that a listing header is double-clicked.<br/>
ClientMethod showAllRows() [ Language = javascript ]
{
}

/// Return the ordinal number of the dimension supplying property names for this controller.
ClientMethod getPropertyDim() [ Language = javascript ]
{
}

/// Retrieves the meta data about the pivot variable and can convert the logical value
/// display value.
ClassMethod GetPivotVariableData(pCubeName, pVariableName, pValue = "") As %ZEN.proxyObject [ ZenMethod ]
{
}

/// Build the current MDX query text from the current contents of this component
Method SynthesizeMDX(Output pSC As %Status, ByRef pRS As %DeepSee.ResultSet, ByRef pParms, ByRef pFilterInfo, ByRef pAdvancedFilters, Output pQueryText As %String, Output pAxes, Output pDataReady As %Boolean, Output pComplexQuery As %Boolean, pExecuteBaseQuery As %Boolean = 0, pShowAll As %Boolean = 0) As %String [ ZenMethod ]
{
}

/// Adds a coverpane to the pivot in the DOM. This is used to disable the pivot interaction.
ClientMethod addPivotCoverPane(parentDiv) [ Internal, Language = javascript ]
{
}

/// This prevents a user from interacting with the pivot by using the cover pane.
ClientMethod setPivotDisabled(setDisabled) [ Language = javascript ]
{
}

/// This entry point triggers an execution and printing of the current table in SVG format.
ClientMethod exportToPDF(parms) [ Language = javascript ]
{
}

/// This method is designed to be used as a callback from the DeepSeeDataController. It takes a resultset from the supplied
/// datacontroller and uses it to print to PDF. This method expects the printing parameters needed by the svgImageProvider
/// are supplied in an object <var>dc.parms</var>.
ClientMethod callbackExportRStoPDF(dc) [ Language = javascript ]
{
}

/// This method is designed to be used as a callback from the DeepSeeDataController. It reports the number of seconds
/// the client has been waiting for the DeepSeeResultSet data to be returned from the server.
ClientMethod callbackRSPending(dc) [ Language = javascript ]
{
}

}
