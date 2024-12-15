Class %DeepSee.extensions.modelling.Base [ Abstract, System = 4 ]
{

ClassMethod ClassifierPropName(i As %Integer) As %String
{
}

ClassMethod ClassifierPCName(i As %Integer) As %String
{
}

ClassMethod GetAttributeList(className As %String, Output list As %List) As %Status
{
}

/// BDB473 - "current" PMML definition. It is up to the operator's apply() method to
/// append relevant sections to this PMML definition based on the action the operator represents.
Property PMML As %DeepSee.PMML.Definition.PMML;

}
