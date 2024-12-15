/// <p>This class contains utility methods to manage the word list used by the decompounding algorithm.
/// Decompounding is about identifying the words making up a compound term, such as the words
/// "thunder" and "storm" in the compound term "thunderstorms". It is used primarily
/// for search purposes, allowing you to find records containing compounds of the search terms too.
/// Lanugages like German, where compounding happens often, require decompounding support for
/// a good search experience.</p>
/// <h2>Training the decompounder</h2>
/// <p>The decompounding algorithm supplied here requires a list of candidate words it will try to
/// recognize in to-be-decompounded terms. These candidate words can be added through <i>training</i>
/// the algorithm using any of the following methods, which accept free text that will be cut into
/// candidate terms and then stripped of any recognizable compounds:</p>
/// <ul>
/// <li><method>AppendTrainingDataFromQuery</method> loads candidate words from a query result set</li>
/// <li><method>AppendTrainingDataFromFiles</method> loads candidate words from plaintext files</li>
/// <li><method>AppendTrainingDataFromDomain</method> loads candidate words from an iKnow domain</li>
/// </ul>
/// <p>Alternatively, individual words can be added and removed through the <method>AddWord</method>
/// and <method>RemoveWord</method> methods.
/// Words that should never be separated (returned as a single word) can be registered through
/// the <method>NeverSeparate</method>.</p>
/// <h2>Invoking the decompounder</h2>
/// <p>Decompounding is used by iFind indices who have their INDEXOPTION set to 2 (see also
/// <class>%iFind.Index.Basic</class>). When subsequently adding records to such an indexed table,
/// all words will be checked for compounding and additional index structures will be populated
/// to allow retrieving records based on the compounding words.</p>
/// <p>The algorithm can also be invoked directly through a <class>%iKnow.Stemmer</class> object,
/// should there be any requirement to find the compounding words of a given term (ie for debug purposes).</p>
/// <example language="COS"> // simple training
///  do ##class(%iKnow.Stemming.DecompoundUtils).AddWord("en", "thunder")
///  do ##class(%iKnow.Stemming.DecompoundUtils).AddWord("en", "storm")
///  // invoke decompounder
///  write ##class(%iKnow.Stemmer).GetDefault("en", .tStemmer)
///  write tStemmer.Decompound("thunderstorms", .tWords)
///  zwrite tWords</example>
Class %iKnow.Stemming.DecompoundUtils [ Deprecated, System = 4 ]
{

/// Loads per-language decompounding properties defined at the system level, appended with
/// any <method>NeverSeparate</method> annotations saved for the current namespace.
ClassMethod GetLanguageProperties(pLanguage As %String, Output pProps) [ Internal ]
{
}

/// Drops ALL training data for a given language. Use with care.
ClassMethod ClearTrainingData(pLanguage As %String) As %Status
{
}

/// <p>Appends word frequency information drawn from the *.txt files in <var>pDirectory</var> to
/// the word dictionary for decompounding in this namespace.
/// Multiple calls to this method (for different directories) will append to the existing info.
/// Use <method>ClearTrainingData</method> if you want to drop all existing data.</p>
/// <p>When <var>pClean</var>=1, the generated word list will automatically be cleaned after
/// loading the new data through a call to <method>CleanWordList</method>. You may use
/// <var>pClean</var>=0 and only call <method>CleanWordList</method> after appending training
/// data from multiple sources, but it should be called once before decompounding any new
/// words through the <class>%iKnow.Stemmer</class> object.</p>
ClassMethod AppendTrainingDataFromFiles(pDirectory As %String = "", pLanguage As %String = "en", pClean As %Boolean = 1, pVerbose As %Boolean = 1) As %Status
{
}

/// <p>Appends word frequency information drawn from the first column of the supplied %ResultSet to
/// the word dictionary for decompounding in this namespace.
/// Multiple calls to this method (for different resultsets) will append to the existing info.
/// Use <method>ClearTrainingData</method> if you want to drop all existing data.</p>
/// <p>When <var>pClean</var>=1, the generated word list will automatically be cleaned after
/// loading the new data through a call to <method>CleanWordList</method>. You may use
/// <var>pClean</var>=0 and only call <method>CleanWordList</method> after appending training
/// data from multiple sources, but it should be called once before decompounding any new
/// words through the <class>%iKnow.Stemmer</class> object.</p>
ClassMethod AppendTrainingDataFromQuery(pResultSet As %ResultSet, pLanguage As %String = "en", pClean As %Boolean = 1, pVerbose As %Boolean = 1) As %Status
{
}

/// <p>Appends word frequency information drawn from an existing iKnow domain to
/// the word dictionary for decompounding in this namespace. When <var>pEntType</var>=$$$ENTTYPEANY
/// (default), the full sentence values (with literal info) will be used to derive words. To restrict
/// this to concepts or relations only, use $$$ENTTYPECONCEPT resp. $$$ENTTYPERELATION.</p>
/// <p>Multiple calls to this method (for different resultsets) will append to the existing info.
/// Use <method>ClearTrainingData</method> if you want to drop all existing data.</p>
/// <p>When <var>pClean</var>=1, the generated word list will automatically be cleaned after
/// loading the new data through a call to <method>CleanWordList</method>. You may use
/// <var>pClean</var>=0 and only call <method>CleanWordList</method> after appending training
/// data from multiple sources, but it should be called once before decompounding any new
/// words through the <class>%iKnow.Stemmer</class> object.</p>
ClassMethod AppendTrainingDataFromDomain(pDomainName As %String, pLanguage As %String = "en", pEntType As %Integer = {$$$ENTTYPEANY}, pClean As %Boolean = 1, pVerbose As %Boolean = 1) As %Status
{
}

/// Queues words in a PPG ^||%IK.Words, to be saved by <method>SaveWords</method>
ClassMethod GenerateWords(pText As %String = "", ByRef pLangProps, pTrackCaps As %Boolean = 0, pFreq As %Integer = 1) As %Status [ Private ]
{
}

/// Saves the words queued in ^||%IK.Words by <method>GenerateWords</method>
ClassMethod SaveWords(pLangId As %Integer, pVerbose As %Boolean = 0) As %Status [ Private ]
{
}

/// <p>Adds a word to the compound dictionary for the supplied language. The supplied word will be
/// treated as a valid compound element the algorithm will no longer try to split in smaller
/// elements. Optionally supply a positive integer frequency value to increase its weight when
/// multiple options are available.</p>
/// <p>If <var>pWord</var> is also present in the list of strings never to split off through a
/// call to <method>NeverSeparate</method>, it will be removed from that list.</p>
/// <p>When performing a lot of manual updates, it is recommended to set <var>pClean</var>=0 and
/// only run the <method>CleanWords</method> method once after all additions, to verify if these new
/// additions indicate particular existing words should be removed as they turn out to be compounds
/// themselves.</p>
ClassMethod AddWord(pLanguage As %String, pWord As %String, pFrequency As %Integer = 1, pClean As %Boolean = 1, pVerbose As %Boolean = 0) As %Status
{
}

/// Removes a word from the compound dictionary for the supplied language. This word will no longer
/// be treated as a valid compound element. Use this to clear the list of eventual composite words
/// added previously.
ClassMethod RemoveWord(pLanguage As %String, pWord As %String) As %Status
{
}

/// Marks <var>pString</var> as a character sequence that should never be split off and
/// therefore never be returned as a compound element of its own.
/// If this string was also part of the compound dictionary as a candidate, it will be removed
/// automatically as if calling <method>RemoveWord</method>
ClassMethod NeverSeparate(pLanguage As %String, pString As %String) As %Status
{
}

ClassMethod CleanText(pText As %String, pKeepCaseAndSent As %Boolean = 0) As %String [ Internal ]
{
}

/// Clears any identifiable compounds from the current decompound dictionary for <var>pLanguage</var>.
/// This method should be run at least once between appending data to the training set through any
/// of the Append* methods in this class and using the Decompound() method in a <class>%iKnow.Stemmer</class>
/// object.
ClassMethod CleanWordList(pLanguage As %String = "en", pVerbose As %Boolean = 0, pOutputFile As %String = "", pFilter As %String = "") As %Status
{
}

ClassMethod ConvertHiraganaNumbers(pString As %String) As %String [ Internal ]
{
}

ClassMethod IsKatakana(pString As %String) As %Boolean [ Internal ]
{
}

/// Loads default stemming properties from the KB files.
/// FOR INTERNAL USE ONLY.
/// DO NOT INVOKE THIS METHOD.
ClassMethod LoadDefaultPropertiesCSV(pPath As %String) As %Status [ Internal ]
{
}

}
