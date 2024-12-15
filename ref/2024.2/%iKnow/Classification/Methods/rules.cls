Class %iKnow.Classification.Methods.rules Extends Base [ Deprecated, System = 4 ]
{

Property ClassificationRules As %iKnow.Classification.Definition.ClassificationRules;

Method %OnNew(pBuilder As %iKnow.Classification.Builder) As %Status
{
}

Method %LoadFromModel(pDefinition As %iKnow.Classification.Definition.Classifier) As %Status
{
}

Method %BuildClassificationMethod(ByRef pClassifier As %iKnow.Classification.Definition.Classifier, pVerbose As %Boolean = 1, pIncludeBuilderParams As %Boolean = 1) As %Status
{
}

/// Generate a default rule set.
/// Note: this will be a simple, first set of draft rules, not an optimized set!
Method %GenerateRules() As %Status
{
}

/// Callback invoked whenever an entire term at an index has been removed
Method %OnRemoveTerm(pIndex As %Integer) As %Status
{
}

Method UpdateTermReferences(pPredicate As %iKnow.Classification.Definition.PredicateBase, pIndex As %Integer, pParent, pParentPosition As %Integer) As %Status [ Private ]
{
}

}
