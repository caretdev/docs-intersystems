Class %CPT.JS.BuildCPT Extends %ZEN.proxyObjectEnumeratee [ System = 4 ]
{

Property Stack As list Of %CPT.JS.Node.Abstract [ Internal, Private ];

Property Editor As %CPT.Tree.Editor [ Internal, Private ];

/// "" => no node tracing
/// "T" => trace only
/// "B" => both
Property TraceNode As %String [ Internal, Private ];

ClassMethod Build(SourceStream As %Stream.Object, Tree As %ZEN.proxyObject, TraceNode As %String = "", TraceEnum As %String = "") As %Status [ Internal ]
{
}

Method %OnNew(TraceNode As %String = "", SourceStream As %Stream.Object) As %Status
{
}

Method PropertyName(Prop As %String) [ Internal ]
{
}

Method BeginNested() [ Internal ]
{
}

Method EndNested() [ Internal ]
{
}

/// NOTE: We always expect contiguous lists so we don't bother to implement the ListIndex callback
Method ListIndex(Index) [ Internal ]
{
}

Method BeginList() [ Internal ]
{
}

Method EndList() [ Internal ]
{
}

Method CacheObject(Obj As %RegisteredObject) [ Internal ]
{
}

Method Simple(Item) [ Internal ]
{
}

Method MaybeUnquote(Prop As %String) As %String [ CodeMode = expression, Internal, Private ]
{
}

Method Top() As %CPT.JS.Node.Abstract [ CodeMode = expression, Internal, Private ]
{
}

Method Push(Node As %CPT.JS.Node.Abstract) [ Internal, Private ]
{
}

Method Pop() [ Internal, Private ]
{
}

Method WriteProp(Prop As %String) [ Internal, Private ]
{
}

ClassMethod MaybeFixName(Name As %String) As %String [ CodeMode = expression, Internal, Private ]
{
}

ClassMethod FixName(Name As %String) As %String [ CodeMode = expression, Internal, Private ]
{
}

ClassMethod Enumeratee(SourceStream As %Stream.Object, TraceNode As %String, TraceEnum As %String = "") As %ZEN.proxyObjectEnumeratee [ Internal, Private ]
{
}

Method NewNodeObject(CurrentNode As %CPT.JS.Node.Abstract) As %CPT.JS.Node.Abstract [ Internal, Private ]
{
}

}
