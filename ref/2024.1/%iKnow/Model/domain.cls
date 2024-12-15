/// <p>The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the
/// <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW">product
/// documentation</a> for more detail.</p>
/// Model representation of an iKnow domain object. See also <class>%iKnow.Domain</class>
Class %iKnow.Model.domain Extends nodeWithParameters [ Deprecated, System = 3 ]
{

/// The name of the domain, which should be unique within the namespace
Property name As %String(MAXLEN = 150, XMLPROJECTION = "attribute");

/// If set to 0, no domain is generated for this definition, nor is the contents of
/// this &gt;domain&lt; element validated.
Property disabled As %Boolean(XMLPROJECTION = "attribute");

/// If nonempty, objects will be generated representing the various elements in iKnow indexing
/// results in the package named in this attribute. Existing objects will be replaced.
Property objectsPackage As %String(MAXLEN = 150, XMLPROJECTION = "attribute");

/// Wrapper object for all source data locations that should be loaded into this domain.
Property data As %iKnow.Model.data(XMLPROJECTION = "element");

/// Wrapper object for all dictionary data that should be loaded into this domain.
Property matching As %iKnow.Model.matching(XMLPROJECTION = "element");

/// Metadata info for this domain
Property metadata As %iKnow.Model.metadata(XMLPROJECTION = "element");

/// Metrics for this domain
Property metrics As %iKnow.Model.metrics(XMLPROJECTION = "element");

/// The configurations used by this domain
Relationship configurations As %iKnow.Model.configuration(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = domain ];

/// Whether or not to allow custom code to manually create domain objects, add sources, etc,
/// outside of any updates applied by this Domain Definition itself.
/// If set to false (default), only select operations remain available for custom code, such as
/// setting individual metadata values and building metrics.
Property allowCustomUpdates As %Boolean(XMLPROJECTION = "attribute") [ InitialExpression = 0 ];

/// Expression elements for use in this domain definition
Relationship expressions As %iKnow.Model.expression(XMLELEMENTREF = 1, XMLNAME = "expression", XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = domain ];

/// User Dictionaries for use in any configuration objects declared in this definition
Relationship userDictionaries As list Of %iKnow.Model.userDictionary(XMLELEMENTREF = 1, XMLNAME = "userDictionary", XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = domain ];

/// Skiplists for use in this domain
Relationship skiplists As list Of %iKnow.Model.skiplist(XMLELEMENTREF = 1, XMLNAME = "skiplist", XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE") [ Cardinality = many, Inverse = domain ];

/// Build flags to use for this domain. For advanced use only.
/// This should be a sequence of single-digit numbers representing the build flag values for
/// each flag position. A 0 means never build this index; a 9 means always build this index.
Property buildFlags As %String(MAXLEN = 300, XMLPROJECTION = "attribute") [ Internal ];

/// Validates the domain name and its primary parameters, essential to the creation of the domain.
/// <method>%ValidateContent</method> will be called after the domain is instantiated to perform
/// further validation on &lt;domain&gt; contents, being passed the domains ID
Method %Validate() As %Status
{
}

/// This method validates all static elements of the domain, such as metadata field definitions,
/// metrics and any configuration and/or user dictionary objects embedded in this domain definition.
Method %ValidateStatic(pDomainId As %Integer) As %Status
{
}

/// Valiates the child elements of this domain, including &lt;list&gt; and its descendants.
/// This method gets passed in the domain ID of the domain being validated, which could be
/// required for some (nested) checks.
Method %ValidateContent(pDomainId As %Integer) As %Status
{
}

/// Outputs this Domain Definition as a %String
Method %ToString(Output pString As %String, pFormatted As %Boolean = 1) As %Status
{
}

/// Saves this Domain Definition to a class
Method %SaveToClass(pClassName As %String, pOverwriteExisting As %Boolean = 1, pVerbose As %Boolean = 0, pCompile As %Boolean = 1, pSuper As %String = "%iKnow.DomainDefinition") As %Status
{
}

}
