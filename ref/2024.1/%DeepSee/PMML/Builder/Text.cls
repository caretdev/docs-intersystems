Class %DeepSee.PMML.Builder.Text Extends %DeepSee.PMML.Builder.AbstractBuilder [ System = 4 ]
{

Parameter MODELCLASSNAME = "%DeepSee.PMML.Definition.Models.TextModel";

Property EntityCount As %String [ InitialExpression = 50 ];

Property InputLanguages As %String;

/// Whether the model should have separate DataFields for each term or a single containing the whole text
Property InputType As %String(VALUELIST = ",text,terms") [ InitialExpression = "text" ];

Property TermWeightsLocal As %String(VALUELIST = ",termFrequency,binary,logarithmic,augmentedNormalizedTermFrequency") [ InitialExpression = "termFrequency" ];

Property TermWeightsGlobal As %String(VALUELIST = ",inverseDocumentFrequency,none,GFIDF,normal,probabilisticInverse") [ InitialExpression = "inverseDocumentFrequency" ];

Property TermWeightsDocumentNormalization As %String(VALUELIST = ",none,cosine") [ InitialExpression = "none" ];

Property SimilarityType As %String(VALUELIST = ",euclidian,cosine") [ InitialExpression = "cosine" ];

Property TermSelectionMetric As %String(VALUELIST = ",NaiveBayes,BM25");

Method BuildModel(ByRef pModel As %DeepSee.PMML.Definition.Models.AbstractModel) As %Status [ Private ]
{
}

Method GetEntitiesByNBProb(pDomainId As %Integer, ByRef pFilters) As %Status
{
}

Method GetEntitiesByBM25(pDomainId As %Integer, pEntType As %Integer = {$$$ENTTYPECONCEPT}) As %Status
{
}

}
