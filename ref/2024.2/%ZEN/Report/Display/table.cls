/// This class defines how tables are displayed within a generated
/// ZEN report stylesheet.
Class %ZEN.Report.Display.table Extends (childrenNode, tableOutput) [ Deprecated, Inheritance = right, System = 4 ]
{

/// Defines the orientation of the table. Acceptable values are "row" and "col."  If
/// orient is "row," each child tag of table will be placed in a new row.  Similarly,
/// if orient is "col" each child tag will be placed in a new column.
Property orient As %ZEN.Datatype.string(VALUELIST = ",row,col") [ InitialExpression = "col" ];

/// Specifies a group of data for the table to display. See the &lt;group&gt; class for more
/// information on displaying groups. In this case, each record contained within the group will
/// appear as a new row/column of the table.
Property group As %ZEN.Datatype.string;

/// Specifies sql for the table to display.  In this case, each record in the sql result set will appear as a new row/column of the table.
Property sql As %ZEN.Datatype.sql;

/// Specifies query for the table to display.  In this case, each record in the sql result set will appear as a new row/column of the table.<br>
/// queryName specifies the query in queryClass.
Property queryName As %ZEN.Datatype.classMember;

/// Specifies class for query that the table will display.  In this case, each record in the sql result set will appear as a new row/column of the table.<br>
/// queryClass is the class containing the query specified by queryName.
Property queryClass As %ZEN.Datatype.className;

/// Specifies callback method which returns ResultSe
Property onCreateResultSet As %ZEN.Datatype.string;

/// Specifies %SELECTMODE of sql or query. 0=Logical, 1=ODBC, 2=Display.
Property selectmode As %ZEN.Datatype.integer(VALUELIST = ",0,1,2");

/// Specifies call back method to get data for table, method must fill in two dimensional array where rows are first index and columns are second index.<p>
/// When retrieving data, only works with fieldNum in item.  Cannot use fieldname.
Property ongetData As %ZEN.Datatype.string;

/// This property specifies the background color of the alternate rows (2, 4, 6, ...).
/// This is only possible when <property>orient</property>="col" and <property>group</property>
/// is defined.  Currently only works with <property>orient</property>="col".
Property altcolor As %ZEN.Datatype.color;

/// Possible values are "auto" and "fixed."<br>
/// Currently, Apache's FOP rendering engine only supports "fixed."
Property layout As %ZEN.Datatype.string(VALUELIST = ",none,fixed,auto") [ InitialExpression = "fixed" ];

/// Specifies the alignment of the table within the page or its current container
/// (table cell, etc.)
Property align As %ZEN.Datatype.align;

/// If orient is row and removeEmpty is 1 then empty rows are removed from the table display
Property removeEmpty As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

Property field As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property foStyle As %ZEN.Datatype.string;

Property foHeaderStyle As %ZEN.Datatype.string;

Property defaultWidth As %ZEN.Datatype.string;

Property foBlockStyle As %ZEN.Datatype.string;

/// comma separated list of xpaths by which the table will be sorted
Property orderby As %ZEN.Datatype.string;

/// specify type of data used in table sort orderby - text, number or qname
Property dataType As %ZEN.Datatype.string(VALUELIST = ",text,number,qname", XMLNAME = "data-type") [ InitialExpression = "text" ];

/// xpath by which the group will be group-by
Property groupby As %ZEN.Datatype.string;

/// xpath by which the group will be group-starting-with
Property groupstartingwith As %ZEN.Datatype.string;

Property crosstab As %ZEN.Datatype.boolean;

Property oldSummary As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// if suppressFoTableColumn is true then don't generate fo:table-column
Property suppressFoTableColumn As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// if staticTable is set we draw table as is specified by <thead> <tbody> <th> <td> elements etc.
Property staticTable As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Boolean value used to trigger "keep-together" logic within the
/// <fo:table-row> element to not allow a row to split across a page
Property rowAcrossPages As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

Property preserveLineFeed As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// writing-mode XML attribute.  It has the following possible values.  Note that not all XSL-FO renderers will support all possible values. <br>
/// lr-tb Text are written left-to-right and top-to-bottom (normal "alphabetic" text) <br>
/// rl-tb Text are written right-to-left and top-to-bottom (Arabic and Hebrew text) <br>
/// tb-rl Text are written top-to-bottom and right-to-left (Chinese and Japanese text) <br>
/// lr Same as lr-tb <br>
/// rl Same as rl-tb <br>
/// tb Same as tb-rl <br>
/// inherit <br>
Property writingMode As %ZEN.Datatype.string(VALUELIST = ",lr-tb,rl-tb,tb-rl,lr,rl,tb,inherit", XMLNAME = "writing-mode");

/// Set the linefeed-treatment (a property defined by XSL-FO standard)
Property linefeedTreatment As %ZEN.Datatype.string(VALUELIST = ",ignore,preserve,treat-as-space,treat-as-zero-width-space", XMLNAME = "linefeed-treatment");

/// User-defined list of query parameters. These are used to supply
/// parameter values for the sql,queryName, or onCreateResultSet if they are used by this table.
Property parameters As list Of %ZEN.Report.Display.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

Property excelSheetName As %ZEN.Datatype.caption [ InitialExpression = "sheet" ];

Property excelGroupName As %ZEN.Datatype.caption [ InitialExpression = "group" ];

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean = 0) As %Status
{
}

/// This method outputs the stylesheet that converts the input xml to the xml with Excel annotations
/// report, table and item should override this method.  Nested tables not supported.
Method %DrawToAnnotatedXML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream) As %Status
{
}

Method %DisplayTableByColsFO(ByRef context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status
{
}

Method %DisplayTableByRowsFO(ByRef context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

Method %DisplayRowCellsFO(ByRef context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean, tableSection As %String) As %Status
{
}

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status
{
}

Method %DisplayTableByRows(ByRef context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status
{
}

Method %DisplayTableByCols(ByRef context As %String, XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status
{
}

Method containsHeader() As %Boolean
{
}

Method containsFooter() As %Boolean
{
}

Method canDisplay(node As %RegisteredObject) As %Boolean [ Private ]
{
}

/// Note: <var>colType</var> is either "header", "body", or "footer"
/// used only in tables by row
Method getColumnWidth(colType As %String) As %String
{
}

Method childHasWidth() As %String
{
}

Method DisplayFOChildrenByCols(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, pLevel As %Integer) As %Status
{
}

Method DisplayFOChildrenByRows(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, pLevel As %Integer, containsHeader, containsFooter, IsSQL As %Boolean, tableSection As %String)
{
}

Method DisplayHTMLChildrenByRows(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, pLevel As %Integer, IsSQL As %Boolean) As %Status
{
}

Method DisplayHTMLChildrenByCols(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, pLevel As %Integer)
{
}

Method UseXSLT()
{
}

Method UseSQL()
{
}

Method UseCallBack()
{
}

Method GetResultSet(ByRef context, ByRef tLevel, ByRef orderby, ByRef top, ByRef runonce, ByRef tUpperCase) As %Status [ Internal ]
{
}

/// This internal method converts the parameter list for this group
/// into a run-time expression used to execute the query.
/// If <var>pArray</var> is defined, then it the expression will fill in
/// elements of an array named <var>pArray</var>.
Method %NormalizeParamList(pParameters As %ListOfObjects, pLevel As %Integer, setBreaks As %Boolean, pArray As %String = "", ByRef Count) As %String [ Internal ]
{
}

ClassMethod XpathWidthExpression(width As %String)
{
}

}
