Class %CPT.JS.TracingEnumeratee Extends %ZEN.proxyObjectEnumeratee [ System = 4 ]
{

Property Level As %Integer [ Private ];

/// Each entry is $LB(seenany,listindex,commacount)
///
/// seenany=0 => seen nothing
/// seenany=1 => seen item
/// seenany=2 => seen prop
Property Stack As %List [ MultiDimensional, Private ];

Method %OnNew() As %Status
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

Method Indent() As %String [ CodeMode = expression, Internal ]
{
}

Method MaybeUnquote(Prop As %String) As %String [ CodeMode = expression, Internal, Private ]
{
}

Method Top() As %List [ CodeMode = expression, Internal, Private ]
{
}

Method TopSeenAny() As %Integer [ CodeMode = expression, Internal, Private ]
{
}

Method SetTopSeenAny(SeenAny As %Integer) [ Internal, Private ]
{
}

Method TopCommaCount() As %Integer [ CodeMode = expression, Internal, Private ]
{
}

Method Push() [ Internal, Private ]
{
}

Method Pop() [ Internal, Private ]
{
}

Method WriteProp(Prop As %String) [ Internal, Private ]
{
}

Method WriteItem(Item As %String) [ Internal, Private ]
{
}

ClassMethod Commas(CommaCount As %Integer) [ CodeMode = expression, Internal, Private ]
{
}

}
