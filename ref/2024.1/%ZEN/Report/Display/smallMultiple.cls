///
Class %ZEN.Report.Display.smallMultiple Extends %ZEN.Report.Display.childrenNode [ Deprecated, System = 4 ]
{

Parameter XMLNAME = "small-multiple";

/// num-rows: number of rows in table holding small multiple
Property numrows As %ZEN.Datatype.integer(XMLNAME = "num-rows");

/// num-cols: number of columns in table holding small multiple
Property numcols As %ZEN.Datatype.integer(XMLNAME = "num-cols");

/// table-class: table CSS class or attribute-set
Property tableClass As %ZEN.Datatype.cssClass(XMLNAME = "table-class");

/// table-style: table CSS style
Property tableStyle As %ZEN.Datatype.style(MAXLEN = 2048, XMLNAME = "table-style");

/// table-width: table width
Property tableWidth As %ZEN.Datatype.string(XMLNAME = "table-width");

/// row-class: row CSS class or attribute-set
Property rowClass As %ZEN.Datatype.cssClass(XMLNAME = "row-class");

/// row-style: row CSS style
Property rowStyle As %ZEN.Datatype.style(XMLNAME = "row-style");

/// row-width: row width
Property rowWidth As %ZEN.Datatype.string(XMLNAME = "row-width");

/// col-class: column CSS class or attribute set
Property colClass As %ZEN.Datatype.cssClass(XMLNAME = "col-class");

/// col-style: column CSS style
Property colStyle As %ZEN.Datatype.style(XMLNAME = "col-style");

/// col-width: column width
Property colWidth As %ZEN.Datatype.string(XMLNAME = "col-width");

/// name: name of small-multiple defaults to "small-multiple".  Must be specified to have more than one on a page.
Property name As %ZEN.Datatype.string(XMLNAME = "name") [ InitialExpression = "small-multiple" ];

/// fill-order is used to define how the small multiple is filled by the temporary tree defined by the group which is a collection of
/// zr:small-multiple XML elements; horizontal means that as elements are encountered, they should fill a small mutiple across rows before
/// moving down columns; vertical means the first column on the small multiple should be filled before moving on to the next. The default is horizontal.
Property fillOrder As %ZEN.Datatype.string(VALUELIST = ",horizontal,vertical", XMLNAME = "fill-order") [ InitialExpression = "horizontal" ];

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, incell As %Boolean = 0) As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean = 0) As %Status
{
}

}
