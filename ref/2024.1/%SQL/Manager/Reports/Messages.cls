Class %SQL.Manager.Reports.Messages Extends %ZEN.Report.reportPage [ Not ProcedureBlock, System = 4 ]
{

Parameter SQLCACHE As STRING = 0;

Parameter RESOURCE = "%Development:USE";

Property ResultSet As %SQL.IResultSet;

Method GetResult(ByRef pSc As %Status = {$$$OK}, ByRef pParameters) As %SQL.IResultSet [ CodeMode = expression ]
{
}

XData ReportDefinition [ XMLNamespace = "http://www.intersystems.com/zen/report/definition" ]
{
}

XData ReportDisplay [ XMLNamespace = "http://www.intersystems.com/zen/report/display" ]
{
}

}
