/// Model representation of a specific <class>%iKnow.UserDictionary</class>, which can be referred
/// from <class>%iKnow.Model.configuration</class> entries.
Class %iKnow.Model.userDictionary Extends %iKnow.Model.node [ Deprecated, System = 3 ]
{

Relationship domain As %iKnow.Model.domain(XMLPROJECTION = "none") [ Cardinality = one, Inverse = userDictionaries ];

/// Name of this User Dictionary
Property name As %String(MAXLEN = 150, XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// Optional description
Property description As %String(MAXLEN = 2000, XMLPROJECTION = "ATTRIBUTE");

Relationship entries As list Of %iKnow.Model.userDictionaryEntry(XMLELEMENTREF = 1, XMLNAME = "entry", XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = userDictionary ];

Method %Validate(pDomainId As %Integer, pDomainDefinition As %iKnow.Model.domain) As %Status
{
}

}
