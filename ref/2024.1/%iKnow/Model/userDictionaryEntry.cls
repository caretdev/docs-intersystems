/// Model representation of an <class>%iKnow.UserDictionary</class> entry, as nested in a
/// <class>%iKnow.Model.userDictionary</class> element.
Class %iKnow.Model.userDictionaryEntry Extends %iKnow.Model.node [ Deprecated, System = 3 ]
{

Parameter XMLNAME = "entry";

Relationship userDictionary As %iKnow.Model.userDictionary(XMLPROJECTION = "none") [ Cardinality = one, Inverse = entries ];

/// String to replace in user input.
Property rewriteFrom As %String(MAXLEN = "", XMLPROJECTION = "ATTRIBUTE") [ Required ];

/// String to replace <property>rewriteFrom</property> with.
Property rewriteTo As %String(MAXLEN = "", XMLPROJECTION = "ATTRIBUTE");

/// Label to assign to <property>rewriteFrom</property>
Property assignLabel As %String(VALUELIST = ",UDNegation,UDPosSentiment,UDNegSentiment,UDConcept,UDRelation,UDNonRelevant,UDCertainty,UDUnit,UDNumber,UDTime,UDGeneric1,UDGeneric2,UDGeneric3,UDSentenceEnd,UDSentenceNoEnd", XMLPROJECTION = "ATTRIBUTE");

/// Some attributes accept optional metadata, such as UDCertainty markers, which
/// can take metadata of the form "c=9" to express a certainty level of 9.
Property metadata As %String(MAXLEN = "", XMLPROJECTION = "ATTRIBUTE");

Method %Validate(pDomainId As %Integer, pDomainDefinition As %iKnow.Model.domain) As %Status
{
}

}
