/// This persistent class represents a saved DeepSee pivot table.<br/>
Class %DeepSee.Dashboard.Pivot Extends %DeepSee.UserLibrary.FolderItem [ System = 4 ]
{

Parameter XMLNAME = "pivot";

Parameter ITEMTYPE = "pivot";

Parameter ICON = "deepsee/ds2_layers2_44.png";

Parameter LARGEICON = "deepsee/ds2_layers2_44.png";

/// Default value of public property for the class.
Parameter PUBLIC = 0;

/// If defined and <property>dataSource</property> is set to "manual", then
/// this is the MDX statement used to provide the contents of the pivot table.
Property mdx As %ZEN.Datatype.string(MAXLEN = 32000, XMLPROJECTION = "attribute");

/// This is the width (in pixels) used for all cells within the table.
Property cellWidth As %ZEN.Datatype.integer(XMLPROJECTION = "attribute") [ InitialExpression = 120 ];

/// Optional style to apply to column headers.
Property columnHeaderStyle As %ZEN.Datatype.style(XMLPROJECTION = "attribute");

/// Optional style to apply to row headers.
Property rowHeaderStyle As %ZEN.Datatype.style(XMLPROJECTION = "attribute");

/// Optional style to apply to cells.
Property cellStyle As %ZEN.Datatype.style(XMLPROJECTION = "attribute");

/// This specifies how parent row labels with multiple child labels are displayed.<br/>
/// If true, then one parent label is displayed for each set of children.
/// If false, then the parent row label is repeated for each child.
Property rowLabelSpan As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];

/// This specifies how parent column labels with multiple child labels are displayed.<br/>
/// If true, then one parent label is displayed for each set of children.
/// If false, then the parent row label is repeated for each child.
Property columnLabelSpan As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];

/// This is the height (in pixels) used for all cells within the table.
/// The default is 22.
Property cellHeight As %ZEN.Datatype.integer(XMLPROJECTION = "attribute") [ InitialExpression = 22 ];

/// If true, display rows containing only empty values.<br/>
/// If <var>mdx</var> is specified, this is ignored.
Property showEmptyRows As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// If true, display columns containing only empty values.<br/>
/// If <var>mdx</var> is specified, this is ignored.
Property showEmptyColumns As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Name of the cube that will provide data for this pivot table.
Property cubeName As %ZEN.Datatype.className(XMLPROJECTION = "attribute");

/// Caption to display. If not specified, the caption for the cube will be used.
Property caption As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Name of listing to use for detail listings. If not specified, the default listing for the cube will be used.
Property listing As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Maximum number of rows to show in a listing.
/// If not specified, the default value used.
Property listingRows As %ZEN.Datatype.integer(XMLPROJECTION = "attribute");

/// If true, show status area along the bottom of the table.
Property showStatus As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];

/// This is used to define functions to apply to the entire row axis.
Property rowAxisOptions As PivotLevel;

/// This is used to define functions to apply to the entire column axis.
Property columnAxisOptions As PivotLevel;

/// This contains the definition of the row dimensions for this pivot table.
Property rowLevels As list Of PivotLevel(XMLNAME = "rowLevel", XMLPROJECTION = "ELEMENT");

/// This contains the definition of the column dimensions for this pivot table.
Property columnLevels As list Of PivotLevel(XMLNAME = "columnLevel", XMLPROJECTION = "ELEMENT");

/// This contains the definition of the filters for this pivot table.
Property filters As list Of PivotLevel(XMLNAME = "filter", XMLPROJECTION = "ELEMENT");

/// This contains an SQL restriction that should be applied to this pivot table.
Property sqlRestriction As %ZEN.Datatype.string(XMLNAME = "sqlRestriction", XMLPROJECTION = "ELEMENT");

/// This contains the definition of the listing filters for this pivot table.
Property listingFilters As list Of PivotLevel(XMLNAME = "listingFilter", XMLPROJECTION = "ELEMENT");

/// This contains the default measure(s) (e.g., "[Measures].[Sales]") to show for this pivot table.
Property measures As list Of PivotLevel(XMLNAME = "measure", XMLPROJECTION = "ELEMENT");

Property canDrillDown As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];

/// This contains the drillLevels for this pivot table.
Property drillLevels As list Of PivotLevel(XMLNAME = "drillLevel", XMLPROJECTION = "ELEMENT");

/// This contains the definition of the listing fields for this pivot table.
Property listingFields As list Of PivotLevel(XMLNAME = "listingField", XMLPROJECTION = "ELEMENT");

/// This contains the formatting rule for this pivot table.
Property formatRules As list Of PivotCondition(XMLNAME = "formatRule", XMLPROJECTION = "ELEMENT");

/// Number of result rows to show at one time.
Property pageSize As %ZEN.Datatype.integer(XMLPROJECTION = "attribute") [ InitialExpression = 100 ];

/// If set, this is the name of the color-scaling scheme to apply.
/// red-to-black,green-to-black,blue-to-black,salmon-to-black,purple-to-black,gray-to-black
/// or "custom:r1,g1,b1:r2,g2,b2".
Property colorScale As %ZEN.Datatype.string;

/// If true, then display row totals.
Property rowTotals As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// If true, then display column totals.
Property columnTotals As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Aggregate for row totals.
Property rowTotalAgg As %ZEN.Datatype.string(XMLPROJECTION = "attribute") [ InitialExpression = "sum" ];

/// Aggregate for column totals.
Property columnTotalAgg As %ZEN.Datatype.string(XMLPROJECTION = "attribute") [ InitialExpression = "sum" ];

/// Where row totals come from.
Property rowTotalSource As %ZEN.Datatype.string(XMLPROJECTION = "attribute") [ InitialExpression = "page" ];

/// This contains the (local) calculated memmers for this pivot table.
Property calculatedMembers As list Of CalculatedMember(XMLNAME = "calculatedMember", XMLPROJECTION = "ELEMENT");

/// If true, then display zebra striping.
Property showZebra As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// If true, then display row captions.
Property showRowCaption As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];

/// Title to display when pivot is printed.
Property printTitle As %ZEN.Datatype.string(MAXLEN = 2000, XMLPROJECTION = "attribute");

/// Subtitle to display when pivot is printed.
Property printSubtitle As %ZEN.Datatype.string(MAXLEN = 2000, XMLPROJECTION = "attribute");

/// Display subtitle when exporting to PDF
Property printSubtitleOn As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Display the user when exporting to PDF
Property showUser As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Page size when pivot is printed. This takes the form "8.5x11 in" (w x h).
Property printPageSize As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Orientation when pivot is printed.
Property printOrientation As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

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

/// pivotTable autoExecute flag.
Property autoExecute As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Save of previewMode setting. The Analyzer will transfer this value to the previewMode property,
/// widgets will not.
Property previewMode As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// pivotTable manualMode (dataSource) flag.
Property manualMode As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// pivotTable manualMode query.
Property userMDX As %ZEN.Datatype.string(MAXLEN = 5000);

/// Page top margin when chart is printed. This is in the same units as the page size.
Property chartMarginTop As %ZEN.Datatype.float(XMLPROJECTION = "attribute");

/// Page left margin when chart is printed. This is in the same units as the page size.
Property chartMarginLeft As %ZEN.Datatype.float(XMLPROJECTION = "attribute");

/// Page right margin when chart is printed. This is in the same units as the page size.
Property chartMarginRight As %ZEN.Datatype.float(XMLPROJECTION = "attribute");

/// Page bottom margin when chart is printed. This is in the same units as the page size.
Property chartMarginBottom As %ZEN.Datatype.float(XMLPROJECTION = "attribute");

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

/// Table styles
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

/// Font size for listings
Property listingFontSize As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// showZebraStripes - on, off
Property showZebraStripes As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// filterTableStyle
Property filterTableStyle As %ZEN.Datatype.style(XMLPROJECTION = "attribute");

/// filterTableCaptionStyle;
Property filterTableCaptionStyle As %ZEN.Datatype.style(XMLPROJECTION = "attribute");

/// filterTableItemStyle;
Property filterTableItemStyle As %ZEN.Datatype.style(XMLPROJECTION = "attribute");

/// nowDisplayFormat
Property nowDisplayFormat As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// measureLocation for pivot.
Property measureLocation As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// hide measure captions or not for pivot.
Property hideMeasures As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Optional image to show in background of pivot table.
Property backgroundImage As %ZEN.Datatype.uri;

/// Opacity (0 to 1) of pivot table background image.
Property backgroundOpacity As %ZEN.Datatype.float [ InitialExpression = 0.12 ];

/// Copy the contents of this pivot definition to pivot table <var>pPivot</var>.
Method %CopyToComponent(pPivot As %DeepSee.Component.pivotTable) As %Status [ Internal ]
{
}

/// Set the contents of this pivot definition from pivot table <var>pPivot</var>.
Method %CopyFromComponent(pPivot As %DeepSee.Component.pivotTable) As %Status [ Internal ]
{
}

/// Copy the contents of this pivot definition to an Dao.
Method %CopyToDao(Output pPivotJSON As %DynamicObject) As %Status
{
}

/// Return a list of all other folder items (including cubes or kpis) that this item depends upon.
Method %GetDependencies(pList As %String) As %Status
{
}

/// Return the cube name that provides data for this pivot.
Method %GetCubeName() As %String
{
}

/// Return the URL for this item.
Method %GetURL() As %String
{
}

/// Return the localized type name for this item.
Method %GetTypeName() As %String
{
}

}
