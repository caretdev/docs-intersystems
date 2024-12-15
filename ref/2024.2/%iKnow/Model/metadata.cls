/// Model representation of the set of metadata fields to be registered in the iKnow domain (as represented
/// by a <class>%iKnow.Model.domain</class> object).
Class %iKnow.Model.metadata Extends %iKnow.Model.node [ Deprecated, System = 3 ]
{

/// If set to 1, this element is ignored when compiling, validating and building the domain
Property disabled As %Boolean(XMLPROJECTION = "attribute");

/// Metadata fields registered
Relationship fields As %iKnow.Model.metadataField(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = metadata ];

Method %Validate(pDomainId As %Integer, pDomainDefinition As %iKnow.Model.domain) As %Status
{
}

}
