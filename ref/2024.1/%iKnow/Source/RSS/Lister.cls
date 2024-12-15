/// <p>This is a very simple Lister implementation to retrieve RSS data. The Lister will read feeds
/// through a HTTP request and store the set of items retrieved as separate Sources.</p>
///
/// <p><b>Lister Parameters</b> to be supplied to <method>AddListToBatch</method> and
/// 	<method>ProcessList</method> calls:</p>
/// <ol>
///     <li><b>server</b> As <class>%String</class> - The server address to access. fe: "feeds.bbci.co.uk"</li>
/// 	<li><b>URL</b> As <class>%String</class> - The URL path (appended to the server name) leading to the RSS XML, fe: "/news/world/rss.xml"</li>
/// 	<li><b>standard</b> As <class>%String</class> - The RSS standard used to interpret the RSS XML, fe: "Atom2.0" </li>
/// 	<li><b>checkExists</b> As <class>%Boolean</class> - Whether or not to check whether an RSS item already exists before attempting to store it (skipping if it exists),  default 1</li>
/// 	<li><b>textElements</b> As <class>%String</class> - A comma-separated list of RSS item elements to include as the text contents to index for this source. Defaults to "description". (For compatibility with the old "includeTitle" parameter, values 0 and 1 are translated to "description" and "title,description" respectively.</li>
/// </ol>
///
/// <p><b>External ID structure:</b> [GroupName]:::[LocalRef]</p>
/// <ul>
/// 	<li>GroupName = server name</li>
/// 	<li>LocalRef = guid of the individual RSS item</li>
/// </ul>
///
/// <p><b>Extracted metadata:</b> these metadata fields will be populated with corresponding
/// values for each RSS item, where present.</p>
/// <ul>
/// 	<li>Link</li>
/// 	<li>PubDate</li>
/// 	<li>Title</li>
/// </ul>
///
/// <p><b>Lister alias:</b> "RSS"</p>
/// <p><b>Default Processor:</b> <class>%iKnow.Source.Temp.Processor</class></p>
Class %iKnow.Source.RSS.Lister Extends %iKnow.Source.Lister [ Deprecated, System = 4 ]
{

/// <p>Fires an HTTP request to retrieve the RSS xml and then finds the RSS items therein,
/// storing them locally through <method>StoreTemp</method> calls. If they exist in the domain,
/// this Lister will also retrieve and populate the "PubDate", "Link" and "Title" metadata fields.</p>
/// <p>See also <method class="%iKnow.Source.Lister">ExpandList</method> in <class>%iKnow.Source.Lister</class>.</p>
Method ExpandList(listparams As %List) As %Status
{
}

/// <p>This Lister uses <class>%iKnow.Source.Temp.Processor</class>, as all RSS content is saved
/// locally through <method>StoreTemp</method> calls.</p>
ClassMethod DefaultProcessor() As %String
{
}

/// <p>Lister alias: "RSS"</p>
ClassMethod GetAlias() As %String
{
}

/// <p>Identifies the ":::" separator and takes whatever comes before as the group name and
/// the second part as local reference.</p>
/// <p>See also <method class="%iKnow.Source.Lister">SplitFullRef</method> in <class>%iKnow.Source.Lister</class>.</p>
ClassMethod SplitFullRef(domainId As %Integer, fullRef As %String, Output groupName As %String, Output localRef As %String) As %Status [ Private ]
{
}

/// <p>Builds the full ref by appending the group name and local reference, adding a triple colon in between.</p>
/// <p>See also <method class="%iKnow.Source.Lister">BuildFullRef</method> in <class>%iKnow.Source.Lister</class>.</p>
ClassMethod BuildFullRef(domainId As %Integer, groupName As %String, localRef As %String) As %String [ Private ]
{
}

}
