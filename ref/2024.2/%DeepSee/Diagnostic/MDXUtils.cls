/// This class provides an API for analyzing MDX queries
/// and generating report data. This class is intended for diagnostic purposes only.
/// There is no guarantee made about either the behavior or future operation of this class. Production
/// applications should not make direct use of these APIs.<br/><br/>
/// Files generated are as follows:<br/>
///  - A general statistics report,<br/>
///  - PERFMON samples from running the query both uncached and cached,<br/>
///  - An export of the cube class and fact table. If this cube is a member of a relationship group,
/// all related cube classes will also be exported.
Class %DeepSee.Diagnostic.MDXUtils Extends (%XML.Adaptor, %ZEN.DataModel.Adaptor) [ System = 4 ]
{

Parameter VERSION [ Internal ] = "2.1 (January 10, 2014)";

Parameter UTILNAME [ Internal ] = "MDX Query Performance Analyzer";

/// MDX Query being analyzed.
Property Query As %DeepSee.Datatype.string;

/// DeepSee ResultSet from cached query preparartion (contains statistics).
Property ResultsCached As %DeepSee.ResultSet;

/// DeepSee ResultSet from uncached query preparation (contains statistics).
Property ResultsUncached As %DeepSee.ResultSet;

/// Last MDX result set prepared (cached / uncached)
Property lastPrep As %Integer [ InitialExpression = -1, Internal ];

/// PID of current PERFMON background check.
Property pJob As %Integer [ InitialExpression = 0, Internal ];

/// Collection period of current PERFMON background check.
Property pTime As %Integer [ InitialExpression = 0, Internal ];

/// Use cache for statistics - set by %Prep method.
Property UseCache As %Boolean;

/// Base directory for analysis output; defaults to install directory.
Property BaseDir As %String;

/// Holds the start times of the query execution and the start of %Run
Property StartTimes As array Of %Numeric;

/// This property contains the ordered list of cubes that have some logical relation
/// to the cube currently being queried. The list is ordered from least dependent to
/// most independent.
Property CubeGroup As %String [ MultiDimensional ];

/// Controls whether or not status updates should be output to the current device.
Property Verbose As %Boolean [ InitialExpression = 0 ];

/// Used to trigger communication to the UI via the ^DeepSee.MDXUtils global
Property TrackingOn As %Boolean [ InitialExpression = 0 ];

/// Prints the current version to the screen
ClassMethod Version() As %Status
{
}

/// This method is used for analysis of an MDX query. This runs the query two times; once uncached and once cached.
/// During each of these a PERFMON report will be generated and saved to the destination folder. This utility
/// will also collect and save general query statistics, as well as export the Cube and Fact table definitions.
/// <br/><var>pMDX</var> - The MDX query to be analyzed
/// <br/><var>pBaseDir</var> - The base directory for storing the output folder. This is set to the
/// instance installation directory by default.
/// <br/><var>pVerbose</var> - If true, the analysis will print the long-form output to the current device. Setting
/// <var>pVerbose</var> = 0 will run the analysis completely silently.
/// <br><br>There are other options that may be turned on via the <var>pParms</var> array:
/// <br><var>pParms("CubeStatsOn")</var> = 1
/// <br><var>pParms("TimePERFMON")</var> = 15
/// <br><var>pParms("SystemPerformanceOn")</var> = 0
/// <br><var>pParms("SystemPerformanceProfile")</var> = ""
/// <br><var>pParms("UnattendedOn")</var> = 1
/// <br>"On" in flag name denotes it is treated as a boolean, "Time" denotes it accepts a positive integer
/// argument, in seconds.
ClassMethod %Run(pMDX As %String = "", pBaseDir As %String = "", pVerbose As %Boolean = 0, ByRef pParms = "", Output pOutFile = "") As %Status
{
}

/// Run MDX query analysis.<br/>
/// <var>pMDX</var> - (mandatory) MDX Query to run.<br/>
/// <var>outFile</var> - (mandatory) Output file for PERFMON statistics.<br/>
/// <var>perfTime</var> - PERFMON collection period; any non-zero value will run PERFMON.<br/>
/// <var>UseCache</var> - Use cache for query run (default false).<br/>
Method Analyze(pMDX As %String, pOutFile As %String, pPerfTime As %Integer = 0, pUseCache As %Boolean = 0) As %Status [ Internal ]
{
}

/// Prepare MDX query for execution and set internal variables accordingly.
Method %Prep(pMDX As %String = "", pUseCache As %Boolean = 1) As %Status [ Internal ]
{
}

/// Execute prepared MDX query; store results accordingly.
Method %Exec() As %Status [ Internal ]
{
}

/// Intended for use in report printing only. <br>
/// Print statistics of last analyzed query; includes ResultSet statistics.
Method PrintQueryStats() [ Internal ]
{
}

/// Intended for use in report printing only. <br>
/// Cube Analyze output (to show indices cardinality)<br/>
Method PrintCubeStats(pVerbose As %Boolean = 1) [ Internal ]
{
}

/// Export Cube class and Cube fact class to single XML file.
Method ExportDefinitions(pCubeFileName) As %Status [ Internal ]
{
}

/// Unimplemented.
Method FindSelectivity() [ Internal ]
{
}

/// Intended for use in report printing only. <br>
/// Pinting method for the query plan
Method PrintPlan() [ Internal ]
{
}

/// Start background PERFMON process; this must be JOBbed off,<br>
/// and should only be done through the InitPerf() method.
ClassMethod StartPerf(pFile As %String = "", pTime As %Integer = 15) [ Internal ]
{
}

/// Starts PERFMON background process from %Run() context.<br>
/// This will also affect the ..pJob Property, and a subsequent<br>
/// call to WaitPerfStop will expect to deal with that PID.<br>
/// The ..pTime property will also be adjusted to wait an <br>
/// appropriate amount of time for the last PERFMON run to complete.
Method InitPerf(pFile As %String = "", pTime As %Integer = 15) As %Status [ Internal ]
{
}

/// Wait for current PERFMON to stop; the information regarding that<br/>
/// process' PID and run period will have been set by a successful<br/>
/// InitPerf() earlier.<br/>
/// Lowest timeout threshold is 30 seconds.
Method WaitPerfStop() As %Status [ Internal ]
{
}

/// Determine the path where the collection data will be stored
Method SetBaseDir(pBaseDir As %String = "", pVerbose As %Boolean = 0, pUnattended = 1) As %Status [ Internal ]
{
}

/// Intended for use in report printing only. <br>
/// Print the dependencies for the cube class and the the DeepSee model
Method PrintDependencies() As %Status [ Internal ]
{
}

/// Intended for use in report printing only. <br>
/// - NOT IMPLEMENTED -
Method PrintAgentMetrics() As %Status [ Internal ]
{
}

/// Switches to the %SYS namespace to run SystemPerformance. </br>
/// Best jobbed off?
ClassMethod RunSystemPerformance(pDir, pProfile = "1min") As %Status [ Internal ]
{
}

/// Find the logical group that this cube belongs to. Information about the group
/// as a whole is needed.
Method GetQueryCubeGroup(pCube) As %Status [ Internal ]
{
}

/// Clear the execution history from the logging global.
/// This will not affect any of the diagnostic reports.
ClassMethod %ClearHistory() As %Status
{
}

/// Genenrate MDX Analysis as HTML file.
Method ToHTML(ByRef pFileName As %String, pCubeStats As %Boolean, pStatus As %Status = 1) As %Status [ Internal ]
{
}

Method %OnNew(pMDX As %String = "") As %Status [ Internal ]
{
}

}
