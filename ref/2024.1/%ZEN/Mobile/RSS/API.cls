/// This class provides the API for the RSS implementation
Class %ZEN.Mobile.RSS.API Extends %RegisteredObject [ Deprecated, System = 3 ]
{

/// Create an application, at minimum a name and description must be supplied
ClassMethod %CreateApplication(pName As %String, pDescription As %String, Output pApplication As Application) As %Status
{
}

/// Test a Feed, URL must be supplied. Optionally supplied a preconfigured HttpRequest. Returns True if an Accessible Feed,
/// Otherwise false. If false examine pStatus for an an explanation of why the feed is not accessible ( if you care )
ClassMethod %TestFeed(pURL As %String, Output pStatus As %Status, pTimeout As %Integer = -1, pHttpRequest As %Net.HttpRequest = "") As %Boolean
{
}

/// Delete a named application
ClassMethod %DeleteApplication(pName As %String) As %Status [ CodeMode = expression ]
{
}

/// Test for existence of a named application
ClassMethod %ExistsApplication(pName As %String) As %Boolean [ CodeMode = expression ]
{
}

/// Returns a list of defined applications
ClassMethod %ListApplications(Output pNames As %String) As %Status
{
}

/// Open a named application
ClassMethod %OpenApplication(pName As %String, Output pObject As Application) As %Status
{
}

/// Exercise the API
ClassMethod %Exercise(pFeedURL As %String = "feed://www.npr.org/rss/rss.php?id=1001")
{
}

}
