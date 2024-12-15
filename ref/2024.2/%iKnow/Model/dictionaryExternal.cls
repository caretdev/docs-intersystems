/// This element allows loading dictionary content from an external file or from a SQL query,
/// as an alternative to fully listing the dictionary content in &lt;dictionary&gt;,
/// &lt;item&gt; and &lt;term&gt; elements.
Class %iKnow.Model.dictionaryExternal Extends %iKnow.Model.node [ Deprecated, System = 3 ]
{

Parameter XMLNAME = "external";

/// Link to the &lt;matching&gt; element this dictionary belongs to.
Relationship matching As %iKnow.Model.matching(XMLPROJECTION = "none") [ Cardinality = one, Inverse = external ];

/// The query to source the dictionary content from
Property sql As %String(MAXLEN = 2000, XMLPROJECTION = "ATTRIBUTE");

/// The file containing the dictionary content
Property file As %String(MAXLEN = 2000, XMLPROJECTION = "ATTRIBUTE");

/// When referring to a file, this property defines the delimiter separating the different columns in the file
Property delimiter As %String(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = ";" ];

/// When referring to a file, this property defines how many header rows to skip at the top of the file
Property headerRows As %Integer(XMLPROJECTION = "ATTRIBUTE");

Relationship columns As %iKnow.Model.dictionaryExternalColumn(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = external ];

Method %Validate(pDomainId As %Integer, pDomainDefinition As %iKnow.Model.domain) As %Status
{
}

}
