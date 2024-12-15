/// <p>This classification method relies on the Naive Bayes theorem to calculate the probability
/// a document belongs to a category based on probability scores for the individual terms.</p>
/// <p>Given this probability-based approach, the document vector local weights and normalization
/// settings are fixed at "binary" and "none" respectively.</p>
Class %iKnow.Classification.Methods.naiveBayes Extends Base [ Deprecated, System = 4 ]
{

Method %BuildClassificationMethod(ByRef pClassifier As %iKnow.Classification.Definition.Classifier, pVerbose As %Boolean = 1, pIncludeBuilderParams As %Boolean = 1) As %Status
{
}

}
