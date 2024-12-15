Class %iKnow.Classification.Methods.Base Extends %RegisteredObject [ Deprecated, System = 4 ]
{

Property Builder As %iKnow.Classification.Builder;

Method %OnNew(pBuilder As %iKnow.Classification.Builder) As %Status
{
}

Method %LoadFromModel(pDefinition As %iKnow.Classification.Definition.Classifier) As %Status
{
}

Method %BuildClassificationMethod(ByRef pClassifier As %iKnow.Classification.Definition.Classifier, pIncludeBuilderParams As %Boolean = 1, pVerbose As %Boolean = 1) As %Status
{
}

/// Callback invoked whenever an entire term at an index has been removed
Method %OnRemoveTerm(pIndex As %Integer) As %Status
{
}

/// Recycle properties from the previous MethodBuilder object if possible
Method %LoadMethodBuilderProperties(pMethodBuilder As Base) As %Status [ Internal ]
{
}

}
