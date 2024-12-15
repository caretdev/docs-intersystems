/// <p>This Builder Method implementation generates category term weights as a vector per category that
/// exists in the same vector space as the document term vector. The similarity between the
/// document vector and each of the category vectors can then be calculated using euclidean distance
/// or cosine similarity (angle). Alternatively, these weights can be used for a linear regression
/// formula, calculating a score rather than a similarity/distance.</p>
/// <p>A combination of global term weights (across the corpus), local term weights (within each
/// category) and normalization (per category) is used to calculate these category vectors.</p>
Class %iKnow.Classification.Methods.VectorSpace Extends Base [ Abstract, Deprecated, System = 4 ]
{

Property CustomTermWeights [ MultiDimensional ];

/// The per-category term weight factor
Property CategoryLocalTermWeights As %String(VALUELIST = ",binary,linear,logarithmic") [ InitialExpression = "linear" ];

/// The metric to use for calculating the local term weights
Property CategoryLocalTermMetric As %String(VALUELIST = ",frequency,spread") [ InitialExpression = "spread" ];

/// The corpus-wide relevancy factor to take into account when calculating term weights
Property CategoryGlobalTermWeights As %String(VALUELIST = ",none,IDF") [ InitialExpression = "IDF" ];

/// Whether and how to normalize the category vectors
Property CategoryNormalization As %String(VALUELIST = ",none,cosine") [ InitialExpression = "none" ];

/// Sets a custom weight factor for the term at <var>pIndex</var> in <var>pCategory</var>.
Method %SetCustomWeight(pIndex As %Integer, pCategory As %String, pCustomWeight As %Double) As %Status
{
}

Method %SetCustomWeights(pIndex As %Integer, ByRef pCustomWeights) As %Status
{
}

/// Callback invoked whenever an entire term at an index has been removed
Method %OnRemoveTerm(pIndex As %Integer) As %Status
{
}

Method %BuildClassificationMethod(ByRef pClassifier As %iKnow.Classification.Definition.Classifier, pVerbose As %Boolean = 1, pIncludeBuilderParams As %Boolean = 1) As %Status
{
}

Method %LoadFromModel(pDefinition As %iKnow.Classification.Definition.Classifier) As %Status
{
}

Method %LoadMethodBuilderProperties(pMethodBuilder As Base) As %Status [ Internal ]
{
}

}
