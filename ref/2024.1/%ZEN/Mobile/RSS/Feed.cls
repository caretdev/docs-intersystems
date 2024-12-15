/// This represents an RSS feed
Class %ZEN.Mobile.RSS.Feed Extends %Persistent [ Deprecated, System = 3 ]
{

Parameter DEFAULTGLOBAL = "^ZEN.Mobile.RSS.Feed";

/// This is the feed URL
Property URL As %String(MAXLEN = "") [ Required ];

/// This is the Title of the feed (derived from Channel/title)
Property Title As %String(MAXLEN = "") [ Required ];

/// This represents the URL at which the feed presents itself (derived from Channel/link)
Property Link As %String(MAXLEN = "") [ Required ];

/// This is a description of the contents of the feed
Property Description As %String(MAXLEN = "") [ Required ];

/// This holds whatever data the user wishes to add to categorize this feed
Property Tag As %String(MAXLEN = "");

/// This defines the relationship to the parent
Relationship Application As Application [ Cardinality = parent, Inverse = Feeds ];

/// This represents the collection of items which makes up the feed
Relationship Items As Item [ Cardinality = children, Inverse = Feed ];

Method %OnNew(pURL As %String, pTag As %String = "", pTimeout As %Integer = -1, pHttpRequest As %Net.HttpRequest = "") As %Status
{
}

/// Call this method to refresh the items from the feed
Method Refresh(Output pItemsFiled As %Integer, pPurgeCurrent As %Boolean, pTimeout As %Integer = -1, pHttpRequest As %Net.HttpRequest = "") As %Status
{
}

/// Given a URL fetch the contents and present as a stream
ClassMethod FetchFromURL(pURL, Output pStream, pTimeout, pHttpRequest) As %Status [ Private ]
{
}

/// Fetch the contents of a net URL
ClassMethod FetchNetURL(pURL As %Status, Output pStream As %BinaryStream, pTimeout As %Integer = -1, pHttpRequest As %Net.HttpRequest = "") As %Status
{
}

/// This method extracts the retrieve item objects from the XPATH results
ClassMethod ExtractItemsFromResults(pResults As %ListOfObjects(CLASSNAME="%XML.XPATH.Result"), Output pItems) As %Status
{
}

ClassMethod BuildItem(ByRef pItem As %String) As %ZEN.Mobile.RSS.Item [ CodeMode = expression ]
{
}

XData FeedChannelXSLT
{
}

XData FeedItemsXSLT
{
}

}
