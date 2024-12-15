///
/// Implementation of Array traits for Python
///
Class %SYS.Python.ArrayTraits [ System = 4 ]
{

ClassMethod "__len__"(self As %Collection.AbstractArray) As %Integer [ Internal ]
{
}

ClassMethod "__getitem__"(self As %Collection.AbstractArray, key As %Any) As %Any [ Internal ]
{
}

ClassMethod get(self As %Collection.AbstractArray, key As %Any, default As %Any) As %Any [ Internal ]
{
}

ClassMethod pop(self As %Collection.AbstractArray, key As %Any, default As %Any = "") As %Any [ Internal ]
{
}

ClassMethod popitem(self As %Collection.AbstractArray) As %SYS.Python [ Internal ]
{
}

ClassMethod "__contains__"(self As %Collection.AbstractArray, key As %Any) As %Boolean [ Internal ]
{
}

ClassMethod "__setitem__"(self As %Collection.AbstractArray, key As %Any, value As %Any) [ Internal ]
{
}

ClassMethod "__delitem__"(self As %Collection.AbstractArray, key As %Any) [ Internal ]
{
}

ClassMethod clear(self As %Collection.AbstractArray) [ Internal ]
{
}

ClassMethod copy(self As %Collection.AbstractArray) As %Collection.AbstractArray [ Internal ]
{
}

ClassMethod "__iter__"(self As %Collection.AbstractArray) [ Internal ]
{
}

ClassMethod items(self As %Collection.AbstractArray) [ Internal ]
{
}

ClassMethod keys(self As %Collection.AbstractArray) [ Internal ]
{
}

ClassMethod values(self As %Collection.AbstractArray) [ Internal ]
{
}

}
