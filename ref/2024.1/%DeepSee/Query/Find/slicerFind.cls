Class %DeepSee.Query.Find.slicerFind Extends %SQL.AbstractFind
{

Property qid As %Integer;

/// Find expects <var>pQID</var> in the format $LB(CUBE,slicerKey). The appropriate slotNo to read the slicer from the cache
/// is calculated from the chunk number as needed.
ClassMethod Find(pQID As %List) As %SQL.AbstractFind [ SqlName = slicerFind, SqlProc ]
{
}

Method ContainsItem(pItem As %String) As %Boolean
{
}

Method ReturnBitmapExtentGlobalName() As %String
{
}

Method GetChunk(pChunk As %Integer) As %Binary
{
}

Method NextChunk(ByRef pChunk As %Integer = "") As %Binary
{
}

Method PreviousChunk(ByRef pChunk As %Integer = "") As %Binary
{
}

}
