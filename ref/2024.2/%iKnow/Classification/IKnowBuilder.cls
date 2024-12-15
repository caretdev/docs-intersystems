/// Parent class for any iKnow-based <class>%iKnow.Classification.Builder</class> implementations,
/// providing common infrastructure abstracting a few iKnow API calls.
/// IKnowBuilder implementations assume category specs are <class>%iKnow.Filters.Filter</class>
/// instances in their string representation.
Class %iKnow.Classification.IKnowBuilder Extends Builder [ Deprecated, System = 4 ]
{

/// The iKnow domain this categorization model is built from
Property DomainId As %Integer;

/// The sample set of the domain to be used for training this model
Property TrainingSet As %iKnow.Filters.Filter;

Property TestSet As %iKnow.Filters.Filter;

/// If set, this metadata field contains the actual category value for each source
Property MetadataField As %String;

Method %OnNew(pDomainName As %String = "", pTrainingSet As %iKnow.Filters.Filter = "", pMethod As %String = "naiveBayes") As %Status [ Internal, ServerOnly = 1 ]
{
}

/// <p>Creates (appends) categories for each of the available values of a given metadata field
/// <var>pFieldName</var> in the full domain (thus ignoring <property>TrainingSet</property>).</p>
/// <p>Note: as category names are case sensitive, it is highly recommended to use a case-sensitive
/// metadata field.</p>
Method %LoadMetadataCategories(pFieldName As %String) As %Status
{
}

/// Builds an array of <class>%iKnow.Filters.Filter</class> objects for the categories registered
/// in this Builder instance.
Method %GetCategoryFilters(Output pFilters, pIntersectWithFilter As %iKnow.Filters.Filter = "", pCheckIfEmpty As %Boolean = 0) As %Status [ Internal ]
{
}

Method %OnReset() As %Status [ Private ]
{
}

/// <p>Utility method to batch-test the classifier against a test set <var>pTestSet</var>, which can
/// be supplied as an <class>%iKnow.Filters.Filter</class> object or its serialized form.
/// Per-record results are returned through <var>pResult</var>:<br/>
/// 			pResult(n) = $lb([record ID], [actual category], [predicted category])</p>
/// <p><var>pAccuracy</var> will contain the raw accuracy (# of records predicted correctly) of
/// the current model. Use <class>%iKnow.Classificaton.Utils</class> for more advanced model testing.</p>
/// <p>If the current model's category options were added through <method>%AddCategory</method> without
/// providing an appropriate category filter specification, rather
/// than through a call to <class>%LoadMetadataCategories</class> (which sets
/// <property>MetadataField</property>), supply a metadata field through <var>pCategorySpec</var>
/// where the actual category values to test against can be found.</p>
Method %TestClassifier(pTestSet As %RawString = "", Output pResult, Output pAccuracy As %Double, pCategorySpec As %String = "", pVerbose As %Boolean = 0) As %Status
{
}

/// <p>This %PopulateTerms implementation accepts "BM25" and "TFIDF" as acceptable values for
/// <var>pMetric</var>.
/// See also the class reference for this method in <class>%iKnow.Classification.Builder</class>.</p>
Method %PopulateTerms(pCount As %Integer = 100, pType As %String = "entity", pMetric As %String = "BM25", pPerCategory As %Boolean = 0) As %Status
{
}

/// Returns an array for the current builder terms:
/// 			pTermInfo(i, "id", n) = entity ID / crc ID / cooc entity IDs / dictItemId
Method %GetTermIDs(Output pTermInfo, Output pDictId As %Integer, Output pDictMap) As %Status [ Internal ]
{
}

/// Returns an array for the current builder terms:
/// 		pTermInfo(i, "spread") = [spread in training set]
/// 		pTermInfo(i, "spread", j) = [spread in training set for category j]
/// 		pTermInfo(i, "frequency", j) = [freq in training set for category j]
Method %GetTermInfo(Output pTermInfo, pIncludeCategoryDetails As %String = "") As %Status [ Internal ]
{
}

/// Helper method to retrieve the Cooccurrence spread for a set of sources defined by <var>pTrainingFilter</var>
Method GetCoocSpread(pDomainId As %Integer, pIDs As %List, pTrainingFilter As %iKnow.Filters.Filter = "", pMode As %String(VALUELIST=",spread,freq") = "spread", Output pSC As %Status) As %Integer [ Internal ]
{
}

Method %OnCreateExportTable(pClassDef As %Dictionary.ClassDefinition, pVerbose As %Boolean) As %Status [ Private ]
{
}

Method %OnExportTable(pClassName As %String, pVerbose As %Boolean, pTracking As %Boolean) As %Status [ Private ]
{
}

Method %OnGenerateClassifier(ByRef pDefinition As %iKnow.Classification.Definition.Classifier, pVerbose As %Boolean = 1, pIncludeBuilderInfo As %Boolean = 0) As %Status [ Private ]
{
}

Method TrainingSetSet(pFilter As %iKnow.Filters.Filter) As %Status [ Internal, ServerOnly = 1 ]
{
}

Method TestSetSet(pFilter As %iKnow.Filters.Filter) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Returns all categories added so far:
/// 		pCategories(n) = $lb([name], [record count])
Method %GetCategoryInfo(Output pCategories) As %Status
{
}

Method %GetRecordCount(Output pSC As %Status) As %Integer
{
}

/// 	^||%IK.TermCandidates(id) = $lb(value, spread)
/// 	^||%IK.TermCandidates(id, j) = [spread in category j]
Method %GetCandidateTerms(pType As %String = "entity") As %Status [ Internal ]
{
}

ClassMethod %DropDictionary(pDictId) As %Status [ Internal ]
{
}

}
