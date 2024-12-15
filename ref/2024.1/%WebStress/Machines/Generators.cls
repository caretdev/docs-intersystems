Class %WebStress.Machines.Generators Extends (%Persistent, %XML.Adaptor, %WebStress.Utils.Version) [ Inheritance = right, Owner = {%Developer}, System = 4 ]
{

Parameter FileTimestamp = "60212,85655";

/// A text description of this machine
Property Name As %String(TRUNCATE = 1) [ Required ];

/// This is the address of the web server that will give access to this generator
///
Property Address As %String(TRUNCATE = 1) [ Required ];

/// The virtual directory which is bound to the WebStress application
/// Examples: /webstress/
///           /csp/webstress/
Property WebStressDir As %String(MAXLEN = 255, TRUNCATE = 1);

/// This should be used if talking directly to the generator rather than through a web server
Property DirectPort As %Integer;

Property CacheUserName As %String;

Property CachePassword As %String;

ClassMethod GetCredentials(arg As %String, ByRef Username As %String, ByRef Password As %String) As %Status
{
}

}
