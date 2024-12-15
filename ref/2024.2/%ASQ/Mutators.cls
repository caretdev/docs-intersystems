Class %ASQ.Mutators
{

/// <p>
/// setPath() accepts a JPL Path expression (currently limited to simple dot delimited property names, no wild cards, arrays, or filters)
/// and a value. The path is traversed and the terminal property in the path will be set to the value. This can result in the
/// loss of data. If any non-terminal property is defined but is not an object then it will be set to a new object, replacing the current
/// value.
/// </p>
/// <p>
/// If <var>path</var> is null the current object is not modified.
/// </p>
/// <p>
/// If <var>path</var> is '$' and <var>value</var> is an instance of <class>%Library.AbstractObject</class> then <var>value</var> is
/// returned, otherwise, an array with a single element of <var>value</var> is returned.
/// </p>
/// <p>
/// In all other cases, the current object is modified and returned.
/// </p>
/// <p>
/// If a token in the path contains [*] and the current value of that property is an array then the array will be traversed and each
/// element will be set according to the setPath rules.
/// </p>
ClassMethod setPath(context As %AbstractSet, path As %String(MAXLEN="") = "", value As %Any = "") As %Library.AbstractSet [ Internal ]
{
}

/// unsetPath() accepts a JPL Path expression (currently limited to simple dot delimited property names, no wild cards, arrays, or filters)
/// and a value. The path is traversed and the terminal property in the path will be removed. If any non-terminal property not defined or
/// is defined but is not an object then $unsetPath will return without doing any work.
///
/// If a token in the path contains [*] and the current value of that property is an array then the array will be traversed and each
/// element will be unset according to the unsetPath rules. </Description>
ClassMethod unsetPath(context As %AbstractSet, path As %String(MAXLEN="") = "", value As %String(MAXLEN="") = "") As %AbstractSet [ Internal ]
{
}

ClassMethod setPathElement(context As %AbstractSet, ByRef pathElements As %RawString, elementPtr As %Integer = 0, value As %Library.Any) As %Library.AbstractSet [ Internal ]
{
}

ClassMethod unsetPathElement(context As %AbstractSet, ByRef pathElements As %RawString, elementPtr As %Integer = 0) As %AbstractSet [ Internal ]
{
}

/// INTERNAL - recursive method to set the element in the current context object using a parsed path expression.
ClassMethod unsetPathMember(context As %AbstractSet, ByRef pathElements As %RawString, elementPtr As %Integer = 0) As %AbstractSet [ Internal ]
{
}

/// INTERNAL - recursive method to set the element in the current context object using a parsed path expression. </Description>
ClassMethod setPathMember(context As %AbstractSet, ByRef pathElements As %RawString, elementPtr As %Integer = 0, value As %Library.Any) As %AbstractSet [ Internal ]
{
}

}
