/// This class is used to implement the 'complete row' SQL query that
/// can be used to return the entire persistent state of an object.
/// This class is not for application use.
Class %Library.RowSQLQuery Extends %SQLQuery [ Not ProcedureBlock, System = 2 ]
{

ClassMethod Close(%qHandle As %Binary) As %Status [ CodeMode = generator, ProcedureBlock = 1, PublicList = SQLCODE ]
{
}

ClassMethod Execute(ByRef %qHandle As %Binary, id As %String) As %Status [ CodeMode = generator, ProcedureBlock = 1 ]
{
}

ClassMethod Fetch(ByRef %qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = generator, GenerateAfter = Execute, PlaceAfter = Execute, ProcedureBlock = 1, PublicList = mtc ]
{
}

}
