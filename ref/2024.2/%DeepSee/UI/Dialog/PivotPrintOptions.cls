/// This dialog lets the user change the print properties for a DeepSee pivot table.
Class %DeepSee.UI.Dialog.PivotPrintOptions Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 0;

/// "table", "chart", or "dashboard".
Property mode As %ZEN.Datatype.string(ZENURL = "MODE") [ InitialExpression = "table" ];

Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");

Property units As %ZEN.Datatype.string;

Property columnCount As %ZEN.Datatype.integer(ZENURL = "COLUMNCOUNT");

Property rowTotals As %ZEN.Datatype.boolean(ZENURL = "ROWTOTALS");

Property columnTotals As %ZEN.Datatype.boolean(ZENURL = "COLUMNTOTALS");

Property rowHeaderStyle As %ZEN.Datatype.string(ZENURL = "ROWSTYLE");

Property columnHeaderStyle As %ZEN.Datatype.string(ZENURL = "COLUMNSTYLE");

Property dataCellStyle As %ZEN.Datatype.string(ZENURL = "CELLSTYLE");

Property cellWidth As %ZEN.Datatype.string(ZENURL = "CELLWIDTH");

Property cellHeight As %ZEN.Datatype.string(ZENURL = "CELLHEIGHT");

Property showZebra As %ZEN.Datatype.boolean(ZENURL = "ZEBRA");

Property showRowCaption As %ZEN.Datatype.boolean(ZENURL = "ROWCAPTION");

/// Title to display when pivot is printed.
Property printTitle As %ZEN.Datatype.string(MAXLEN = 2000, ZENURL = "TITLE");

/// Subtitle to display when pivot is printed.
Property printSubtitle As %ZEN.Datatype.string(MAXLEN = 2000, ZENURL = "SUBTITLE");

/// Display Subtitle when pivot is printed.
Property printSubtitleOn As %ZEN.Datatype.string(ZENURL = "SUBTITLEON") [ InitialExpression = "on" ];

/// Display User when pivot is printed.
Property showUser As %ZEN.Datatype.string(ZENURL = "SHOWUSER") [ InitialExpression = "off" ];

/// Page size when pivot is printed. This takes the form "8.5x11 in" (w x h).
Property printPageSize As %ZEN.Datatype.string(ZENURL = "PAGESIZE");

/// Orientation when pivot is printed.
Property printOrientation As %ZEN.Datatype.string(ZENURL = "ORIENTATION") [ InitialExpression = "portrait" ];

/// Page top margin when pivot is printed. This is in the same units as the page size.
Property printMarginTop As %ZEN.Datatype.float(ZENURL = "MARGINTOP");

/// Page left margin when pivot is printed. This is in the same units as the page size.
Property printMarginLeft As %ZEN.Datatype.float(ZENURL = "MARGINLEFT");

/// Page right margin when pivot is printed. This is in the same units as the page size.
Property printMarginRight As %ZEN.Datatype.float(ZENURL = "MARGINRIGHT");

/// Page bottom margin when pivot is printed. This is in the same units as the page size.
Property printMarginBottom As %ZEN.Datatype.float(ZENURL = "MARGINBOTTOM");

/// Width of row labels when the pivot is printed. This is in the same units as the page size.
Property printLabelWidth As %ZEN.Datatype.float(ZENURL = "PRINTLABELWIDTH");

/// Width of data cells when the pivot is printed. This is in the same units as the page size.
Property printCellWidth As %ZEN.Datatype.float(ZENURL = "PRINTCELLWIDTH");

/// Page top margin when pivot is printed. This is in the same units as the page size.
Property chartMarginTop As %ZEN.Datatype.float(ZENURL = "CMARGINTOP");

/// Page left margin when pivot is printed. This is in the same units as the page size.
Property chartMarginLeft As %ZEN.Datatype.float(ZENURL = "CMARGINLEFT");

/// Page right margin when pivot is printed. This is in the same units as the page size.
Property chartMarginRight As %ZEN.Datatype.float(ZENURL = "CMARGINRIGHT");

/// Page bottom margin when pivot is printed. This is in the same units as the page size.
Property chartMarginBottom As %ZEN.Datatype.float(ZENURL = "CMARGINBOTTOM");

/// max rows to export to PDF
Property maxRows As %ZEN.Datatype.integer(ZENURL = "MAXROWS");

/// Table borders
Property borderLeftCell As %ZEN.Datatype.string(ZENURL = "BORDERLEFTCELL");

Property borderRightCell As %ZEN.Datatype.string(ZENURL = "BORDERRIGHTCELL");

Property borderTopCell As %ZEN.Datatype.string(ZENURL = "BORDERTOPCELL");

Property borderBottomCell As %ZEN.Datatype.string(ZENURL = "BORDERBOTTOMCELL");

Property fontFamilyCell As %ZEN.Datatype.string(ZENURL = "FONTFAMILYCELL");

Property fontSizeCell As %ZEN.Datatype.string(ZENURL = "FONTSIZECELL");

Property borderLeftCol As %ZEN.Datatype.string(ZENURL = "BORDERLEFTCOL");

Property borderRightCol As %ZEN.Datatype.string(ZENURL = "BORDERRIGHTCOL");

Property borderTopCol As %ZEN.Datatype.string(ZENURL = "BORDERTOPCOL");

Property borderBottomCol As %ZEN.Datatype.string(ZENURL = "BORDERBOTTOMCOL");

Property fontFamilyCol As %ZEN.Datatype.string(ZENURL = "FONTFAMILYCOL");

Property fontSizeCol As %ZEN.Datatype.string(ZENURL = "FONTSIZECOL");

Property borderLeftRow As %ZEN.Datatype.string(ZENURL = "BORDERLEFTROW");

Property borderRightRow As %ZEN.Datatype.string(ZENURL = "BORDERRIGHTROW");

Property borderTopRow As %ZEN.Datatype.string(ZENURL = "BORDERTOPROW");

Property borderBottomRow As %ZEN.Datatype.string(ZENURL = "BORDERBOTTOMROW");

Property fontFamilyRow As %ZEN.Datatype.string(ZENURL = "FONTFAMILYROW");

Property fontSizeRow As %ZEN.Datatype.string(ZENURL = "FONTSIZEROW");

/// showFilters
Property showFilters As %ZEN.Datatype.string(ZENURL = "SHOWFILTERS") [ InitialExpression = "byTable" ];

/// showListingFilters
Property showListingFilters As %ZEN.Datatype.string(ZENURL = "SHOWLISTINGFILTERS") [ InitialExpression = "off" ];

/// showDate
Property showDate As %ZEN.Datatype.string(ZENURL = "SHOWDATE") [ InitialExpression = "off" ];

/// showZebraStripes
Property showZebraStripes As %ZEN.Datatype.string(ZENURL = "SHOWZEBRASTRIPES") [ InitialExpression = "on" ];

/// Font size for listings
Property listingFontSize As %ZEN.Datatype.string(ZENURL = "LISTINGFONTSIZE") [ InitialExpression = "6pt" ];

/// filterRowCount - used in preview
Property filterRowCount As %ZEN.Datatype.integer(ZENURL = "FILTERROWCOUNT");

/// listingFilterRowCount - used in preview
Property listingFilterRowCount As %ZEN.Datatype.integer(ZENURL = "LISTINGFILTERROWCOUNT");

/// filterTableStyle
Property filterTableStyle As %ZEN.Datatype.style(ZENURL = "FILTERTABLESTYLE") [ InitialExpression = "border:1pt solid gray;" ];

/// filterTableCaptionStyle;
Property filterTableCaptionStyle As %ZEN.Datatype.style(ZENURL = "FILTERTABLECAPTIONSTYLE") [ InitialExpression = "border:none;color:white;background-color:#6f6fff;text-align:left;font-weight:bold;font-size:6pt;" ];

/// filterTableItemStyle;
Property filterTableItemStyle As %ZEN.Datatype.style(ZENURL = "FILTERTABLEITEMSTYLE") [ InitialExpression = "border:none;text-align:left;font-weight:normal;font-size:6pt;" ];

/// nowDisplay
Property nowDisplayFormat As %ZEN.Datatype.string(ZENURL = "NOWDISPLAYFORMAT");

/// List of page size values.
Property pageSizeValues As %ZEN.Datatype.csv;

/// List of page size names.
Property pageSizeNames As %ZEN.Datatype.csv;

/// id of current selected item.
Property selectedItem As %ZEN.Datatype.string;

XData Style
{
}

/// Contents of the dialog body.
XData dialogBody [ XMLNamespace = "http://www.intersystems.com/zen" ]
{
}

/// Get the (localized) title string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetTitle() As %String
{
}

/// Get the (localized) subtitle string for the dialog.
/// This should be implemented in a subclass.
Method %OnGetSubtitle() As %String
{
}

ClientMethod getDialogValue() [ Language = javascript ]
{
}

/// This callback, if defined, is called when the user presses the OK or Apply action buttons.
/// If this returns false, then the action is cancelled.<br>
ClientMethod ondialogFinish(action) As %Boolean [ Language = javascript ]
{
}

/// This callback, if defined, is called when the dialog page is loaded.
ClientMethod ondialogStart() [ Language = javascript ]
{
}

/// Reset styles.
ClientMethod clearStyles() [ Language = javascript ]
{
}

/// Key press handler.
ClientMethod keyPress() [ Language = javascript ]
{
}

/// Change in page size.
ClientMethod changePageSize() [ Language = javascript ]
{
}

ClientMethod getPreviewImage() [ Language = javascript ]
{
}

/// Draw contents of preview component.
ClientMethod updatePreview() [ Language = javascript ]
{
}

/// Get the HTML for a list of print items.
ClientMethod getHTMLForItems(dir, parentKey, items, availSize, scale, pos) [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

/// Adjust sizes components on the page.
ClientMethod adjustSize() [ Language = javascript ]
{
}

/// Return an object describing what to display for this level.
ClientMethod getContentForLevel(level, key, value) [ Language = javascript ]
{
}

/// Item selected in navigator.
ClientMethod selectItem(key, value, which) [ Language = javascript ]
{
}

/// Button clicked in navigator header.
ClientMethod headerButtonClick(key) [ Language = javascript ]
{
}

/// Button clicked in navigator close button.
ClientMethod closeButtonClick(key) [ Language = javascript ]
{
}

/// This is called when a data value within the navigator is changed.
/// <var>key</var> is the key for the item and <var>value</var> is the new value.
/// <var>final</var> is true if this is the final value (controls such as a slider
/// may provide intermediate values as well while the user is actively dragging it).
ClientMethod dataChange(key, value, final) [ Language = javascript ]
{
}

/// Re-indent list of values.
ClientMethod dataIndent(key, swap, final) [ Language = javascript ]
{
}

/// Rearrange of list of values.
ClientMethod dataArrange(key, swap, final) [ Language = javascript ]
{
}

/// Get the client-side print definition.
ClientMethod getPrintDef() [ Language = javascript ]
{
}

/// Get Print Definition data for JSON provider.
Method GetPrintDefinition(ByRef pParms, Output pObject As %RegisteredObject) As %Status
{
}

/// Compute and return the size of the given html.
ClientMethod computeDivSize(html) [ Internal, Language = javascript ]
{
}

/// Construct a single list of content items from a graph of items.
ClientMethod getLayoutTree(list, level, parentKey) [ Language = javascript ]
{
}

/// Find the item within the print definition graph with the given key.
/// The key takes the form: "n1,n2,n3..."
ClientMethod getLayoutItem(key) [ Language = javascript ]
{
}

/// Create a copy of a tree (printDef).
ClientMethod cloneTree(tree) [ Language = javascript ]
{
}

/// Move the element selector.
ClientMethod moveSelector(targetDiv) [ Internal, Language = javascript ]
{
}

/// Select an element within the preview.
ClientMethod selectElement(evt, which) [ Language = javascript ]
{
}

/// Add a new item to the print definition.
ClientMethod addItem(type) [ Language = javascript ]
{
}

/// Round off a numer to the given number of places.
ClientMethod roundOff(value, places) [ Language = javascript ]
{
}

}
