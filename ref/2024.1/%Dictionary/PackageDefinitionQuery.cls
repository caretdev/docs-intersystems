Class %Dictionary.PackageDefinitionQuery [ Abstract, Not ProcedureBlock, System = 2 ]
{

/// The <b>SubPackage</b> query provides a list of sub-package names.
/// This query works in a hierarchical way,
/// it returns only one level of sub-package under a specified <var>SuperPackage</var> name.
ClassMethod SubPackageExecute(ByRef QHandle As %Binary, SuperPackage As %String) As %Status
{
}

/// <b>Fetch</b> returns the next row in the query.
ClassMethod SubPackageFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = expression ]
{
}

/// <b>RoutineListFetchRows</b> returns the next <var>FetchCount</var> rows in the query.
ClassMethod SubPackageFetchRows(ByRef QHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status [ ProcedureBlock = 1 ]
{
}

ClassMethod SubPackageClose(QHandle As %Binary) As %Status
{
}

/// The <b>FlatPackage</b> query provides a list of flattened out package names.
/// Starting with ones beginning with <var>Prefix</var>
ClassMethod FlatPackageExecute(ByRef QHandle As %Binary, Prefix As %String) As %Status
{
}

/// <b>Fetch</b> returns the next row in the query.
ClassMethod FlatPackageFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = expression ]
{
}

/// <b>RoutineListFetchRows</b> returns the next <var>FetchCount</var> rows in the query.
ClassMethod FlatPackageFetchRows(ByRef QHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status [ ProcedureBlock = 1 ]
{
}

ClassMethod FlatPackageClose(QHandle As %Binary) As %Status
{
}

}
