/// This tag renders a linebreak onto the page.
Class %ZEN.Report.Display.line Extends (childrenNode, tableOutput) [ Deprecated, Inheritance = right, System = 4 ]
{

Property field As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property group As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property removeEmpty As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

/// If a horizontal rule is being drawn, this specifies the thickness of the rule.
Property thickness As %ZEN.Datatype.length [ InitialExpression = "1px" ];

/// Possible values are "empty", "solid", and "dashed".  An pattern of "empty" specifies
/// a linebreak. The "solid" and "dashed" options also result in a line break, but also
/// add a horizontal rule of the given pattern.
Property pattern As %ZEN.Datatype.string(VALUELIST = ",empty,solid,dashed");

/// If a horizontal rule is being drawn, this specifies the color of the rule.
Property color As %ZEN.Datatype.color;

/// If a horizontal rule is being drawn, this specifies the length of the rule.
Property length As %ZEN.Datatype.length;

/// Possible values are "left", "right", and "center". If a horizontal rule is
/// being drawn, this specifies the alignment of the rule within the page.
Property align As %ZEN.Datatype.align [ InitialExpression = "left" ];

/// Specifies the number of linebreaks to draw. This is exactly the same as repeating
/// the &lt;line .../&gt; tag.
Property count As %ZEN.Datatype.integer [ InitialExpression = 1 ];

/// Specifies the line-height styling property for the line.
Property lineHeight As %ZEN.Datatype.length [ InitialExpression = "-1" ];

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

}
