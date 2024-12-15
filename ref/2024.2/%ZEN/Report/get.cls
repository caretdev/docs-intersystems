/// get - issue an HttpRequest to get XML data to insert into a ZEN Report
/// Report Definition
Class %ZEN.Report.get Extends reportNode [ Deprecated, System = 4 ]
{

/// host where data located
Property host As %ZEN.Datatype.string;

/// port where data located
Property port As %ZEN.Datatype.string;

/// url where data located
Property url As %ZEN.Datatype.uri;

}
