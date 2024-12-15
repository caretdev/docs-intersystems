/// <p>This class automates selecting "appropriate" terms for a <class>%iKnow.Classification.Builder</class>.
/// After pointing an Optimizer instance to the Builder object that needs optimization, use the
/// <method>LoadTermsArray</method> and <method>LoadTermsSQL</method> methods to queue a large
/// number of potentially interesting terms the Optimizer should test. Then invoke its
/// <method>Optimize</method> method to let the Optimizer loop through the list of suggested terms
/// automatically and add those terms having the highest positive impact on model accuracy (as
/// measured according to <property>ScoreMetric</property>), removing terms that were already
/// added to the model but turn out to have no significant positive impact on the model's accuracy.</p>
/// <p>See the individual property descriptions of their impact on the optimization process.</p>
Class %iKnow.Classification.Optimizer Extends %RegisteredObject [ Deprecated, System = 4 ]
{

Property TaskId As %Integer [ Internal, ReadOnly ];

Property Debug As %String [ Internal ];

Property IsMaster As %Boolean [ InitialExpression = 1, Internal ];

/// If set to a boolean value, defines whether or not to write output to the current device during
/// the <method>Optimize</method> method. If set to a string, it is treated as a global reference
/// to which output needs to be written.
Property Verbose As %String [ InitialExpression = 0 ];

/// The test set to validate model accuracy increases/decreases against.
Property TestSet As %iKnow.Filters.Filter;

/// The metadata field containing the actual category values to compare predictions against.
/// This assumes the value of the Builder's MetadataField property when registering an IKnowBuilder
/// instance as <property>Builder</property>, if not set explicitly.
Property MetadataField As %String;

/// The domain using which the categorization model is being trained and tested.
/// This assumes the value of the Builder's DomainId property when registering an IKnowBuilder
/// instance as <property>Builder</property>, if not set explicitly.
Property DomainId As %Integer;

/// The builder object to be optimized.
Property Builder As %iKnow.Classification.Builder;

/// The number of terms to test in each round. If left at 0, this defaults to the number of
/// cores the system has available, which should be most efficient.
Property AddWindowSize As %Integer(MINVAL = 0) [ InitialExpression = 0 ];

/// The number of terms to add during an <method>AddTerms</method> cycle. The top results according
/// to <method>RankScores</method> will be added, as selected from the <property>AddWindowSize</property>
/// terms tested in the cycle.
Property AddCount As %Integer(MINVAL = 1) [ InitialExpression = 1 ];

/// The minimal score increase % a term should ensure to be retained for further testing. If the
/// score does not increase by at least this figure, it will be discarded from the list of terms
/// to test. A value of 1 means the minimal score increase should be 1%
Property MinimalScoreIncrease As %Double(MAXVAL = 100, MINVAL = -100) [ InitialExpression = 0.1 ];

/// The default accuracy metric to use for evaluating test results, as used by <method>RankScores</method>.
/// If set to a 'Weighted*' value, the weights are retrieved from <property>CategoryWeights</property>.
Property ScoreMetric As %String(VALUELIST = ",MacroFmeasure,MacroPrecision,MacroRecall,MicroFmeasure,MicroPrecision,MicroRecall,WeightedPrecision,WeightedRecall,WeightedFmeasure") [ InitialExpression = "MacroFmeasure" ];

/// <p>The ratio of <method>RemoveTerms</method> cycles vs <method>AddTerms</method> cycles.
/// This should be a value between 0 and 1 (inclusive).</p>
/// <p>Note: Remove cycles take significantly longer than add cycles</p>
Property RemoveStepRatio As %Double(MAXVAL = 1, MINVAL = 0) [ InitialExpression = 0.1 ];

/// The number of terms to remove in a "remove" cycle. Setting this value > 1 assumes the terms
/// deemed irrelevant (and scheduled to be removed) don't influence one another much and removing
/// more in a single cycle will not worsen performance much more than the individual performance
/// changes of each term removal alone.
Property RemoveCount As %Integer(MINVAL = 1) [ InitialExpression = 3 ];

/// The maximal decrease in performance the optimizer should accept when trying to remove terms.
/// If removing a term would imply a decrease larger than this figure, it will not be removed.
/// A value of 1 means the maximal score decrease is 1%
Property MaximalScoreDecrease As %Double(MAXVAL = 100, MINVAL = -100) [ InitialExpression = 0.05 ];

/// The class name of the current "best" classifier.
/// This value is set during <method>Optimize</method>, or as part of the <method>AddTerms</method>
/// and <method>RemoveTerms</method> methods.
Property CurrentClassifier As %String [ ReadOnly ];

/// The score of the current classifier. This value is updated by <method>AddTerms</method>
/// and <method>RemoveTerms</method>.
Property CurrentScore As %Double [ ReadOnly ];

/// The key to <class>%DeepSee.PMML.Utils.TempResult</class> for the test results of
/// <property>CurrentClassifier</property>.
Property CurrentTestId As %Integer [ ReadOnly ];

/// <p>If <property>ScoreMetric</property> is set to a 'Weighted*' value, the weights for each category
/// are retrieved from this array, indexed by category name. If no category weight is set, it is
/// assumed to be 0.</p>
/// <p>Note: Weights don't need to add up to 1.</p>
Property CategoryWeights [ MultiDimensional ];

Method BuilderSet(pBuilder As %iKnow.Classification.Builder) As %Status [ Internal, ServerOnly = 1 ]
{
}

Method %OnNew(pTaskId As %Integer = 0, pMasterObject As %Boolean = 1) As %Status [ Private, ServerOnly = 1 ]
{
}

/// Loads a list of candidate terms based on a SQL query. The query should return a column named
/// "term" containing the term's value and may return columns named "type", "negation" and "match"
/// to configure the type, negation and count policy for each term being retrieved, respectively.
Method LoadTermsSQL(pSQL As %String) As %Status
{
}

/// Loads all terms from the supplied array.
/// If <var>pListIndex</var> is non-zero, the term info is read from that index at each array position.
/// If the term info itself is a list structure as well, it is interpreted as follows:
/// 		pTerms(n) = $lb(term, type, negationpolicy, matchpolicy)
Method LoadTermsArray(ByRef pTerms, pListIndex As %Integer = 0) As %Status
{
}

/// Initializes this Optimizer instance.
/// This method is called automatically as part of <method>Optimize</method>
Method Initialize() As %Status
{
}

/// <p>In at most <var>pMaxSteps</var> steps, the current <property>Builder</property> will be optimized by
/// testing, one at a time, the terms added through <method>LoadTermsSQL</method> and
/// <method>LoadTermsArray</method>, judging which term works best for each test window by the
/// results of <method>RankScores</method> (see also <method>AddTerms</method>). Every (1/<property>RemoveStepRatio</propery>) rounds,
/// all terms in the dictionary so far will be tested for their contribution to the current model
/// score and the lowest <property>RemoveCount</property> terms will be removed (see also <method>RemoveTerms</method>).</p>
/// <p>At the end of the optimization process, in addition to <property>Builder</property> being
/// updated, <property>CurrentClassifier</property> will contain the class name of the last
/// test class used to achieve the best result and <var>pTestId</var> will point to the test
/// results for that class.</p>
Method Optimize(pMaxSteps As %Integer = 20) As %Status
{
}

/// <p>Test the impact of removing each term in the current model's TermDictionary individually.
/// The <var>pCount</var> terms for which, after removing it, <method>RankScores</method>
/// still returns the best score (which supposedly implies its contribution was minimial), will
/// be removed from the TermDictionary, unless the decrease in performance surpasses
/// <property>MaximalScoreDecrease</property>.</var></p>
/// <p>If <var>pCount</var> &lt; 0, it defaults to <property>RemoveCount</property>.</p>
Method RemoveTerms(pCount As %Integer = -1) As %Status
{
}

/// <p>This method does one round of processing, testing <property>AddWindowSize</property> candidate
/// terms and selecting the best <var>pCount</var> terms according to <method>RankScores</method>,
/// unless it wouldn't meet the <property>MinimalScoreIncreas</property> threshold.</p>
/// <p>If <var>pCount</var> &lt; 0, it defaults to <property>RemoveCount</property>.</p>
Method AddTerms(pCount As %Integer = -1, Output pAtEnd As %Boolean = 0) As %Status
{
}

/// Clears internal and generated artifacts for one particular test.
Method ClearTestInfo(pJobNumber As %Integer, pDropTestResults As %Boolean = 1, pDropTestClass As %Boolean = 1) As %Status [ Private ]
{
}

/// <p>This method ranks the test results in <var>pJobInfo</var> according to the desired "score".
/// By default, it will just look at the value of the metric identified by
/// <property>ScoreMetric</property>, but this method can be overridden to calculate in more detail.
/// When this method returns, <var>pRanked</var> is an ordered array containing the job IDs and score in
/// ASCENDING order (pRanked(1) is the worst job):</p>
/// <blockquote>pRanked([position]) = $lb([jobID], [score])</blockquote>
///
/// <p><var>pJobInfo</var> should contain the following information:<br/>
/// 		pJobInfo([jobID], "scores", [metric]) = [value]<br/>
/// 		pJobInfo([jobID], "testid") = [test ID]  (key for <class>%DeepSee.PMML.Utils.TempResults</class>)<br/>
/// 		pJobInfo([jobID], "term") = [term ID] (not for initial evaluation)</p>
/// <p>See also <method>GetScore</method></p>
Method RankScores(ByRef pJobInfo, Output pRanked, Output pNoScore) As %Status [ Private ]
{
}

/// <p>See also <method>RankScores</method></p>
Method GetScore(ByRef pScores, pTestId As %Integer = "") As %Double [ Internal ]
{
}

/// Runs one test for the current state of <property>Builder</property> and returns its test scores.
Method RunTest(Output pTestId As %Integer, Output pScores, Output pTestClassName As %String, pDropTestClass As %Boolean = 1, pTracking As %Boolean = 0) As %Status [ Internal ]
{
}

/// Tests the effect of adding/removing a single term and stores the test results in a temporary global.
ClassMethod TestTermAsync(pTaskID As %Integer, pJobNumber As %Integer, pDebug As %String = "") As %Status [ Internal ]
{
}

Method %OnClose() As %Status [ Private, ServerOnly = 1 ]
{
}

/// This method clears the temporary artifacts the optimizer has created while optimizing,
/// such as the <property>CurrentClassifier</property> class and <property>CurrentTestId</property>
/// test results.
Method Cleanup() As %Status
{
}

/// Saves the <property>CurrentClassifier</property> class to the desired <var>pClassName</var>,
/// so it will not be removed after this Optimizer instance is dropped. If <property>CurrentClassifier</property>
/// is not set or if the class no longer exists for other reasons, the current builder object will
/// create a classifier class based on its current state.
Method SaveClassifier(pClassName As %String, pOverwrite As %Boolean = 0) As %Status
{
}

Method Log(pMessage As %String, pNewLines = 1) [ Private ]
{
}

}
