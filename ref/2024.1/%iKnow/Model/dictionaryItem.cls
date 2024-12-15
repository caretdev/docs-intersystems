/// Model representation of a Dictionary Item.
/// See also <class>%iKnow.Matching.DictionaryAPI</class>
Class %iKnow.Model.dictionaryItem Extends %iKnow.Model.node [ Deprecated, System = 3 ]
{

Parameter XMLNAME = "item";

/// The Dictionary this item belongs to.
Relationship dictionary As %iKnow.Model.dictionary(XMLPROJECTION = "none") [ Cardinality = one, Inverse = items ];

/// The Dictionary Terms this item contains.
Relationship terms As %iKnow.Model.dictionaryTerm(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = item ];

/// The Dictionary Formats this item contains.
Relationship formats As %iKnow.Model.dictionaryFormat(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = item ];

/// The name of this Dictionary Item.
Property name As %String(MAXLEN = 150, XMLPROJECTION = "ATTRIBUTE");

/// A URI for this Dictionary Item. This URI should be unique within the Domain (across dictionaries)
Property uri As %String(MAXLEN = 150, XMLPROJECTION = "ATTRIBUTE");

/// The default language to use for any terms in this item.
Property language As %String(MAXLEN = 10, XMLPROJECTION = "ATTRIBUTE");

/// If set to 1, this element is ignored when compiling, validating and building the domain
Property disabled As %Boolean(XMLPROJECTION = "attribute");

Method %Validate(pDomainId As %Integer, pDomainDefinition As %iKnow.Model.domain) As %Status
{
}

}
