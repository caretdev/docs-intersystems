/// This class provides a SAX Entity resolver for a named class. Use this class when you want to define a
/// named entity (typically an XML Schema) in an XDATA block.
Class %XML.SAX.XDataEntityResolver Extends %XML.SAX.EntityResolver [ System = 3 ]
{

/// This holds the name of the class in which to resove XDATA blocks
Property TargetClassName As %String [ Private, ReadOnly ];

/// This is the method used by the SAX parser to actually resolve the entity
Method resolveEntity(pPublicID As %String, pSystemID As %String) As %Library.Integer
{
}

/// This is a helper method which will retrieve a named XDATA block from the named class
ClassMethod EntityFromXDATA(Output pStream As %BinaryStream, pClassName As %String, pXDATAName As %String) As %Status
{
}

Method %OnNew(initvalue As %RawString) As %Status [ Private, ProcedureBlock = 1 ]
{
}

}
