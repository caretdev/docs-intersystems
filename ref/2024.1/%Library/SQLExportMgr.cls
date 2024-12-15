/// Export Controller for SQL Export.
Class %Library.SQLExportMgr Extends (%RegisteredObject, %SQLExImData) [ Inheritance = right, Not ProcedureBlock, System = 3 ]
{

Parameter RTNPREFIX = "SQLExport";

/// Private flag set to True when export is underway.
Property IsExporting As %Boolean [ InitialExpression = 0 ];

/// Reset the state of this object.
Method Reset()
{
}

/// Generate the Export routine.
/// <p>If <var>sample</var> is 1 then generate code that writes sample data to a local variable.
Method GenerateExportRoutine(sample As %Integer = 0) As %Status
{
}

/// Compute and return the correct expression for column <var>col</var>.
/// <p><var>colno</var> is the number of the actual exported column (some
/// columns may be skipped.
Method GenDataExpr(col As %Integer, colno As %Integer) As %String
{
}

/// Delete the generated export routine.
Method DeleteExportRoutine() As %Status
{
}

/// Do an export from the command line.
Method Export(savertn As %Boolean = 0)
{
}

/// Prepares the start of an export.
/// <p>Call this after generating an export routine.
Method OpenExport() As %Status
{
}

/// Exports the next <var>rows</var> rows to the export file.
/// On return, <var>rows</var> contains the number of rows exported
/// or 0 if the export is complete.
Method ExportRows(ByRef rows As %Integer, ByRef done As %Integer) As %Status
{
}

/// Exports the first <var>rows</var> rows to a sample variable.
Method GetSample(ByRef rows As %Integer) As %String
{
}

/// Call this at the end of the export operation.
Method CloseExport() As %Status
{
}

/// Returns the number of rows in the export table in <var>rows</var>.
/// <p>Call this after generating an export routine.
Method GetExportSize(ByRef rows As %Integer) As %Status
{
}

}
