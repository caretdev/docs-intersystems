Class %WebStress.Scripts.URLS Extends (%Persistent, %XML.Adaptor) [ Inheritance = right, Owner = {%Developer}, System = 4 ]
{

Parameter FileTimestamp = "60212,85655";

Relationship Script As %WebStress.Scripts [ Cardinality = parent, Inverse = URLs ];

/// This is the port that was explicitly specified in the original call
Property SpecifiedPort As %String(TRUNCATE = 1);

/// This is the verb that was used to call this web reference. Expected answers are either GET or POST.
Property Verb As %String(TRUNCATE = 1);

/// This is the URL of the call
Property Path As %String(MAXLEN = 10000, TRUNCATE = 1);

/// This specifies an explicit server address that is different from that specified for the test
Property ServerChange As %String(TRUNCATE = 1);

/// This is the user entered description of the functionality of this URL
Property Description As %String(MAXLEN = 30, TRUNCATE = 1);

/// The delay in milliseconds before calling this URL
Property Delay As %Integer;

/// This is an array of the headers sent by the browser
Property Headers As array Of %String(TRUNCATE = 1);

Relationship Parameters As %WebStress.Scripts.URLS.Parameters [ Cardinality = children, Inverse = URL ];

/// The code that should be executed before the web call is made
/// Example 1 - do PreURL20^Random.Script.1
/// Example 2 - do ##class(MyPackage.MyClass).GetParams1(.params)
Property PreExecute As %String(MAXLEN = 100, TRUNCATE = 1);

/// The code that should be called after the web call is completed
/// Example 1 - do PostURL20^Random.Script.1
/// Example 2 - do ##class(MyPackage.MyClass).AfterCall1()
Property PostExecute As %String(MAXLEN = 100, TRUNCATE = 1);

/// This is the recorded request that was sent from the browser
Property Request As %GlobalCharacterStream;

/// This is the recorded response that was received back from the webserver
Property Response As %GlobalCharacterStream;

/// This is the number of milliseconds that were recorded between the request
/// being received from the browser and the response being sent back from the server
Property RecordedTime As %Integer;

/// This is similar to the RecordedTime but is the total time for the page with all of its components
Property PageTime As %Integer [ Calculated, SqlComputeCode = {	set id={ID}

Property NumberOfParameters As %Integer [ Calculated, SqlComputeCode = {	set id={ID}

/// The protocol used
Property Protocol As %String(TRUNCATE = 1);

/// Indicates that this URL is the start of a page 'group'.
Property PageMarker As %Boolean;

Method NumberOfParametersGet() As %Integer
{
}

Method PageTimeGet() As %Integer
{
}

Method DumpToFile() As %String
{
}

Method DestroyDumpFile(file)
{
}

}
