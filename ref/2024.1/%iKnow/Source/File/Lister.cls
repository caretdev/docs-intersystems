/// <p>Lister implementation for scanning a filesystem.</p>
///
/// <p><b>Lister Parameters</b> to be supplied to <method>AddListToBatch</method> and
/// 	<method>ProcessList</method> calls:</p>
/// <ol>
///     <li><b>path</b> As <class>%String</class> - the directory where to look for files</li>
///     <li><b>extensions</b> As <class>%List</class> - the extensions (without leading dot) to load</li>
///     <li><b>recursive</b> As <class>%Boolean</class> - whether or not to recurse into subdirectories</li>
///     <li><b>filter</b> As <class>%String</class> - a code fragment that can be called through $xecute to
/// 			evaluate a filename and directory. For example: <blockquote><pre>"(fn,dir) quit '$find(fn,""draft"")"</pre></blockquote></li>
/// </ol>
///
/// <p><b>External ID structure:</b> [GroupName][LocalRef]</p>
/// 	<ul>
/// 		<li>GroupName = full path to the directory containing the file</li>
///     <li>LocalRef = file name, including extension</li>
/// </ul>
///
/// <p><b>Lister alias:</b> "FILE"</p>
/// <p><b>Default Processor:</b> <class>%iKnow.Source.File.Processor</class></p>
Class %iKnow.Source.File.Lister Extends %iKnow.Source.Lister [ Deprecated, System = 4 ]
{

Property PathSeparator As %String [ Private ];

Method %OnNew(domId As %Integer) As %Status [ Private, ServerOnly = 1 ]
{
}

/// <p>Scans through the directory as dictated by the Lister Parameters.
/// No metadata is gathered along the way.</p>
/// <p>See also <method class="%iKnow.Source.Lister">ExpandList</method> in <class>%iKnow.Source.Lister</class>.</p>
Method ExpandList(listparams As %List) As %Status
{
}

/// <p>Splits the Full Reference into a Group Name and Local Reference based on their path.</p>
/// <p>See also <method class="%iKnow.Source.Lister">SplitFullRef</method> in <class>%iKnow.Source.Lister</class>.</p>
ClassMethod SplitFullRef(domainId As %Integer, fullRef As %String, Output groupName As %String, Output localRef As %String) As %Status [ Private ]
{
}

/// <p>Appends the file name (local reference) directly to the directory (group name) to form the Full Reference.</p>
/// <p>See also <method class="%iKnow.Source.Lister">BuildFullRef</method> in <class>%iKnow.Source.Lister</class>.</p>
ClassMethod BuildFullRef(domainId As %Integer, groupName As %String, localRef As %String) As %String [ Private ]
{
}

/// <p>Lister alias: "FILE"</p>
ClassMethod GetAlias() As %String
{
}

ClassMethod FormatParams(listerParams As %List) As %String
{
}

/// <p>Tests performed by this Lister:</p>
/// <ol>
/// 		<li>path: checks whether this is a valid string (no check on whether this is a valid path!)</li>
/// 		<li>extensions: no checks</li>
/// 		<li>recursive: no checks</li>
/// 		<li>filter: if nonempty, checks whether this is a valid expression for $xecute() with two parameters</li>
/// </ol>
Method TestParams(listerParams...) As %Status
{
}

/// Builds a reference for use in $$$IKPSIMPLEEXTIDS domains. For File Listers, this
/// defaults to the FULL reference rather than just the Local Ref (overall default)
ClassMethod BuildSimpleRefFromComposite(domainId As %Integer, ref As %List, Output sc As %Status = {$$$OK}) As %String [ Internal ]
{
}

}
