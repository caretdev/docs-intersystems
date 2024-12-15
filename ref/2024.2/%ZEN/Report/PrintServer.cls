/// Zen Report Print Server definition and utility methods/queries.
Class %ZEN.Report.PrintServer Extends RenderServer [ Deprecated, Final, System = 4 ]
{

Parameter TYPE = 2;

ClassMethod %ServePSTransform(xmlfile As %String, xslfile As %String, ps As %String, logfile As %String, UseInstalledFop As %Boolean)
{
}

ClassMethod %ServeTransformAndPrint(xmlfile As %String, xslfile As %String, outfile As %String, printer As %String, logfile As %String, UseInstalledFop As %Boolean, PrintServer As %String, PrintTimeOut As %String = "")
{
}

ClassMethod %PerformPrint(outfile As %String, printer As %String, PrintServer As %String, PrintTimeOut As %String = "")
{
}

/// Generate the command line to run the script to start up the Print Server.
ClassMethod CmdLine(pReportServer As %ZEN.Report.PrintServer, Output pCmd As %String, Output pCmdArgs) As %String
{
}

/// Lookup Zen Report Print Servers, get basic data plus state.
ClassMethod ByServerExecute(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

/// Lookup all Zen Report Print Servers.
/// Type must be "2" for Print Servers.
Property ServerType As %String [ InitialExpression = "2", ReadOnly ];

/// Print engine - "jPDFPrint" or "Adobe".
Property PrintEngine As %String(DISPLAYLIST = ",jPDFPrint,Adobe,Foxit", VALUELIST = ",jPDFPrint,Adobe,Foxit") [ InitialExpression = "jPDFPrint", Required ];

Property Key As %String;

}
