Class %ZEN.Mobile.RSS.Application Extends %Persistent [ Deprecated, System = 3 ]
{

Parameter DEFAULTGLOBAL = "^ZEN.Mobile.RSS.Application";

/// Together with the NameIndex, this property defines the primary key of this class
/// enabling reference by name
Property Name As %String(MAXLEN = 75);

/// This contains a short description of the application
Property Description As %String(MAXLEN = 250) [ Required ];

/// The application manages a collection of Feeds
Relationship Feeds As Feed [ Cardinality = children, Inverse = Application ];

/// This retreives a subscription by URL
Method GetSubscription(pURL As %String) As Feed
{
}

/// Check to see if the application is already subscribed
Method IsSubscribed(pURL As %String) As %Boolean [ CodeMode = expression ]
{
}

/// Subscribe to a feed. Feed URL is required, an optional tag can be added which can be used to categorize the feed
Method Subscribe(pURL As %String, pTag As %String = "", pTimeout As %Integer = -1, pHttpRequest As %Net.HttpRequest = "") As %Status
{
}

/// UnSubscribe from a feed
Method UnSubscribe(pURL As %String) As %Status
{
}

/// Returns a list of subscriptions
Method ListSubscriptions(Output pURLs As %String) As %Status
{
}

/// Update One Subscription. Given a URL defining a feed, fetch the current items for the feed.
/// If the pPurgeCurrent flag is set to true, then the previously stored contents of the feed will be purged.
/// You can also pass an output parameter to receive the time taken to perform the operation, an output parameter
/// to receive the number of items updated. For advanced usages a timeout and pre-configured HttpRequest object can
/// be passed ( for example for https access, a HttpObject preconfigured with credentials is required )
Method UpdateOneSubscription(pURL As %String, pPurgeCurrent As %Boolean = 0, Output pTimeTaken, Output pItemsUpdated, pTimeout As %Integer = -1) As %Status
{
}

/// Update All Subscriptions. This method will update all the subscriptions owned by this application by fetching
/// the latest list of items and merging them into the database. If a timeout is supplied and exceeded the update
/// will not fail, but report a TimedOut via the pTimedOut parameter. The total number of items updated is reported by
/// the pItemsUpdated parameter
Method UpdateAllSubscriptions(Output pItemsUpdated As %Integer, Output pTimedOut As %Boolean = 0, pTimeout As %Integer = -1) As %Status
{
}

/// Assing the name and decription to the application
Method %OnNew(pName As %String = "", pDescription As %String = "") As %Status [ Private, ServerOnly = 1 ]
{
}

}
