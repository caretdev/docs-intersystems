Class %Dictionary.RoseLinkUtility Extends %RegisteredObject [ System = 3 ]
{

Property XmlStream As %GlobalCharacterStream;

Property MemberListStream As %GlobalCharacterStream;

Property NewClassname As %String(MAXLEN = 32768);

Method LoadToXmlStream(tClassname As %String) As %Status
{
}

Method SaveFromXmlStream() As %Status
{
}

ClassMethod SupportFeature(feature = "") As %Boolean
{
}

ClassMethod HasSecurityPermission() As %Boolean
{
}

}
