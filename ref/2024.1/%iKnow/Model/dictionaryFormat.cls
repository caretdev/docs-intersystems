/// Model representation of a Dictionary Term consisting of a single Dictionary Format element.
/// See also <class>%iKnow.Matching.DictionaryAPI</class>
Class %iKnow.Model.dictionaryFormat Extends %iKnow.Model.node [ Deprecated, System = 3 ]
{

Parameter XMLNAME = "format";

Relationship item As %iKnow.Model.dictionaryItem(XMLPROJECTION = "none") [ Cardinality = one, Inverse = formats ];

/// The implementation class to use for matching this format. This should be a subclass of
/// <class>%iKnow.Matching.Formats.Format</class>
Property formatClass As %String(MAXLEN = 250, XMLPROJECTION = "ATTRIBUTE");

/// Any parameters required by <property>formatClass</property>
Property formatParams As %String(MAXLEN = 1000, XMLPROJECTION = "ATTRIBUTE");

/// If set to 1, this element is ignored when compiling, validating and building the domain
Property disabled As %Boolean(XMLPROJECTION = "attribute");

Method %Validate(pDomainId As %Integer, pDomainDefinition As %iKnow.Model.domain) As %Status
{
}

}
