/// Subclasses of this class represent the result of a single match following an XPATH expression evaluation
Class %XML.XPATH.Result Extends %Persistent [ StorageStrategy = custom, System = 4 ]
{

/// This holds the type of the result, $$$XPATHVALUE or $$$XPATHDOM
Property Type As %Integer [ Calculated ];

/// This holds the key into ^IRIS.Temp which holds the results
Property target As %Integer;

Method TypeGet() As %Integer
{
}

Method %OnClose() As %Status [ Private ]
{
}

}
