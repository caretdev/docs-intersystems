/// <p>Lister implementation for retrieving sources corresponding to records in a query result.</p>
///
/// <p><b>Lister Parameters</b> to be supplied to <method>AddListToBatch</method> and
/// 	<method>ProcessList</method> calls:</p>
/// <ol>
///     <li><b>query</b> As <class>%String</class> - the query to fetch the data from, wherein each returned row corresponds to an individual source to be indexed.</li>
/// 	<li><b>idField</b> As <class>%String</class> - the column retrieved by the query that contains the identifier we can use as the LocalReference for the source to be stored. Values for this column should not contain colon characters.</li>
/// 	<li><b>groupField</b> As <class>%String</class> - the column retrieved by the query that contains the group name to use as for the source to be stored.</li>
/// 	<li><b>dataFields</b> As <class>%List</class> - the columns retrieved by the query that contain the data to be indexed (currently %String only).</li>
/// 	<li><b>metaFields</b> As <class>%List</class> - the columns retrieved by the query that contain the metadata attributes to set for this source.</li>
/// 	<li><b>metaKeys</b> As <class>%List</class> - the metadata field names, corresponding to the entries in metaFields (if left blank, we assume the column names correspond to the metadata field names).</li>
/// 	<li><b>multiDataFieldMode</b> As <class>%Integer</class> - 0 = concatenate dataFields (default), 1 = store as separate sources (colon+dataField pos is postfixed to idField value).</li>
/// 	<li><b>concatSeparator</b> As <class>%String</class> - separator to use for concatenating multiple fields (default " ").</li>
/// </ol>
///
/// <p><b>External ID structure:</b> [GroupName]:[LocalRef]</p>
/// 	<ul>
/// 		<li>GroupName = either retrieved as a column in the query results or, if none specified, the full query string.</li>
/// 	<li>LocalRef = a unique (within the group) identifier retrieved as one of the query result columns. This should not contain colon characters!</li>
/// </ul>
///
/// <p><b>Lister alias:</b> "SQL"</p>
/// <p><b>Default Processor:</b> <class>%iKnow.Source.Temp.Processor</class></p>
Class %iKnow.Source.SQL.Lister Extends %iKnow.Source.Lister [ Deprecated, System = 4 ]
{

/// <p>Triggers the query and loops through the results, listing each row as a separate source
/// (exception: when multiDataFieldMode = 1). Metadata is retrieved and stored as specified by
/// the metaFields and metaKeys parameters.</p>
/// <p>In the current implementation, the data columns are also fetched and stored locally using
/// <method>StoreTemp</method>.</p>
Method ExpandList(listparams As %List) As %Status
{
}

/// <p>Splits the full reference in group name and ID by finding the last colon, which by definition
/// should separate the local reference (which cannot contain colons) from the group name.</p>
/// <p>See also <method class="%iKnow.Source.Lister">SplitFullRef</method> in <class>%iKnow.Source.Lister</class>.</p>
ClassMethod SplitFullRef(domainId As %Integer, fullRef As %String, Output groupName As %String, Output localRef As %String) As %Status [ Private ]
{
}

/// <p>Builds the full reference by appending the local reference to the group name, adding a colon
/// as a separator in between.</p>
/// <p>See also <method class="%iKnow.Source.Lister">BuildFullRef</method> in <class>%iKnow.Source.Lister</class>.</p>
ClassMethod BuildFullRef(domainId As %Integer, groupName As %String, localRef As %String) As %String [ Private ]
{
}

/// <p>Lister alias: "SQL"</p>
ClassMethod GetAlias() As %String
{
}

/// <p>Default Processor: <class>%iKnow.Source.Temp.Processor</class></p>
ClassMethod DefaultProcessor() As %String
{
}

ClassMethod FormatParams(listerParams As %List) As %String
{
}

/// <p>Tests performed by this Lister:</p>
/// <ol>
/// 		<li>query: checks whether this is a valid SQL statement (type SELECT or CALL)</li>
/// 		<li>idField: checks whether this is a valid column, returned by the above query</li>
/// 		<li>groupField: checks whether this is a valid column, returned by the above query</li>
/// 		<li>dataFields: checks whether these are valid columns, returned by the above query</li>
/// 		<li>metaFields: checks whether these are valid columns, returned by the above query</li>
/// 		<li>metaKeys: checks whether these are existing metadata fields</li>
/// 		<li>multiDataFieldMode: no checks</li>
/// 		<li>concatSeparator: no checks</li>
/// </ol>
Method TestParams(listerParams...) As %Status
{
}

}
