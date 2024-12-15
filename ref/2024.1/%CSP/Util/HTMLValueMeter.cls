/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Simple HTML-based meter that displays a value.
Class %CSP.Util.HTMLValueMeter Extends %CSP.Util.HTMLMeter [ ServerOnly = 1, System = 4 ]
{

/// Allows override of text alignment for value.
Property Align As %String(MAXLEN = 20, XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "right" ];

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
