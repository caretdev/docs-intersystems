/// Zen Report Excel Server definition and utility methods/queries.
Class %ZEN.Report.ExcelServer Extends RenderServer [ Deprecated, Final, System = 4 ]
{

Parameter TYPE = 3;

/// Generate the command line to run the script to start up the Excel Server.
ClassMethod CmdLine(pReportServer As %ZEN.Report.ExcelServer, Output pCmd As %String, Output pCmdArgs) As %String
{
}

/// Lookup Zen Report Excel Servers, get basic data plus state.
ClassMethod ByServerExecute(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

/// Lookup all Zen Report Excel Servers.
/// Type must be "3" for Excel Servers.
Property ServerType As %String [ InitialExpression = "3", ReadOnly ];

}
