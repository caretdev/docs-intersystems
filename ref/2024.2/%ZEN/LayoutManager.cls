/// This utility class provides a centralized place for
/// the coded used to implement control layout on a page.
Class %ZEN.LayoutManager [ Abstract, Deprecated, Final, System = 3 ]
{

/// Default layout: simply display components with no wrapping table.
ClassMethod default(pGroup As %ZEN.Component.group, pTuple As %Integer = "")
{
}

/// Layout out components vertically.
ClassMethod vertical(pGroup As %ZEN.Component.group, pTuple As %Integer = "")
{
}

/// Layout out components horizontally.
ClassMethod horizontal(pGroup As %ZEN.Component.group, pTuple As %Integer = "")
{
}

/// Get border attribute for layout tables
ClassMethod GetBorder(pIndex As %Integer) As %String [ CodeMode = expression ]
{
}

/// Return HTML fragment to show visible borders.
/// Deprecated.
ClassMethod GetDebugBorder(pIndex As %Integer) As %String [ Deprecated, Private ]
{
}

/// Utility method used when writing out HTML attribute values.
/// Given an attribute name and value, this returns the string
/// attr=""value"" with value HTML escaped. If value is "", then ""
/// is returned.<br>
ClassMethod %Attr(pName As %String, pValue As %String) As %String [ CodeMode = expression ]
{
}

/// Return label for component
ClassMethod %Label(tChild As %ZEN.Component.component) As %String [ CodeMode = expression ]
{
}

/// Return hint text for component
ClassMethod %Hint(tChild As %ZEN.Component.component) As %String [ CodeMode = expression ]
{
}

/// Return error message for component
ClassMethod %ErrorMsg(tChild As %ZEN.Component.component) As %String [ CodeMode = expression ]
{
}

/// Replacement for $$$ZENVAL macro when used outside of the context of a component OREF.
ClassMethod %ZENVAL(pObj As %ZEN.Component.object, pExpr As %String, pEscape As %String = "") As %String [ CodeMode = expression, Internal ]
{
}

}
