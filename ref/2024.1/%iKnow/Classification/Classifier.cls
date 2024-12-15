/// <p>The InterSystems IRIS NLP iKnow technology is now deprecated. Please see the
/// <a href="https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=GIKNOW">product
/// documentation</a> for more detail.</p>
/// <p>This is the superclass for executable Text Categorization models. Upon compiling a subclass
/// of this class, the required internal code will be generated to support the class' main
/// methods <method>%Categorize</method> and <method>%CategorizeText</method>. To invoke a Text
/// Categorization model on free text:</p>
/// <blockquote><tt>set tClassifier = ##class(User.MyClassifier).%New()<br/>write
/// tClassifier.%CategorizeText(.tCategories, "The helicopter was not flying at a
/// sufficiently high altitude ...")<br/>zwrite tCategories</tt></blockquote>
/// <p>To invoke it on a source in an iKnow domain:</p>
/// <blockquote><tt>set tClassifier = ##class(User.MyClassifier).%New("iKnow", [domain name])<br/>
/// write tClassifier.%Categorize(.tCategories, tSourceId)<br/>zwrite tCategories</tt></blockquote>
Class %iKnow.Classification.Classifier Extends %RegisteredObject [ Abstract, Deprecated, System = 4 ]
{

Property Mode As %String(VALUELIST = ",iKnow,iTables") [ Internal, Private ];

Property DomainId As %Integer [ Internal, Private ];

Property ITablesPackage As %String [ Internal, Private ];

Property CurrentConfig As %String [ Internal, Private ];

Property Indexer As %iKnow.Indexer [ Internal, Private ];

Property %Trace [ Internal, MultiDimensional, Private ];

/// Maps unique entity/CRC IDs to local term IDs with count="exactCount"
/// 		..ikTermIdMap([domainId], [type], [entUniId|crcUniId|coocID]) = $lb([termID], [negation])
/// 		..ikTermIdMap([domainId], -2, [entUniId], [coocID]) = $lb([negation], [position])
Property ikTermIdMap [ Internal, MultiDimensional, Private ];

/// The definition of this Text Categorization model.
XData Classifier [ XMLNamespace = "http://www.intersystems.com/iknow/classification" ]
{
}

/// Returns an array containing the terms specified in this classifier:
/// 		pTerms(n) = $lb(stringRepresentation, type, negationPolicy, countPolicy, displayName)
ClassMethod %GetTerms(Output pTerms) As %Status [ CodeMode = objectgenerator ]
{
}

/// Returns an array containing the categories specified in this classifier:
/// 		pTerms(n) = $lb(name, description, recordCount, spec)
ClassMethod %GetCategories(Output pCategories) As %Status [ CodeMode = objectgenerator, GenerateAfter = %GetTerms ]
{
}

/// Initializes this Classifier instance to access domain <var>pDomainSpec</var> by default,
/// when calling <method>%Categorize</method>
Method %OnNew(pMode As %String(VALUELIST=",iKnow,iTables") = "", pDomainSpec As %String = "") As %Status [ Internal, ServerOnly = 1 ]
{
}

/// Initializes this Classifier instance to access domain <var>pDomainSpec</var> by default,
/// when calling <method>%Categorize</method>
Method %Initialize(pMode As %String, pDomainSpec As %String) As %Status [ Internal ]
{
}

Method %InitializeIKnow(pDomainName As %String) As %Status [ Internal, Private ]
{
}

Method %InitializeITables(pPackageName As %String) As %Status [ Internal, Private ]
{
}

/// Resets all internal data structures populated by <method>%Initialize</method>
Method %Reset() As %Status [ Internal ]
{
}

Method %GetDomainId(pDomainSpec As %String, Output pDomainId As %Integer) As %Status [ Internal, Private ]
{
}

Method %BuildIKTermMap(pDomainId As %Integer, Output pIkTermIdMap, vSrcId As %Integer = 0) As %Status [ CodeMode = objectgenerator, GenerateAfter = %GetCategories, Internal ]
{
}

/// Returns trace information wrt the actual weights each term had.
/// 		pTermWeights(tTermPos) = tWeight
/// Note: this might not be available for each classification method!
Method %GetTraceInfo(Output pTermWeights, pCatIndex As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod %GetTraceWeightType() As %String [ CodeMode = objectgenerator, Internal ]
{
}

ClassMethod %GetScoreType() As %String [ CodeMode = objectgenerator, Internal ]
{
}

/// Returns the term frequency array for a specific source ID
Method %GetTermFreqsForSource(Output pTermFreqs, pSourceId As %Integer, pMode As %String = "", pDomainSpec As %String = "") As %Status [ Internal ]
{
}

/// pTermInfo("negation") = [has negation]
/// pTermInfo(0, [ent uni id]) = $lb([term id], [negation])
/// pTermInfo(1, [crc uni id]) = $lb([term id], [negation])
/// pTermInfo(2, [cooc id]) = $lb([term id], [negation], $lb([ent uni ids..]))
/// pTermInfo(-2, [ent uni id], [cooc id]) = [negation]
/// pTermInfo(3, [dict item id]) = $lb([term id], [negation], [count])
ClassMethod %GetTermFreqsForSourceStatic(pDomainId As %Integer, pSourceId As %Integer, ByRef pTermInfo, pDictId As %Integer, Output pTermFreqs) As %Status [ Internal ]
{
}

/// Returns the term frequency array for a piece of free text <var>pText</var>, to be indexed using
/// configuration <var>pConfig</var>.
Method %GetTermFreqsForText(Output pTermFreqs, pText As %String, pConfig As %String = "") As %Status [ Internal ]
{
}

/// Returns the term frequency array for the text that has been passed through an iKnow indexer
/// configure to return its results to <var>pDirectInput</var>.
Method %GetTermFreqsForDirectInput(Output pTermFreqs, pDirectInput As %DeepSee.PMML.Utils.iKnow.DirectInput) As %Status [ CodeMode = objectgenerator, GenerateAfter = %BuildScores, Internal, Private ]
{
}

/// Returns a vector representing the term weights for the document being categorized, based on
/// the specifications in <xdata>Classifier</xdata>, applying any weighting, negation and other policies.
/// The vector is indexed by the local term IDs as terms they appear in the TermDictionary.
Method %BuildDocumentVector(ByRef pTermFreqs, Output pDocumentVector) As %Status [ CodeMode = objectgenerator, GenerateAfter = %GetTerms, Internal ]
{
}

/// <p>This method runs the Text Categorization model defined in <xdata>Classifier</xdata> against
/// the document identified by <var>pSourceId</var>. When this method returns, <var>pCategories</var>
/// will contain all candidate categories for this document, sorted by decreasing score:
/// 		pCategories(n) = $lb([category name], [score])
/// The entry with the highest score (pCategories(1)) is this model's best prediction.</p>
/// <p>If this Classifier instance has not been
/// initialized with a reference to an iKnow or other domain, supply <var>pMode</var>="iKnow" and
/// the domain name as <var>pDomainSpec</var> to point this classifier to the right location.</p>
Method %Categorize(Output pCategories, pSourceId As %Integer, pMode As %String = "", pDomainSpec As %String = "") As %Status
{
}

/// <p>This method runs the Text Categorization model defined in <xdata>Classifier</xdata> against
/// the free text <var>pText</var>. When this method returns, <var>pCategories</var>
/// will contain all candidate categories for this document, sorted by decreasing score:
/// 		pCategories(n) = $lb([category name], [score])
/// The entry with the highest score (pCategories(1)) is this model's best prediction.</p>
/// <p>Optionally a <class>%iKnow.Configuration</class>'s name can be passed in through
/// <var>pConfig</var> to override the default configuration to use when indexing the text,
/// for example to use a language model other than the default English (or automatically detect
/// the right language to use).</p>
Method %CategorizeText(Output pCategories, pText As %String = "", pConfig As %String = "") As %Status
{
}

/// Static method to categorize a text fragment, returning the most likely category the text belongs to.
/// See also <method>%CategorizeText</method>
ClassMethod %CategorizeSQL(pText As %String = "", pConfig As %String = "", Output pSC As %String = "") As %String [ SqlProc ]
{
}

/// transforms the result of <method>%BuildScores</method> into the array returned by
/// <method>%Categorize</method> and <method>%CategorizeText</method>
Method %BuildResult(ByRef pScores, Output pResult) As %Status [ Internal, Private ]
{
}

/// Builds a sorted array with the scores for each category (higher scores are better scores):
/// 			pScores([score], [categoryID]) = ""
Method %BuildScores(ByRef pDocumentVector, Output pScores) As %Status [ CodeMode = objectgenerator, GenerateAfter = %GetIKnowDictionaryMapping, Internal, Private ]
{
}

ClassMethod %GenBuildScoresPMML(pDefinition As %iKnow.Classification.Definition.Classifier) As %Status [ Internal ]
{
}

ClassMethod %GenBuildScoresRules(pDefinition As %iKnow.Classification.Definition.Classifier) As %Status [ Internal ]
{
}

ClassMethod %GenBuildScoresRegression(pDefinition As %iKnow.Classification.Definition.Classifier) As %Status [ Internal ]
{
}

ClassMethod %GenBuildScoresNaiveBayes(pDefinition As %iKnow.Classification.Definition.Classifier) As %Status [ Internal ]
{
}

ClassMethod %GenBuildScoresVector(pDefinition As %iKnow.Classification.Definition.Classifier) As %Status [ Internal ]
{
}

ClassMethod %ConsidersNegation() As %Boolean [ CodeMode = objectgenerator, ForceGenerate, GenerateAfter = %BuildIKTermMap, Internal ]
{
}

ClassMethod %GetIKnowDictionaryMapping(Output pDictionaryId As %Integer, Output pDictionaryMap) As %Status [ CodeMode = objectgenerator, GenerateAfter = %ConsidersNegation, Internal ]
{
}

ClassMethod %UpdateIKnowDictionary(pDomainId As %Integer = 0, pDictId As %Integer, ByRef pTerms, ByRef pExisting, Output pMap) As %Status [ Internal ]
{
}

ClassMethod %DropManagedDictionary(pDictionaryId As %Integer) As %Status [ Internal ]
{
}

ClassMethod %GetMatchingProfileId(Output pProfileId As %Integer) As %Status [ Internal ]
{
}

}
