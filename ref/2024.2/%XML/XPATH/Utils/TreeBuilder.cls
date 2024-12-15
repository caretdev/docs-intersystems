/// This class stores the results of evaluation of an XPATH expression in ^IRIS.Temp(Tree,MatchKey)
/// The Tree is a unique integer value, the MatchKey is an integer key which varies from 1 .. n. For
/// each match of the xpath expression, the results are stored in the appropriate subtree of ^IRIS.Temp.
/// The match results can be of two forms, values and DOMS. If the XPATH expression matches an element,
/// a DOM is returned which represents the matching element and it's childeren. If the XPATH expression matches
/// a value then just the value is returned.
Class %XML.XPATH.Utils.TreeBuilder Extends %XML.XPATH.ResultHandler [ System = 4 ]
{

/// This holds the current first subscript of ^IRIS.Temp
Property Tree As %Integer;

/// This holds the collection of results
Property Results As %RawString;

/// This method is called at the end of a match
Method EndMatch(pMatch As %Integer)
{
}

/// This method is called when a match is made. It specifies the Match key as well
/// as the type. The type may be $$$XPATHVALUE or $$$XPATHDOM
Method StartMatch(pResultType As %Integer)
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

}
