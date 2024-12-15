/// This class represents a DeepSee Worksheet within a DeepSee folder.<br/>
/// This class also provides the APIs for working with DeepSee "worksheets".
/// A worksheet can be used in several ways:<br/>
/// 1) You can use a worksheet to define a specialized KPI containing user-entered data that drives other dashboard widgets.<br/>
/// 2) You can use a worksheet to feed values into other DeepSee components, such as pivot tables.<br/>
/// 3) You can use a worksheet to enter and display a grid of values.
/// <br/>
Class %DeepSee.UserLibrary.Worksheet Extends %DeepSee.UserLibrary.FolderItem [ System = 4 ]
{

Parameter XMLNAME = "worksheet";

/// This is the extension returned by this type from the Finder.
Parameter ITEMTYPE = "worksheet";

Parameter ICON = "deepsee/ds2_list_44.png";

Parameter LARGEICON = "deepsee/ds2_list_44.png";

/// Default format to apply to cells in this worksheet.<br/>
Property format As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Additional style to apply to cells in this worksheet.<br/>
Property style As %ZEN.Datatype.style(XMLPROJECTION = "attribute");

/// Additional style to apply to column headers in this grid.<br/>
Property columnHeaderStyle As %ZEN.Datatype.style(XMLPROJECTION = "attribute");

/// Additional style to apply to row headers in this grid.<br/>
Property rowHeaderStyle As %ZEN.Datatype.style(XMLPROJECTION = "attribute");

/// Specify whether cell borders should be "all" (the default) or "none".<br/>
Property borders As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Specify whether zebra striping should be applied to the grid.
Property showZebra As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute");

/// Specifies whether row labels should be displayed.
Property showRowLabels As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];

/// Specifies whether column labels should be displayed.
Property showColumnLabels As %ZEN.Datatype.boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];

/// This contains the definition of the row headers for this worksheet.
Property rowHeaders As list Of WorksheetAxis(XMLNAME = "rowHeader", XMLPROJECTION = "ELEMENT");

/// This contains the definition of the column headers for this worksheet.
Property columnHeaders As list Of WorksheetAxis(XMLNAME = "columnHeader", XMLPROJECTION = "ELEMENT");

/// This contains the definition of (overridden) cells for this worksheet.
Property cells As list Of WorksheetCell(XMLNAME = "cellDef", XMLPROJECTION = "ELEMENT");

/// Data mode for the worksheet: "dataSet" or "dataSource".
Property gridMode As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Name of data connector class used by the grid (in "dataSource" mode).
Property dataConnector As %ZEN.Datatype.string(XMLPROJECTION = "attribute");

/// Page size used by the grid (in "dataSource" mode).
Property pageSize As %ZEN.Datatype.integer(XMLPROJECTION = "attribute");

/// Default column width.
Property columnWidth As %ZEN.Datatype.integer;

/// This holds the definition of the cells within this worksheet.<br/>
/// %cells(r,c) = value
Property %cells As %String(XMLPROJECTION = "none") [ Internal, MultiDimensional, Transient ];

/// This holds the values of the cells within this worksheet after any calculations have been resolved.<br/>
/// %values(r,c) = value
Property %values As %String(XMLPROJECTION = "none") [ Internal, MultiDimensional, Transient ];

/// This is used to hold cell values when they are exported to XML.
Property xmlCells As list Of %String(XMLNAME = "cell", XMLPROJECTION = "ELEMENT") [ Transient ];

/// This is used to hold cell (resolved) values when they are exported to XML.
Property xmlValues As list Of %String(XMLNAME = "value", XMLPROJECTION = "ELEMENT") [ Transient ];

/// Index of row names used during calculation.
Property %rowIndex As %Integer(XMLPROJECTION = "none") [ Internal, MultiDimensional, Transient ];

/// Index of column names used during calculation.
Property %columnIndex As %Integer(XMLPROJECTION = "none") [ Internal, MultiDimensional, Transient ];

/// Current row during calculation.
Property %currRow As %Integer(XMLPROJECTION = "none") [ Internal, Transient ];

/// Current column during calculation.
Property %currColumn As %Integer(XMLPROJECTION = "none") [ Internal, Transient ];

/// Array of values from external sources (used during calculation).
Property %externalValues As %String(XMLPROJECTION = "none") [ Internal, MultiDimensional, Transient ];

/// Array of external sources (used during calculation).
Property %externalRefs As %String(XMLPROJECTION = "none") [ Internal, MultiDimensional, Transient ];

/// Return the URL for this item.
Method %GetURL() As %String
{
}

/// Return the localized type name for this item.
Method %GetTypeName() As %String
{
}

Method %OnAfterSave(insert As %Boolean) As %Status [ Private, ServerOnly = 1 ]
{
}

ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Private, ServerOnly = 1 ]
{
}

Method %OnOpen() As %Status [ Private, ServerOnly = 1 ]
{
}

/// Notification that this item has just been imported.
Method %OnAfterImport() As %Status
{
}

/// Notification before xml export.
Method XMLBeforeExport()
{
}

/// Copy the contents of this definition to pivot table <var>pPivot</var>.
Method %CopyToComponent(pPivot As %DeepSee.Component.pivotTable) As %Status [ Internal ]
{
}

/// Set the contents of this definition from pivot table <var>pPivot</var>.
Method %CopyFromComponent(pPivot As %DeepSee.Component.pivotTable) As %Status [ Internal ]
{
}

/// Resolve values of any formulas within this worksheet.
/// This takes the raw values in %cells, executes formulas, and puts the results into %values.
Method %Calculate() As %Status [ Internal ]
{
}

/// Evaluate formula for one cell.<br/>
/// Return false if it has unresolved dependencies.
Method %EvaluateCell(pValue As %String, pRow As %Integer, pCol As %Integer, Output pResult As %String, Output pSC As %Status) As %Boolean [ Internal ]
{
}

/// Formula function: Lookup the value of the given identifier.
Method %Lookup(pIdent As %String) As %String
{
}

/// Lookup the value of a complete cell reference: [source].[col].[row]
/// <var>pContext</var> tracks all the data sources that have been referenced.
ClassMethod %LookupReference(ByRef pContext, pIdent As %String) As %String [ Internal ]
{
}

}
