/// <p>The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the
/// <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW">product
/// documentation</a> for more detail.</p>
/// <p>This is the framework class for building Text Categorization models, generating valid
/// <class>%iKnow.Classification.Classifier</class> subclasses.<br/>Here's an example
/// using the <class>%iKnow.Classification.IKnowBuilder</class>:</p>
/// <example>
/// // first initialize training and test sets
/// set tDomainId = $system.iKnow.GetDomainId("Standalone Aviation demo")
/// set tTrainingSet = ##class(%iKnow.Filters.SimpleMetadataFilter).%New(tDomainId, "Year", "<", 2007)
/// set tTestSet = ##class(%iKnow.Filters.GroupFilter).%New(tDomainId, "AND", 1) // NOT filter
/// do tTestSet.AddSubFilter(tTrainingSet)
///
/// // Initialize Builder instance with domain name and test set
/// set tBuilder = ##class(%iKnow.Classification.IKnowBuilder).%New("Standalone Aviation demo", tTrainingSet)
///
/// // Configure it to use a Naive Bayes classifier
/// 	set tBuilder.ClassificationMethod = "naiveBayes"
///
/// // Load category info from metadata field "AircraftCategory"
/// write tBuilder.%LoadMetadataCategories("AircraftCategory")
///
/// // manually add a few terms
/// write tBuilder.%AddEntity("ultralight vehicle")
/// set tData(1) = "helicopter", tData(2) = "helicopters"
/// write tBuilder.%AddEntity(.tData)
/// write tBuilder.%AddEntity("balloon",, "partialCount")
/// write tBuilder.%AddCooccurrence($lb("landed", "helicopter pad"))
///
/// // or add them in bulk by letting the Builder instance decide
/// write tBuilder.%PopulateTerms(50)
///
/// // after populating the term dictionary, let the Builder generate a classifier class
/// write tBuilder.%CreateClassifierClass("User.MyClassifier")
/// </example>
Class %iKnow.Classification.Builder Extends %RegisteredObject [ Abstract, Deprecated, System = 4 ]
{

/// The minimum number of records in the training set that should contain a term before it
/// can get selected by <method>%PopulateTerms</method>. (Can be bypassed for specific terms
/// by adding them through <method>%AddTerm</method>)
Property MinimumSpread As %Integer [ InitialExpression = 3 ];

/// The minimum fraction of records in the training set that should contain a term before it
/// can get selected by <method>%PopulateTerms</method>, EXCEPT if it occurs in more than 50%
/// of the records in at least one category. (Can be bypassed for specific terms by adding them
/// through <method>%AddTerm</method>)
Property MinimumSpreadPercent As %Double [ InitialExpression = 0.05 ];

/// Optional description for the Classifier
Property Description As %String;

/// Local Term Weights for the document vector to register in the ClassificationMethod element.
/// This might be overruled for some classification methods (ie Naive Bayes, which always uses "binary")
Property DocumentVectorLocalWeights As %String(VALUELIST = ",binary,linear,logarithmic") [ InitialExpression = "linear" ];

/// Document vector normalization method to register in the Classification element
/// This might be overruled for some classification methods (ie Naive Bayes, which always uses "none")
Property DocumentVectorNormalization As %String(VALUELIST = ",none,cosine") [ InitialExpression = "none" ];

Property Terms As list Of %iKnow.Classification.Definition.Term [ Internal ];

/// Categories.GetAt(i) = $lb("name", "spec", "description", "recordCount")
Property Categories As list Of %List [ Internal ];

/// The metric used for selecting terms for this classifier.
/// This is for information purposes only.
Property TermSelectionMetric As %String [ Internal ];

/// The general method used for classification:
/// <ul>
/// <li>"naiveBayes" uses a probability-based approach based on the Naive Bayes theorem,</li>
/// <li>"rules" runs through a set of straightforward decision rules based on boolean expressions, each
/// contributing to a single category's score if they fire. The category with the highest score wins.</li>
/// <li>"euclideanDistance" treats the per-category term weights as a vector in the same vector
/// space as the document term vector and calculates the euclidean distance between these vectors
/// and the query vector.</li>
/// <li>"cosineSimilarity" also treats the per-category term weights as a vector in the same vector
/// space as the document term vector and looks at the (cosine of) the angle between these vectors.</li>
/// <li>"linearRegression" considers the per-category term weights to be coefficients in a linear
/// regression formula for calculating a category score, with the highest value winning</li>
/// <li>"pmml" delegates the mathematical work to a predictive model defined in PMML. See also
/// <class>%iKnow.Classification.Methods.pmml</class></li>
/// </ul>
Property ClassificationMethod As %String(VALUELIST = ",naiveBayes,linearRegression,euclideanDistance,cosineSimilarity,pmml,rules") [ InitialExpression = "naiveBayes" ];

/// Used by some models to refine the terms selected and/or how their default score is calculated
Property EntityRole As %Integer [ InitialExpression = {$$$ENTTYPECONCEPT}, Internal ];

/// Adds an optional category named <var>pName</var> for the classifier being built by this class.
/// The meaning of <var>pSpec</var> depends on the actual builder implementation, but should
/// allow the builder implementation to identify the records in the training set belonging to
/// this category.
Method %AddCategory(pName As %String, pSpec As %String, pRecordCount As %Integer = "", pDescription As %String = "") As %Status [ Final ]
{
}

/// Returns all categories added so far:
/// 		pCategories(n) = $lb([name], [record count])
Method %GetCategoryInfo(Output pCategories) As %Status [ Abstract ]
{
}

Method %GetCategoryPosition(pName As %String) As %Integer [ Internal ]
{
}

/// Returns all terms added so far:
/// 		pTerms(n) = $lb([string value], [type], [negation policy], [count policy])
Method %GetTerms(Output pTerms) As %Status
{
}

/// <p><b>Deprecated: use <method>%AddEntity</method>, <method>%AddCRC</method> or
/// <method>%AddCooccurrence</method> instead</b></p>
/// <p>Adds a term whose presence or frequency is to be considered for categorizing by the
/// classifier being built by this class.</p>
Method %AddTerm(pValue As %String, pType As %String = "entity", ByRef pCustomWeights, pNegation As %String = "undefined") As %Status [ Deprecated, Final, Internal ]
{
}

/// <p>Adds one or more entities as a single term to the Text Categorization model's term dictionary.
/// The term is to be counted only if it appears in the negation context defined by <var>pNegation</var>.
/// If <var>pCount</var> = "exactCount", only exact occurrences of this entity will be counted to
/// calculate its base score to be fed into the categorization algorithm. If it is set to "partialCount",
/// both exact and partial matches will be considered and if set to "partialScore", the score of all
/// exact and partial matches will be summed as this term's base score.</p>
/// <p>Multiple entities can be supplied either as a one-dimensional array or as a %List</p>.
Method %AddEntity(ByRef pValue As %String, pNegation As %String = "undefined", pCount As %String = "exactCount", Output pIndex As %Integer) As %Status [ Final ]
{
}

/// <p>Adds one or more CRCs as a single term to the Text Categorization model's term dictionary.
/// The term is to be counted only if it appears in the negation context defined by <var>pNegation</var>.
/// If <var>pCount</var> = "exactCount", only exact occurrences of this CRC will be counted to
/// calculate its base score to be fed into the categorization algorithm. If it is set to "partialCount",
/// both exact and partial matches will be considered and if set to "partialScore", the score of all
/// exact and partial matches will be summed as this term's base score.</p>
/// <p>Multiple CRC can be supplied either as a one-dimensional array of 3-element-%Lists</p>.
Method %AddCRC(ByRef pCRC As %List, pNegation As %String = "undefined", pCount As %String = "exactCount", Output pIndex As %Integer) As %Status [ Final ]
{
}

/// <p>Adds one or more Cooccurrences as a single term to the Text Categorization model's term dictionary.
/// The term is to be counted only if it appears in the negation context defined by <var>pNegation</var>.
/// If <var>pCount</var> = "exactCount", only exact occurrences of this cooccurrence's entities will be counted to
/// calculate its base score to be fed into the categorization algorithm. If it is set to "partialCount",
/// both exact and partial matches will be considered and if set to "partialScore", the score of all
/// exact and partial matches will be summed as this term's base score.</p>
/// <p>A single cooccurrence can be supplied as a one-dimensional array of strings or a %List.
/// Multiple cooccurrences can be supplied either as a one-dimensional array of %Lists or as a
/// two-dimensional array of strings</p>.
Method %AddCooccurrence(ByRef pValue As %List, pNegation As %String = "undefined", pCount As %String = "exactCount", Output pIndex As %Integer) As %Status [ Final ]
{
}

/// Directly add a term object at the last index. (no existence checking!)
Method %AddTermInternal(pTerm As %iKnow.Classification.Definition.Term, Output pIndex As %Integer) As %Status [ Internal ]
{
}

Method %GetTermPosition(pTerm As %iKnow.Classification.Definition.Term) As %Integer [ Internal ]
{
}

/// Removes the term at index <var>pIndex</var>. If the term at this position is a composite one,
/// all its entries are dropped along.
Method %RemoveTermAtIndex(pIndex As %Integer) As %Status
{
}

/// Removes a specific entry <var>pValue</var> from the term at index <var>pIndex</var>.
Method %RemoveTermEntryAtIndex(pValue As %String, pIndex As %Integer, Output pRemovedTerm As %Boolean) As %Status
{
}

/// Removes <var>pValue</value> from the first term that contains it meeting the <var>pType</var>
/// <var>pNegation</var> and <var>pCount</var> criteria. If this is the last entry for that term,
/// remove the whole term.
Method %RemoveTerm(pValue As %String, pType As %String = "entity", pNegation As %String = "undefined", pCount As %String = "exactCount") As %Status
{
}

/// <p>Adds <var>pCount</var> terms of type <var>pType</var> to this classifier's set of terms,
/// selecting those terms that have a high relevance for the categorization task based on metric
/// <var>pMetric</var> and/or the specifics of this builder implementation.</p>
/// <p>If <var>pPerCategory</var> is 1, (<var>pCount</var> \ [number of categories]) terms are
/// selected using the specified metric as calculated within each category. This often gives
/// better results, but might not be supported for every metric or builder.</p>
/// <p>Builder implementations should ensure these terms meet the conditions set forward by
/// <property>MinimumSpread</property> and <property>MinimumSpreadPercent</property>.
/// <property>MinimumSpreadPercent</property> can be ignored if <var>pPerCategory</var> = 1</p>
/// <p>This method implements a populate method for <var>pMetric</var> = "NaiveBayes", selecting terms
/// based on their highest average per-category probability. In this case, the value of
/// <var>pPerCategory</var> is ignored (automatically treated as 1). Implementations for other
/// metrics can be provided by subclasses.</p>
Method %PopulateTerms(pCount As %Integer = 100, pType As %String = "entity", pMetric As %String = "NaiveBayes", pPerCategory As %Boolean = 0) As %Status
{
}

/// Resets the term and category lists for this classifier
Method %Reset() As %Status [ Final ]
{
}

Method %OnReset() As %Status [ Private ]
{
}

/// <p>Generates a <class>%iKnow.Classification.Definition.Classifier</class> XML tree based on the current
/// set of categories and terms, with the appropriate weights and parameters calculated by the builder
/// implementation (see <method>%OnGenerateClassifier</method>).</p>
/// <p>Use <var>pIncludeBuilderInfo</var> to include specifications of how this classifier was built
/// so it can be "reloaded" from the classifier XML to retrain the model.</p>
Method %GenerateClassifier(Output pDefinition As %iKnow.Classification.Definition.Classifier, pIncludeBuilderInfo As %Boolean = 0, pVerbose As %Boolean = 1) As %Status [ Final ]
{
}

/// Appends the ClassificationMethod element for this type of classifier.
Method %OnGenerateClassifier(ByRef pDefinition As %iKnow.Classification.Definition.Classifier, pVerbose As %Boolean = 1, pIncludeBuilderInfo As %Boolean = 0) As %Status [ Private ]
{
}

/// <p>Generates a classifier definition and saves it to a <class>%iKnow.Classification.Classifier</class>
/// subclass named <var>pClassName</var>. This will overwrite any existing class with that name if <var>pOverwrite</var> is 1.
/// See also <method>%GenerateClassifier</method>.</p>
Method %CreateClassifierClass(pClassName As %String, pVerbose As %Boolean = 1, pIncludeBuilderInfo As %Boolean = 1, pOverwrite As %Boolean = 0, pCompile As %Boolean = 1) As %Status
{
}

/// Loads the categories and terms from an existing Classifier class <var>pClassName</var>.<br/>
/// Note: this does not load any (custom) weight information from the definition.
ClassMethod %LoadFromDefinition(pClassName As %String, Output pBuilder As %iKnow.Classification.Builder, pValidateFirst As %Boolean = 1) As %Status [ Final ]
{
}

ClassMethod %LoadFromModel(pDefinition As %iKnow.Classification.Definition.Classifier, Output pBuilder As %iKnow.Classification.Builder) As %Status [ Final, Internal ]
{
}

Method %OnLoadFromDefinition(pDefinition As %iKnow.Classification.Definition.Classifier) As %Status [ Internal ]
{
}

/// Exports the data in the training set to a new table <var>pClassName</var>, with columns
/// containing the weighted score for each term.
Method %ExportDataTable(pClassName As %String, pOverwrite As %Boolean = 1, pVerbose As %Boolean = 1, pTracking As %Boolean = 0) As %Status [ Final ]
{
}

ClassMethod GetColumnName(pTermId As %Integer) As %String [ Internal ]
{
}

/// Callback invoked by <method>%ExportDataTable</method> when creating the export table definition.
Method %OnCreateExportTable(pClassDef As %Dictionary.ClassDefinition, pVerbose As %Boolean) As %Status [ Private ]
{
}

/// Callback invoked by <method>%ExportDataTable</method> to load the data into export table <class>pClassName</class>.
Method %OnExportTable(pClassName As %String, pVerbose As %Boolean, pTracking As %Boolean) As %Status [ Abstract, Private ]
{
}

/// <p>Adds all terms selected by <var>pSQL</var> as <var>pType</var>, taking the string value from the
/// column named "term" with negation context <var>pNegationContext</var> and count policy <var>pCount</var>.
/// If there are columns named "type", "negation" or "count" selected by the query, any values in these
/// columns will be used instead of the defaults supplied through the respective parameters.</p>
/// <p>When adding CRC or Cooccurrence terms, use colons to separate the composing entities.</p>
Method %AddTermsFromSQL(pSQL As %String, pType As %String = "entity", pNegationContext As %String = "undefined", pCount As %String = "exactCount") As %Status
{
}

Method %GetRecordCount(Output pSC As %Status) As %Integer [ Abstract ]
{
}

/// Returns an array for the current builder terms:
/// 		pTermInfo(i, "spread") = [spread in training set]
/// 		pTermInfo(i, "spread", j) = [spread in training set for category j]
/// 		pTermInfo(i, "frequency", j) = [freq in training set for category j]
Method %GetTermInfo(Output pTermInfo, pIncludeCategoryDetails As %String = "") As %Status [ Internal ]
{
}

/// This object will deliver the actual implementation of the classification method
/// and is instantiated automatically through settting <property>ClassificationMethod</property>.
Property MethodBuilder As %iKnow.Classification.Methods.Base [ Internal, ReadOnly ];

Method ClassificationMethodSet(pMethod As %String) As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Dispatch unknown property setters to <property>MethodBuilder</property>
Method %DispatchSetProperty(Property As %String, Val) [ ServerOnly = 1 ]
{
}

/// Dispatch unknown property getters to <property>MethodBuilder</property>
Method %DispatchGetProperty(Property As %String) [ ServerOnly = 1 ]
{
}

/// Dispatch unknown method calls to <property>MethodBuilder</property>
Method %DispatchMethod(Method As %String, Args...) [ ServerOnly = 1 ]
{
}

/// INTERNAL - DO NOT INVOKE
/// Used by MethodBuilder.%PopulateTerms() to provide:
/// 	^||%IK.TermCandidates(id) = $lb(value, spread)
/// 	^||%IK.TermCandidates(id, j) = [spread in category j]
Method %GetCandidateTerms(pType As %String = "entity") As %Status [ Internal ]
{
}

/// <p>Utility method to batch-test the classifier against a test set <var>pTestSet</var>.
/// Per-record results are returned through <var>pResult</var>:<br/>
/// 			pResult(n) = $lb([record ID], [actual category], [predicted category])</p>
/// <p><var>pAccuracy</var> will contain the raw accuracy (# of records predicted correctly) of
/// the current model. Use <class>%iKnow.Classificaton.Utils</class> for more advanced model testing.</p>
/// <p>If the current model's category options were added through <method>%AddCategory</method> without
/// an appropriate category specification, use <var>pCategorySpec</var> to refer to the actual category
/// values to test against.</p>
Method %TestClassifier(pTestSet As %RawString, Output pResult, Output pAccuracy As %Double, pCategorySpec As %String = "", pVerbose As %Boolean = 0) As %Status [ Abstract ]
{
}

}
