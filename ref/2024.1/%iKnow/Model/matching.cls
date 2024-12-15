/// <p><b>For details on using this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25iKnow.Model.matching">NLP Domains</a>.</p>
/// Model representation of all the dictionary data to be loaded into the iKnow domain (as represented
/// by a <class>%iKnow.Model.domain</class> object).
Class %iKnow.Model.matching Extends %iKnow.Model.node [ Deprecated, System = 3 ]
{

/// If set to 1, this element is ignored when compiling, validating and building the domain
Property disabled As %Boolean(XMLPROJECTION = "attribute");

/// Whether or not to drop all dictionary data at the start of %Build()
Property dropBeforeBuild As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];

/// Whether or not to automatically match all sources at the end of %Build()
Property autoExecute As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];

/// If set to true, errors occurring while creating dictionary elements will be ignored
Property ignoreDictionaryErrors As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 1 ];

/// The list of explicitly specified dictionaries for this domain.
Relationship dictionaries As %iKnow.Model.dictionary(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = matching ];

/// The list of externally defined dictionaries for this domain (CSV or query-based).
Relationship external As %iKnow.Model.dictionaryExternal(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = matching ];

/// Any profiles used by the dictionaries in this domain
Relationship profiles As %iKnow.Model.matchingProfile(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = matching ];

/// The default matching profile to use in this domain.
/// (this overwrites any $$$IKPMATDEFAULTPROFILE setting at the &lt;domain&gt; level)
Property defaultProfile As %String(MAXLEN = 150, XMLPROJECTION = "attribute");

Method %Validate(pDomainId As %Integer, pDomainDefinition As %iKnow.Model.domain) As %Status
{
}

}
