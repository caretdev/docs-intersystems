/// Import Controller for SQL Import.
Class %SQL.Import.Mgr Extends (%RegisteredObject, %SQL.ExImData) [ Inheritance = right, Not ProcedureBlock, System = 3 ]
{

Parameter RTNPREFIX = "SQLImport";

/// If true, generate indices after importing data using %SortBegin/%SortEnd.
Property DeferIndices As %Integer [ InitialExpression = 1 ];

/// If true, nest the entire import operation in a transaction.
/// <p>NOT IMPLEMENTED.
Property UseTransaction As %Integer [ InitialExpression = 0 ];

/// If true, we still need to build indices.
Property IndexPending As %Integer [ InitialExpression = 0, Private ];

/// Reset the state of this object.
Method Reset()
{
}

/// Return the name of the routine to use for the import
Method AllocateRoutine(ByRef rtn As %String) As %Status [ ProcedureBlock = 1 ]
{
}

/// Generate the Import routine.
Method GenerateImportRoutine() As %Status
{
}

/// Delete the generated import routine.
Method DeleteImportRoutine() As %Status
{
}

/// Returns the size of the import file.
Method FileSize() As %Integer
{
}

/// Returns the current number of import errors.
Method ErrorCount() As %Integer
{
}

/// Do an import from the command line.
Method Import(savertn As %Boolean = 0) As %Status
{
}

/// Prepares the start of an import.
/// <p>Call this after generating an import routine.
Method OpenImport() As %Status
{
}

/// Reads the next <var>count</var> rows from the import file.
/// <p>On return, <var>counts</var> contains the number of rows read from the file.
/// <var>inserted</var> contains the number of rows successfully inserted.
/// <var>bytes</var> contains the number of bytes read from the file.
/// <var>done</var> is set to one when the import is complete.
/// <var>errorcount</var> is the cumulative number of INSERT errors encountered.
Method ImportRows(ByRef count As %Integer, ByRef inserted As %Integer, ByRef bytes As %Integer, ByRef done As %Integer, ByRef errorcount As %Integer, total As %Integer) As %Status
{
}

/// Perform the merge sort to build the indices.
Method BuildIndices() As %Status
{
}

/// Reads the first line of the import file.
Method ReadHeader(ByRef header As %String, ByRef size As %Integer) As %Status
{
}

/// Call this at the end of the import operation.
Method CloseImport(abort As %Integer = 0) As %Status
{
}

ClassMethod ErrorLogExecute(ByRef QHandle As %Binary) As %Status
{
}

ClassMethod ErrorLogClose(QHandle As %Binary) As %Status
{
}

ClassMethod ErrorLogFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

}
