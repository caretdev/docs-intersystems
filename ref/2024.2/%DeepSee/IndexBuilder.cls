Class %DeepSee.IndexBuilder [ Abstract, System = 3 ]
{

/// <var>BITMAPCHUNKINMEMORY</var> is used during code generation to decide whether or not bitmap chunks can be
/// constructed in memory. It is faster to construct bitmap chunks in memory but if there are a lot of bitmaps,
/// the indexed property or properties have very low selectivity or the index values are large then STORE errors
/// can be encountered. If <var>BITMAPCHUNKINMEMORY</var> is 1 then bitmap chunks are constructed in memory by
/// %ConstructIndices. Otherwise, bitmap chunks are constructed using process-private globals. The default is 0,
/// meaning that bitmap chunks are built using process-private globals.
Parameter BITMAPCHUNKINMEMORY = 0;

/// NextId(pId,pDirection) returns the ID value following pId if pDirection is 1 or the ID value preceding pId if
/// pDirection is -1.
ClassMethod %NextId(pId As %Integer, pDirection As %Integer = 1) As %Integer [ CodeMode = objectgenerator ]
{
}

ClassMethod %ConstructIndicesParallel(pTaskId = "", pStartId As %Integer = 0, pEndId As %Integer = -1, pSortBegin As %Integer = 1, pDroneCount As %Integer = 0) As %Status
{
}

ClassMethod %ConstructIndicesStartTask(pTaskId, pSortBegin) As %String [ CodeMode = objectgenerator ]
{
}

ClassMethod %ConstructIndices(pStartId As %Integer, pEndId As %Integer) As %Status [ CodeMode = objectgenerator ]
{
}

/// Files the indices for all objects whose ID is in the range defined by <var>pStartId</var> and <var>pEndId</var>.
/// If <var>pEndId</var> is null then it defaults to <var>pStartId</var>. If <var>pStartId</var> is null then the
/// range is empty and no filing will occur.
///
/// If <var>lockExtent</var> is true then an extent lock will be acquired before the indices
/// are built. If the lock cannot be acquired then an error is returned. The lock is released
/// after the index filing is completed.
///
///
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
ClassMethod %SaveIndices(pStartId As %String(MAXLEN="") = "", pEndId As %String(MAXLEN="") = "", lockExtent As %Boolean = 0) As %Status [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 0 ]
{
}

}
