/// Include generated XSLT from another report in this report
Class %ZEN.Report.Display.call Extends (node, tableOutput) [ Deprecated, Inheritance = right, System = 4 ]
{

Property field As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property group As %ZEN.Datatype.string(XMLPROJECTION = "NONE");

Property removeEmpty As %ZEN.Datatype.boolean(XMLPROJECTION = "NONE") [ InitialExpression = 0 ];

Property children As list Of node(XMLPROJECTION = "NONE");

/// Name of method that returns an XML stream to include
Property method As %ZEN.Datatype.string;

/// Name of subreport
/// As recorded in subreport property of calling method in report
/// For example:
/// Method getstreams(ByRef XSL As %GlobalCharacterStream, ByRef delay As %GlobalCharacterStream, mode As %Integer) As %Status
/// {
/// 	set rpt1=##class(ZENApp.MyReportCZ).%New()
/// 	set rpt1.Month=1
/// 	set rpt1.SubReport="MyReport"
///    set rpt1.MainReport="MAINReport"
/// 	set rpt1.StripPI=1
/// 	set Status=rpt1.CallReport(.XSL,.delay,"c:\temp\getstreams.xml",mode)
/// 	quit Status
/// }
Property subreport As %ZEN.Datatype.string;

/// This is the name of the subreport as in the following
/// <report xmlns="http://www.intersystems.com/zen/report/definition"
/// name='SUB1Report'
Property subreportname As %ZEN.Datatype.string;

Method %DrawToHTML(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, ByRef incell As %Boolean) As %Status
{
}

Method %DrawToXSLFO(ByRef context As %String, ByRef XSL As %GlobalCharacterStream, delay As %GlobalCharacterStream, incell As %Boolean = 0) As %Status
{
}

}
