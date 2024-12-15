/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Simple HTML-based meter that displays a table.
Class %CSP.Util.HTMLTableMeter Extends %CSP.Util.HTMLMeter [ ServerOnly = 1, System = 4 ]
{

/// Number of rows in table
Property Rows As %Integer(MINVAL = 1, XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = 1 ];

/// Names of columns (csv string)
Property ColumnNames As %String(MAXLEN = 200, XMLPROJECTION = "ATTRIBUTE");

/// Draw the style section of this HTML meter
ClassMethod OnHTMLStyle()
{
}

/// Draw the script section of this HTML meter
ClassMethod OnHTMLScript()
{
}

/// Draw the body of this HTML meter
Method OnHTMLBody()
{
}

/// Called by Dashboard class to generate code to
/// create an instace of this object.
/// The object instance is called <var>tMeter</var>.
Method GenerateCode(pCode As %CharacterStream, pLevel As %Integer = 1) As %Status
{
}

}
