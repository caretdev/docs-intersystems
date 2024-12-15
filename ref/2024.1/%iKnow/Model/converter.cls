/// Model representation of a <class>%iKnow.Source.Converter</class> class to use while indexing.
Class %iKnow.Model.converter Extends %iKnow.Model.nodeWithParameters [ Deprecated, System = 3 ]
{

/// The class of the converter to use, which should extend <class>%iKnow.Source.Converter</class>.
/// The actual Converter class dictates the contents of the <property>parameters</property> property
/// for this element.
Property converterClass As %String(MAXLEN = 250, XMLPROJECTION = "attribute");

Method %Validate(pDomainId As %Integer, pDomainDefinition As %iKnow.Model.domain) As %Status
{
}

}
