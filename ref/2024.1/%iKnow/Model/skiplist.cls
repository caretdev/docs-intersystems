/// Model representation of a skiplist, containing entities to be left out of processing
Class %iKnow.Model.skiplist Extends %iKnow.Model.node [ Deprecated, System = 4 ]
{

Relationship domain As %iKnow.Model.domain(XMLPROJECTION = "none") [ Cardinality = one, Inverse = skiplists ];

/// Name of the skiplist
Property name As %String(XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property description As %String(XMLPROJECTION = "ATTRIBUTE");

Property entries As list Of %String(XMLNAME = "entry", XMLPROJECTION = "ELEMENT");

Method %Validate(pDomainId As %Integer, pDomainDefinition As %iKnow.Model.domain) As %Status
{
}

}
