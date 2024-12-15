/// Model representation for metadata fields registered for a specific domain.
/// See also <class>%iKnow.Queries.MetadataI</class> for more information about any specific
/// properties.
Class %iKnow.Model.metadataField Extends %iKnow.Model.node [ Deprecated, System = 3 ]
{

Parameter XMLNAME = "field";

/// The <metadata> element this field belongs to.
Relationship metadata As %iKnow.Model.metadata(XMLPROJECTION = "none") [ Cardinality = one, Inverse = fields ];

/// The name of this metadata field, which should be unique within the domain.
Property name As %String(MAXLEN = 150, XMLPROJECTION = "attribute");

/// Any operators this metadata field is to support at runtime for filtering purposes.
Property operators As %String(MAXLEN = 250, XMLPROJECTION = "attribute") [ InitialExpression = {$$$MDOPEQUAL} ];

/// The data type of this metadata field. Any of $$$MDDTSTRING, $$$MDDTNUMBER or $$$MDDTDATE
Property dataType As %String(MAXLEN = 10, XMLPROJECTION = "attribute") [ InitialExpression = {$$$MDDTSTRING} ];

/// Storage type for this metadata field: either $$$MDSTNORMAL for cases where you would use a normal
/// index, $$$MDSTBITMAP where you would use a bitmap index (few different
/// metadata values compared to total # of records)
Property storage As %Integer(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Whether or not this metadata fields content should be treated with case sensitivity.
Property caseSensitive As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// If set to 1, this element is ignored when compiling, validating and building the domain
Property disabled As %Boolean(XMLPROJECTION = "attribute");

Method %Validate(pDomainId As %Integer, pDomainDefinition As %iKnow.Model.domain) As %Status
{
}

}
