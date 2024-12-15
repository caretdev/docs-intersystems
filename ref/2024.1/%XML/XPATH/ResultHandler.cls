/// Handles results of XPATH expression validation
Class %XML.XPATH.ResultHandler Extends %RegisteredObject [ System = 3 ]
{

/// This method is called when a match is made. It specifies the Match key as well
/// as the result type. The type may be $$$XPATHVALUE or $$$XPATHDOM
Method StartMatch(pResultType As %Integer)
{
}

/// This method is called when a match is completed
Method EndMatch(pMatch As %Integer)
{
}

Method Result(pChunk As %Integer, pResult As %String)
{
}

Method Attribute(pIndex As %Integer, pParent As %Integer, pName As %String, pLocalName As %String, pUri As %String, pValue As %String)
{
}

Method Node(pIndex As %Integer, pParent As %Integer, pNodeType As %Integer, pName As %String, pLocalName As %String, pUri As %String)
{
}

Method Value(pIndex As %Integer, pChunk As %Integer, pValue As %String)
{
}

Method NodeType(pNodeType As %Integer = "") As %String
{
}

}
