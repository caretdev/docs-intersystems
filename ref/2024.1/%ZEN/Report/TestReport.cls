///
/// Test case for Zen Report.
Class %ZEN.Report.TestReport Extends (%Persistent, %ZEN.Report.reportPage) [ CompileAfter = (%ZEN.Report.Display.document, %ZEN.Report.Display.report, %ZEN.Report.element, %ZEN.Report.group, %ZEN.Report.parameter, %ZEN.Report.PrintServer, %ZEN.Report.RecordCounter, %ZEN.Report.report, %ZEN.Report.reportGenerator, %ZEN.Report.reportLauncher, %ZEN.Report.reportNode, %ZEN.Report.reportPage, %ZEN.Report.reportSchema, %ZEN.Report.SASchema, %ZEN.Report.Display.att, %ZEN.Report.Display.atthtml, %ZEN.Report.Display.attxslfo, %ZEN.Report.Display.block, %ZEN.Report.Display.body, %ZEN.Report.Display.caption, %ZEN.Report.Display.category, %ZEN.Report.Display.childrenNode, %ZEN.Report.Display.class, %ZEN.Report.Display.container, %ZEN.Report.Display.group, %ZEN.Report.Display.header, %ZEN.Report.Display.p), DependsOn = (%ZEN.Report.Display.document, %ZEN.Report.Display.report, %ZEN.Report.element, %ZEN.Report.group, %ZEN.Report.parameter, %ZEN.Report.PrintServer, %ZEN.Report.RecordCounter, %ZEN.Report.report, %ZEN.Report.reportGenerator, %ZEN.Report.reportLauncher, %ZEN.Report.reportNode, %ZEN.Report.reportPage, %ZEN.Report.reportSchema, %ZEN.Report.SASchema, %ZEN.Report.Display.att, %ZEN.Report.Display.atthtml, %ZEN.Report.Display.attxslfo, %ZEN.Report.Display.block, %ZEN.Report.Display.body, %ZEN.Report.Display.caption, %ZEN.Report.Display.category, %ZEN.Report.Display.childrenNode, %ZEN.Report.Display.class, %ZEN.Report.Display.container, %ZEN.Report.Display.group, %ZEN.Report.Display.header, %ZEN.Report.Display.p), Deprecated, Inheritance = right, System = 4 ]
{

XData ReportDefinition [ XMLNamespace = "http://www.intersystems.com/zen/report/definition" ]
{
}

Parameter DEFAULTMODE = "pdf";

/// XML description for the display of this report. Used to generate
/// XSlT stylesheets for both HTML and XSL-FO
XData ReportDisplay [ XMLNamespace = "http://www.intersystems.com/zen/report/display" ]
{
}

}
