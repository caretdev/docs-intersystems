Class %iKnow.Model.metadataValue Extends %iKnow.Model.node [ Deprecated, System = 3 ]
{

Relationship list As %iKnow.Model.list(XMLPROJECTION = "NONE") [ Cardinality = one, Inverse = metadataValues ];

Property field As %String(MAXLEN = 150, XMLPROJECTION = "ATTRIBUTE");

Property value As %String(MAXLEN = 2000, XMLPROJECTION = "ATTRIBUTE");

Property disabled As %Boolean(XMLPROJECTION = "ATTRIBUTE");

Method %Validate(pDomainId As %Integer, pDomainDefinition As %iKnow.Model.domain) As %Status
{
}

}
