Class %WebStress.Machines.ApplicationServers Extends (%Persistent, %XML.Adaptor, %WebStress.Utils.Version) [ Inheritance = right, Owner = {%Developer}, System = 4 ]
{

Parameter FileTimestamp = "60212,85655";

/// A unique name for the application server
Property Name As %String(TRUNCATE = 1) [ Required ];

/// The address of the web server that can be used to communicate with this application server
/// Examples: 192.168.1.12, MYWEBSERVER
Property WebSrvAddress As %String(TRUNCATE = 1) [ Required ];

/// The port that should be used to communicate with the. This will default to 80 web server
Property WebSrvPort As %Integer [ InitialExpression = 80 ];

/// The URL that will allow communication with the application server for setting/un-setting the encryption flag
/// Example: /csp/webstress/
Property URL As %String(MAXLEN = 255, TRUNCATE = 1) [ Required ];

Property CacheUserName As %String;

Property CachePassword As %String;

Property SecurityCheck As %Boolean [ InitialExpression = 0 ];

}
