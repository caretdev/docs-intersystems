/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
Class %CSP.Util.HTMLGroup Extends %CSP.Util.HTMLMeter [ ServerOnly = 1, System = 4 ]
{

/// Meters belonging to this group
Property Meters As list Of HTMLMeter(XMLNAME = "Meters", XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE");

/// Direction in which to layout meters within this group.
Property Orientation As %String(MAXLEN = 10, VALUELIST = ",horizontal,vertical", XMLPROJECTION = "attribute") [ InitialExpression = "horizontal" ];

/// Style to use for Group
Property Style As %String(MAXLEN = 200, XMLPROJECTION = "attribute");

/// Insert a meter into this group
Method InsertMeter(pMeter As HTMLMeter)
{
}

/// Draw the style section of this HTML meter
ClassMethod OnHTMLStyle()
{
}

Method OnHTMLBody()
{
}

Method GenerateCode(pCode As %CharacterStream, pLevel As %Integer = 1) As %Status
{
}

}
