/// The controller class has the <xsl:if> logic that allows any node or tableOuput
/// to be removed from rendering
Class %ZEN.Report.Display.controller Extends common [ Deprecated, System = 4 ]
{

Property ifxpath As %ZEN.Datatype.string;

Property ifexpression As %ZEN.Datatype.string;

Property unlessexpression As %ZEN.Datatype.string;

Property includeColUnlessExpression As %ZEN.Datatype.string;

Property includeColIfExpression As %ZEN.Datatype.string;

Property includeColUnlessXPath As %ZEN.Datatype.string;

Property includeColIfXPath As %ZEN.Datatype.string;

Property applyLevel As %ZEN.Datatype.integer(XMLPROJECTION = "NONE");

Method %BeginFOIf(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status [ Internal ]
{
}

Method %EndFOIf(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status [ Internal ]
{
}

Method %BeginHTMLIf(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status [ Internal ]
{
}

Method %EndHTMLIf(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status [ Internal ]
{
}

Method IfIncludeCol(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status [ Internal ]
{
}

Method EndIfIncludeCol(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status [ Internal ]
{
}

Method IfCommon(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status [ Internal ]
{
}

Method EndIfCommon(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status [ Internal ]
{
}

Method %BeginDrawHtml(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status [ Internal ]
{
}

Method %EndDrawHtml(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status [ Internal ]
{
}

Method %BeginDrawFo(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status [ Internal ]
{
}

Method %EndDrawFo(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream) As %Status [ Internal ]
{
}

Method %IncLevel(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream)
{
}

Method %ApplyLevelParameters(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream)
{
}

Method %DeclareLevelParameters(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream)
{
}

Method %EndLevel(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream)
{
}

}
