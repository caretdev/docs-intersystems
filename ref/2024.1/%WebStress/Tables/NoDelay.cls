Class %WebStress.Tables.NoDelay Extends (%Persistent, %XML.Adaptor) [ Inheritance = right, Owner = {%Developer}, System = 4 ]
{

Parameter FileTimestamp = "60212,85655";

/// The suffix type (jpg,gif,etc)
Property Code As %String(TRUNCATE = 1, XMLPROJECTION = "Attribute");

/// Free text that describes the type of file
Property Description As %String(TRUNCATE = 1, XMLPROJECTION = "Attribute");

/// Name of item to correlate on to import this XData
Parameter CorrelateOn = "Item";

XData UI
{
}

/// This is called by the projection method to find the XDATA blocks and build the persistent data from the items within these blocks
ClassMethod Populate() As %Status
{
}

}
