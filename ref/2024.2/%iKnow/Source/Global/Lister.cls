/// <p>Lister implementation for retrieving sources directly from globals.</p>
///
/// <p><b>Lister Parameters</b> to be supplied to <method>AddListToBatch</method> and
/// 	<method>ProcessList</method> calls:</p>
/// <ol>
///     <li><b>globalref</b> As <class>%String</class> - global reference where data is stored</li>
///     <li><b>begsub</b> As <class>%String</class> - beginning subscript (if not "")</li>
///     <li><b>endsub</b> As <class>%String</class> - ending subscript (default "")</li>
///     <li><b>filter</b> As <class>%String</class> - default "", $xecute expression, passed current subscript
///         returns non-zero if this location needs to be processed</li>
/// </ol>
///
/// <p><b>External ID structure:</b> [GroupName]:[LocalRef]</p>
/// 	<ul>
/// 		<li>GroupName = globalref passed to lister</li>
///     <li>LocalRef = final subscript</li>
/// </ul>
///
/// <p><b>Lister alias:</b> "GLOBAL"</p>
/// <p><b>Default Processor:</b> <class>%iKnow.Source.Global.Processor</class></p>
Class %iKnow.Source.Global.Lister Extends %iKnow.Source.Lister [ Deprecated, System = 4 ]
{

/// <p>Scans through the global nodes as dictated by the Lister Parameters.
/// No metadata is gathered along the way.</p>
/// <p>See also ExpandList in <class>%iKnow.Source.Lister</class>.</p>
Method ExpandList(listparams As %List) As %Status
{
}

/// <p>Lister alias: "GLOBAL"</p>
ClassMethod GetAlias() As %String
{
}

/// <p>Splits the full reference in group name and local reference.
/// The group name is the global reference, and the local reference is the final subscript.</p>
/// <p>See also <method class="%iKnow.Source.Lister">SplitFullRef</method> in <class>%iKnow.Source.Lister</class>.</p>
ClassMethod SplitFullRef(domainId As %Integer, fullRef As %String, Output groupName As %String, Output localRef As %String) As %Status [ Private ]
{
}

/// <p>Builds the full reference making a global reference with $NAME.</p>
/// <p>See also <method class="%iKnow.Source.Lister">BuildFullRef</method> in <class>%iKnow.Source.Lister</class>.</p>
ClassMethod BuildFullRef(domainId As %Integer, groupName As %String, localRef As %String) As %String [ Private ]
{
}

/// <p>Tests performed by this Lister:</p>
/// <ol>
/// 		<li>globalref: checks whether a vald global ref (but does not check global existence)</li>
/// 		<li>begsub: no checks</li>
/// 		<li>endsub: no checks</li>
/// 		<li>filter: if nonempty, checks whether this is a valid expression for $xecute() with two parameters</li>
/// </ol>
Method TestParams(listerParams...) As %Status
{
}

}
