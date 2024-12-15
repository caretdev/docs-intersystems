/// This class implements a simple command line shell for executing queries against DeepSee cubes
/// and viewing the results.
Class %DeepSee.Shell Extends %RegisteredObject [ System = 4 ]
{

/// Simple command line shell for testing queries.<br/>
/// The shell will prompt for an MDX query, execute it and
/// display its results to the console. Enter "q" and press
/// Enter to exit the Shell.
ClassMethod %Go(pAsync As %Boolean = 1, pCache As %Boolean = 1)
{
}

/// Write out members of the cube's dimension list.
ClassMethod %ListMembers(ByRef pTree)
{
}

/// Read a series of MDX queries from file <var>pQueryFile</var>, execute them
/// and write the results to file <var>pResultFile</var>.<br/>
/// A query consists of all text up to a line containing the command "go".<br/>
/// If <var>pResultFile</var> is not supplied, write results to the console.<br/>
/// If <var>pShowStats</var> is false, do not write query statistics.
ClassMethod %RunQueryFile(pQueryFile As %String, pResultFile As %String = "", pShowStats As %Boolean = 1) As %Status
{
}

}
