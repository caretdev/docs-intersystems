/// This class is used internally by InterSystems. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.<p>
/// <center><b><font size=+2>System Debugger Stack Queries</font></b></center>
/// <b><font size=+1>Overview</font></b>
/// <p>The system debugger provides several queries for examining the stack of a process.
/// <p>All the queries take a identifier as an argument.  The identifier is returned
/// from the debugstack^%STACK routine.
/// <p>Call debugstack^%STACK(id)
/// <p>The identifier is returned in ^IRIS.Temp.SYSDebugger("STACK",id)
/// </body>
/// </html>
Class %Debugger.Stack Extends %Library.RegisteredObject [ System = 3 ]
{

/// All stack variables defined at a level.
/// <p>Return all variables and their current value defined at level N
ClassMethod StackVarAtLevelExecute(ByRef qHandle As %Binary, deb As %Integer, lev As %Integer) As %Status
{
}

ClassMethod StackVarAtLevelClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = StackVarAtLevelExecute ]
{
}

ClassMethod StackVarAtLevelFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = StackVarAtLevelExecute ]
{
}

ClassMethod StackVarAtLevel(ByRef qHandle As %Binary, deb As %Integer, lev As %Integer, start As %String) As %Status
{
}

}
