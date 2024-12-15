/// This dialog lets the user change the properties of a DeepSee pivot table.
Class %DeepSee.UI.Dialog.PivotOptions Extends %DeepSee.UI.Dialog.standardDialog [ System = 4 ]
{

Parameter APPLYBUTTON = 1;

Property cubeName As %ZEN.Datatype.string(ZENURL = "CUBE");

Property listing As %ZEN.Datatype.string(ZENURL = "LISTING");

Property listingRows As %ZEN.Datatype.integer(ZENURL = "LISTINGROWS");

Property rowTotals As %ZEN.Datatype.boolean(ZENURL = "ROWTOTALS");

Property columnTotals As %ZEN.Datatype.boolean(ZENURL = "COLUMNTOTALS");

Property rowTotalAgg As %ZEN.Datatype.string(ZENURL = "ROWTOTALAGG");

Property columnTotalAgg As %ZEN.Datatype.string(ZENURL = "COLUMNTOTALAGG");

Property rowTotalSource As %ZEN.Datatype.string(ZENURL = "ROWTOTALSOURCE");

Property rowLabelSpan As %ZEN.Datatype.boolean(ZENURL = "ROWSPAN");

Property columnLabelSpan As %ZEN.Datatype.boolean(ZENURL = "COLUMNSPAN");

Property showEmptyRows As %ZEN.Datatype.boolean(ZENURL = "ROWEMPTY");

Property showEmptyColumns As %ZEN.Datatype.boolean(ZENURL = "COLUMNEMPTY");

Property rowHeaderStyle As %ZEN.Datatype.string(ZENURL = "ROWSTYLE");

Property columnHeaderStyle As %ZEN.Datatype.string(ZENURL = "COLUMNSTYLE");

Property dataCellStyle As %ZEN.Datatype.string(ZENURL = "CELLSTYLE");

Property cellWidth As %ZEN.Datatype.string(ZENURL = "CELLWIDTH");

Property cellHeight As %ZEN.Datatype.string(ZENURL = "CELLHEIGHT");

Property showZebra As %ZEN.Datatype.boolean(ZENURL = "ZEBRA");

Property showRowCaption As %ZEN.Datatype.boolean(ZENURL = "ROWCAPTION");

Property sqlRestriction As %ZEN.Datatype.string(ZENURL = "SQLRESTRICT");

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

/// Reset styles for this pivot.
ClientMethod clearStyles() [ Language = javascript ]
{
}

ClientMethod keyPress() [ Language = javascript ]
{
}

/// Key press handler (ie workaround).
/// Change to row agg.
ClientMethod rowAggChange() [ Language = javascript ]
{
}

/// Change to col agg.
ClientMethod colAggChange() [ Language = javascript ]
{
}

/// Draw contents of preview component.
ClientMethod updatePreview() [ Language = javascript ]
{
}

Method %OnAfterCreatePage() As %Status
{
}

}
