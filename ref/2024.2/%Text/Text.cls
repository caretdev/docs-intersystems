/// The %Text.Text data type class implements the methods used by InterSystems IRIS for full text indexing, text search, similarity scoring,
/// automatic classification, dictionary management, word stemming, n-gram key creation, and noise word filtering.
/// <p><b>Usage</b></p>
///
/// <p><i><u>Creating a Text Property and a Full-Text Index</u></i></p>
///
/// <p>To create a %Text property and an index that supports Boolean queries, declare the property using the
/// <CLASS>%Library.Text</CLASS> class and create a full-text index on the property
/// specifying (KEYS) in the ON clause as shown below
/// <EXAMPLE LANGUAGE=UDL>
/// PROPERTY myDocument As %Text (MAXLEN = 256, LANGUAGECLASS = "%Text.English");
/// INDEX myIndex ON myDocument(KEYS) [ TYPE=BITMAP ];
/// </EXAMPLE>
/// Set the LANGUAGECLASS property parameter to the name of the appropriate language-specific subclass
/// of the <CLASS>%Text.Text</CLASS> class, such as <CLASS>%Text.English</CLASS>, <CLASS>%Text.French</CLASS>,
/// <CLASS>%Text.Spanish</CLASS>, <CLASS>%Text.Italian</CLASS>, <CLASS>%Text.Portuguese</CLASS>, or <CLASS>%Text.Japanese</CLASS>.</p>
/// Text indexes can be very large and expensive to update, but there are several ways to
/// reduce the size of the index without compromising (and often improving) search quality:
/// <ol>
/// <li><b><PARAMETER>MINWORDLEN</PARAMETER></b> discards all terms that are fewer than this number of characters</li>
/// <li><b><PARAMETER>FILTERNOISEWORDS</PARAMETER>=1</b> enables common-word filtering, in combination with calling the <METHOD>ExcludeCommonTerms</METHOD> class method.  Calling <METHOD>ExcludeCommonTerms</METHOD> with
/// an argument of 175 causes the 175 most common words and two-word combinations to be ignored, resulting in a very substantial
/// reduction of index size (also see <i>Dictionary Management</i>, below)</li>
/// <li><b><PARAMETER>STEMMING</PARAMETER></b> conflates multiple forms of a word to a common "stem".  For example, in
/// English, the common word endings -s, -ing, -ed, (etc.) may be removed so that the various word forms
/// can all match against each other.</li>
/// </ol>
/// <p><i><u>The %CONTAINS Operator</u></i></p>
///
/// With the declarations above, the following SQL query could be issued to find all documents containing both the
/// terms "InterSystems" and "IRIS":
/// <EXAMPLE LANGUAGE=SQL>
/// SELECT myDocument FROM table t WHERE myDocument %CONTAINS ('InterSystems', 'IRIS')
/// </EXAMPLE>
/// The %CONTAINS operator matches on complete <i>terms</i>, based on a language-specific tokenization
/// of the text into words; therefore, unlike the behavior of the "[" operator, "Intersystems" would not match
/// "IntersystemsCorp".  Consider the following similar query:
/// <EXAMPLE LANGUAGE=SQL>
/// SELECT myDocument FROM table t WHERE myDocument [ 'InterSystems' AND myDocument [ 'IRIS'
/// </EXAMPLE>
/// Both queries above would produce similar results in most cases, but the %CONTAINS operator can fully exploit the full text
/// index, whereas the "[" operator matches character sequences rather than terms, is case sensitive, and
/// will not exploit the full text index.
/// <p>
/// The %CONTAINS operator may also be used to search for multi-word phrases, such as in the following query:
/// <EXAMPLE LANGUAGE=SQL>
/// SELECT myDocument FROM table t WHERE
///     myDocument %CONTAINS ('New Guinea') OR myDocument %CONTAINS ('West Africa')
/// </EXAMPLE>
/// If the class parameter <PARAMETER>NGRAMLEN</PARAMETER>=2 or more, then the 2-word terms 'New Guinea' and
/// 'West Africa' will be stored in the index.  If <PARAMETER>NGRAMLEN</PARAMETER>=1, then the text index
/// will still be used to find all documents that contain "Guinea" or "Africa", but the query cannot be fully
/// satisfied from the index and must be completed by searching through the original data using the case-sensitive "[" operator.
/// <p>
/// The next query illustrates the use of the <PARAMETER>STEMMING</PARAMETER> parameter.  The language-specific
/// subclasses of the %Text.Text class each strip off common word endings to put each term into a standard form.
/// <EXAMPLE LANGUAGE=SQL>
/// SELECT myDocument FROM table t WHERE
///     myDocument %CONTAINS ('jumping')
/// </EXAMPLE>
/// The query above may <i>succeed</i> on any document that contains the word "jump", "jumping", "jumps" or "jumped",
/// depending on the stemming algorithm.  Note that if <PARAMETER>NGRAMLEN</PARAMETER>=1, then the query:
/// <EXAMPLE LANGUAGE=SQL>
/// SELECT myDocument FROM table t WHERE
///     myDocument %CONTAINS ('jumping through hoops')
/// </EXAMPLE>
/// will succeed only if the document contains the 3 word phrase <i>exactly</i> as specified, whereas if <PARAMETER>NGRAMLEN</PARAMETER>=3,
/// then the query could also match "jump through hoops", because 3-word phrases are considered single terms and are subject to stemming.
/// <p>
/// Additional flexibility beyond what is available from the %CONTAINS operator can be obtained by
/// using the FOR SOME %ELEMENT predicate.  For example, wildcarding can be specified if STEMMING=0
/// and can optionally be combined with other WHERE clause predicates as follows:
/// <EXAMPLE LANGUAGE=SQL>
/// SELECT myDocument FROM table t WHERE
///     FOR SOME %ELEMENT(myDocument) (%KEY LIKE 'myo%opy')
///     AND myDocument %CONTAINS ('heart')
/// </EXAMPLE>
/// <p><i><u>The %SIMILARITY Operator</u></i></p>
///
/// Many text-search applications require the ability to rank the results of a Boolean query
/// by their relevance to a set of related terms.  InterSystems IRIS supports this capability with
/// the %SIMILARITY SQL extension  The following example finds all documents containing the
/// terms 'InterSystems' and 'IRIS', and then ranks them in descending order of their
/// similarity to any or all of the terms 'InterSystems IRIS Queue Messaging':
/// <EXAMPLE LANGUAGE=SQL>
/// SELECT myDocument FROM table t
///     WHERE myDocument %CONTAINS ('InterSystems', 'IRIS')
///     ORDER BY %SIMILARITY (myDocument, 'InterSystems IRIS Queue Messaging') DESC
/// </EXAMPLE>
/// If the optional <PARAMETER>SIMILARITYINDEX</PARAMETER>
/// parameter is defined for a property, then the %SIMILARITY operator will be implemented by
/// calling the <METHOD>SimilarityIdx</METHOD> class method; otherwise the %SIMILARITY operator
/// will call the <METHOD>Similarity</METHOD> class method.  If the SIMILARITYIDX property parameter
/// is defined, then it must specify the name of an index.  The index on-clause and data-clause
/// must follow whatever restrictions are imposed by the <METHOD>SimilarityIdx</METHOD> class method.
/// <p>
/// %Text uses a state of the art similarity algorithm based on the Okapi BM25 term weighting
/// strategy and the cosine similarity metric.  If desired, you can adjust the Okapi BM25 model
/// parameters <PARAMETER>OKAPIBM25B</PARAMETER>, <PARAMETER>OKAPIBM25K1</PARAMETER>, and
/// <PARAMETER>OKAPIBM25K3</PARAMETER> to fine-tune the ranking algorithm when there is a mixture of
/// large and small documents that need to be ranked.  Alternatively, you may override the default
/// similarity algorithms with your own algorithms and/or special index structures.
/// <p>
/// The second operand to %SIMILARITY may be any text-valued expression, so to find documents that
/// contain both the terms "InterSystems" and "IRIS", but to rank the documents based on
/// references to "integration", "platform", or "integration platform", the following query could
/// be used:
/// <EXAMPLE LANGUAGE=SQL>
/// SELECT myDocument FROM table t
///     WHERE myDocument %CONTAINS ('InterSystems', 'IRIS')
///     ORDER BY %SIMILARITY (myDocument, 'Integration platform') DESC
/// </EXAMPLE>
/// Note that if similarity matching is not required by an application, then it may be preferrable to
/// use a bitmap full text indexe rather than an ordinary full text index, particularly if noise word
/// filtering is not used.
/// <p><i><u>Dictionary Management</u></i></p>
///
/// Just as the %CONTAINS operator may be used without an index or without %SIMILARITY ranking,
/// %SIMILARITY ranking can be used without dictionary support; however, a critically important
/// aspect of similarity ranking is the ability to assess the information content of different
/// words.  For example, the word "the" has low utility as a search term, whereas the word "London"
/// is much more specific and useful as a search term.
/// <p>
/// To reduce the size of the index, and to enable the similarity algorithm to more easily ignore
/// words with low information content, you will usually want to call the <METHOD>ExcludeCommonTerms</METHOD>
/// class method to specify noise words for the current dictionary.  By calling ExcludeCommonTerms with
/// argument n and setting the class parameter <PARAMETER>FILTERNOISEWORDS</PARAMETER>=1, the n most
/// common words and 2-word combinations in the current language will be ignored.  For English text,
/// the most common 100 words represent about 50% of all word occurrences.
/// <p>
/// Each language-specific subclass of the %Text.Text class is associated with a particular <PARAMETER>DICTIONARY</PARAMETER>
/// identifier, so by default English words go into a different dictionary than French words, and so on; however,
/// you can also create multiple dictionaries for each language.  For example, it may be useful to have a separate
/// dictionary for email than for legal briefs, because words that are common in one domain may be uncommon and
/// useful in another domain.
/// <p>
/// To collect statistics about the frequency of different terms, call the <METHOD>AddDocToDictionary</METHOD>
/// class method.  Since words that were rare yesterday are likely to be rare tomorrow (except in special applications
/// like news feeds), the dictionary can be populated initially and then updated as an infrequent database maintenance operation
/// (to rebuild the dictionary on a monthly or quarterly schedule, for example).  For example, the following loop
/// drops the current dictionary, then repopulates it:
/// <EXAMPLE LANGUAGE=COS>
/// do ##class(%Text.English).DropDictionary()
/// do ##class(%Text.English).ExcludeCommonTerms(175)
/// &sql(DECLARE C CURSOR FOR SELECT myDocument, category INTO :myDoc, :category FROM myTable T)
/// &sql(OPEN C) QUIT:SQLCODE<0 SQLCODE
/// for { &sql(FETCH C) QUIT:SQLCODE=100  do ##class(%Text.English).AddDocToDictionary(myDoc, category)
/// &sql(CLOSE C)
/// </EXAMPLE>
/// Note: the second argument to the <METHOD>AddDocToDictionary</METHOD> class method is discussed in
/// the next section on Automatic Classification.
/// <p>
/// You can find relevant documents more easily by specifying a dictionary-specific thesaurus.  If
/// the class parameter <PARAMETER>THESAURUS</PARAMETER>=1, then terms in each document and in each
/// %CONTAINS predicate are replaced by the standard term in the thesaurus.  The API for adding or
/// removing a term from the English language thesaurus is:
/// <EXAMPLE LANGUAGE=COS>
/// do ##class(%Text.English).AddToThesaurus(term, standardTerm)
/// do ##class(%Text.English).RemoveFromThesaurus(term)
/// </EXAMPLE>
/// In addition you can initialize a Thesaurus from a text file.  For English, a predefined text
/// file contains translations for both irregular verbs and commonly misspelled words.  You can
/// load the text file by invoking the LoadThesaurus class method:
/// <EXAMPLE LANGUAGE=COS>
/// do ##class(%Text.English).LoadThesaurus("EnglishThesaurus.txt")
/// </EXAMPLE>
///
/// <p><i><u>Automatic Classification</u></i></p>
///
/// The example above not only repopulates the English dictionary, it also associates a <i>category</i> with
/// each document.  For example, if myDocument is an email, then category might be "junk" or "normal", or if
/// myDocument is a problem report, then category might be the name of the person who resolved the problem.
/// Classifying documents in this fashion makes it possible to automatically classify new and unseen documents
/// into one of the known categories based on the similarity of the previously unseen document with the documents
/// in each category.  The <METHOD>Classify</METHOD> computes the probability that a given document belongs to
/// each of the known categories, and returns a $list of the n most likely categories, in decreasing order of
/// probability.
/// <p>
/// A more whimsical (but hopefully interesting) example that illustrates the potential power
/// of automatic classification would be to evaluate the true authorship of a document.  A few
/// literary scholars have speculated that some of the famous later works attributed to
/// William Shakespeare were actually authored by Christopher Marlowe.  Marlowe and Shakespeare
/// attended the same school, and probably knew each other in England before Marlowe was forced to
/// flee in secrecy and live in hiding in Italy.  The theory is that Marlowe continued to publish his
/// works in England through Shakespeare.  If the theory is true, then <i>The
/// Merchant of Venice</i> is among the works most likely to have been written by Marlowe since Marlowe lived
/// in Italy, and Shakespeare is not known to have ever visited Italy.
/// This question could be researched by calling <METHOD>AddDocToDictionary</METHOD>
/// to gather statistics about each passage in each work attributed to Marlowe to Marlowe, and each passage
/// of each early work attributed to Shakespeare (up to the time of Marlowe's departure to Italy) to
/// Shakespeare.  The Classify class method could then directly estimate whether
/// each passage of <i>The Merchant of Venice</i> is more similar to early works
/// attributed to Shakespeare than to works attributed to Marlowe.
///
Class %Text.Text Extends %Library.String [ System = 4 ]
{

/// <PARAMETER>FILTERNOISEWORDS</PARAMETER> controls whether common-word filtering is enabled.
/// Specifying a list of noise words can greatly reduce the size of a text index and the associated
/// index update time; however, to perform text search it is necessary to also remove noise words
/// from the search pattern, and this can produce some counter-intuitive results.  See example below.
/// <p>
/// Setting up noise word filtering is
/// a two-step process:  First enable noise word filtering by setting FILTERNOISEWORDS=1.  Second,
/// populate the noise word dictionary by calling the <METHOD>ExcludeCommonTerms</METHOD>
/// with the desired number of noise words to populate the corresponding DICTIONARY.  ExcludeCommonTerms
/// purges the previous set of noise words, so it may be called any number of times, but it is necessary
/// to rebuild all text indexes on the corresponding properties whenever the list of noise words is changed.
/// <p>
/// <b>Note:</b> The SQL predicate:
/// <EXAMPLE LANGUAGE=SQL>
/// SELECT myDocument FROM table t WHERE myDocument %CONTAINS ('to be or not to be')
/// </EXAMPLE>
/// will not find any qualifying rows if 'to, be, or, not' are all noise words; however, if <i>any</i>
/// of these terms are not noise words, then only the non-noise words will participate in the matching
/// process.
///
Parameter FILTERNOISEWORDS = 1;

/// NOISEWORDSnnn lists the most common words in the language, in order of their frequency of occurrence.
/// See http://www.ranks.nl/stopwords/ for a list of commonly used noise words for many different languages.
///
Parameter NOISEWORDS100;

Parameter NOISEWORDS200;

Parameter NOISEWORDS300;

Parameter NOISEBIGRAMS100;

Parameter NOISEBIGRAMS200;

Parameter NOISEBIGRAMS300;

/// MINWORDLEN specifies the minimum length word that will be retained
/// excluding ngram words and post-stemmed words.
///
/// <PARAMETER>MINWORDLEN</PARAMETER> provides a simple means of excluding terms based on their
/// length, since it is usually the case that short words such as 'a', 'to', 'an', etc., are
/// connectives that contain little information content.  The length refers to the number of
/// characters in the original document.  Note that if stemming or thesaurus translation is
/// enabled, then the length of the term in a text index may have fewer than MINWORDLEN
/// characters.
/// <p>
/// <b>Note:</b> MINWORDLEN should typically be set to 3 or less when <PARAMETER>STEMMING</PARAMETER>=1,
/// since otherwise a word stem could be classified as a noise word even though alternate forms of the
/// word would not be classified as a noise word.  For example, with MINWORDLEN=5 "jump" would be discarded
/// as a noise word, whereas "jumps" would not.
///
Parameter MINWORDLEN = 3;

/// <PARAMETER>MAXWORDLEN</PARAMETER> specifies the maximum word length that will be retained.  See also <PARAMETER>MINWORDLEN</PARAMETER>
///
Parameter MAXWORDLEN = 128;

/// <PARAMETER>NUMERIC</PARAMETER> specifies whether numeric terms will be retained(1) or ignored(0).
Parameter NUMERIC = 1;

/// <PARAMETER>NGRAMLEN</PARAMETER> is the maximum number of words that will be regarded as a single
/// search term.  When NGRAMLEN=2, two-word combinations will be added to any
/// index, in addition to single words.  Consecutive words exclude noise words.
///
Parameter NGRAMLEN = 1;

/// <PARAMETER>NUMCHARS</PARAMETER> specifies the characters other than digits that may appear
/// in a number.  Note that if "," is included in NUMCHARS, then "1,000" will be considered a
/// single number, but the comma will be removed so that "1,000" will match "1000" using the
/// %CONTAINS SQL predicate.  The characters "." and "-" are also special and mark the beginning of
/// a numeric term when the next character is numeric, regardless of how NUMCHARS is defined.
Parameter NUMCHARS = ".-,";

/// <PARAMETER>WORDCHARS</PARAMETER> specifies the characters other than alphabetic that may
/// appear in a word.  For example, to regard hyphenated words as terms, include "-" in WORDCHARS.
/// Note that characters that are not numbers or words are ignored for the purpose of comparison
/// with the %CONTAINS operator, therefore the search pattern "off-hand" will match "off hand"
/// if WORDCHARS="", but not if WORDCHARS="-"; conversely, "off-hand" will match "offhand" if
/// WORDCHARS="-", but not if WORDCHARS="".
Parameter WORDCHARS;

/// <PARAMETER>CASEINSENSITIVE</PARAMETER>=1 causes comparisons to be performed by %CONTAINS
/// in a case-insensitive manner when the collation of the underlying property is case
/// insensitive.  Setting <PARAMETER>CASEINSENSITIVE</PARAMETER>=1 improves
/// matching and typically reduces both the size of the index and index update time.
/// Note that <PARAMETER>CASEINSENSITIVE</PARAMETER> is not applicable to the %CONTAINSTERM operator,
/// since %CONTAINSTERM always compares terms using the collation of the specified property.
Parameter CASEINSENSITIVE = 1;

/// <PARAMETER>STEMMING</PARAMETER> replaces each word by its language-specific stem to improve the
/// matching quality.  Note that stemmed words are modified, and may or may
/// not correspond to real words in the language.  If stemming is enabled, then
/// search patterns must also be stemmed prior to searching.
/// <p>
/// <b>Note:</b> Stemming of search
/// strings is performed automatically by the %CONTAINS SQL predicate if stemming is enabled
/// on the corresponding property; however, stemming is <i>not</i> automatically performed by
/// the more primitive FOR SOME %ELEMENT SQL predicate.
///
Parameter STEMMING = 1;

/// <PARAMETER>THESAURUS</PARAMETER> specifies that a language-specific thesaurus is to be used in place of,
/// or in addition to, stemming.  If an unstemmed term is found in the thesaurus, then
/// the term in the thesaurus is used, otherwise if stemming is enabled then the term
/// is first stemmed, and then the thesaurus is searched again for the stemmed term.  If
/// the term or stemmed term is found in the thesaurus, then the thesaurus term is used,
/// otherwise the term or stemmed term is used.
///
Parameter THESAURUS = 0;

/// Text search applications sometimes need to highlight the matching terms found
/// in a document.  The array returned by BuildValueArray makes this possible by
/// encoding the character offset of each occurrence of each term within a document,
/// along with the number of occurrences of each term.  Since the number of occurrences
/// has no upper limit and you may want to store the occurrence list in an index, the
/// <PARAMETER>MAXOCCURS</PARAMETER> parameter imposes an upper bound on the number of
/// character positions that will be retained.
/// <p>
/// The first ..#MAXOCCURS-1 positions, the last position,
/// and the total count of occurrences are returned in the %value portion of
/// the valueArray in the format:  count ^ pos1 ^ deltaPos2 ^ deltaPos3... ^ deltaPosN-1^ posN, where the
/// separator "^" is defined as the "metachar", and may be redefined if necessary.
/// The "deltaPos" are delta-compressed positions, so the first and last positions are
/// simple character offsets into the document.  The second position can be recovered by
/// summing pos1+deltaPos2, the third by summing pos1+deltaPos2+deltaPos3, and so on.
Parameter MAXOCCURS = 5;

/// The default dictionary for properties of this class.  By overriding the
/// <PARAMETER>DICTIONARY</PARAMETER> you can create separate dictionaries for different kinds
/// of properties in the same language.  For example, email documents, legal briefs, and
/// medical records might each have a separate dictionary so that term frequency and document
/// similarity can be appropriately estimated in each separate domain.
///
Parameter DICTIONARY = 1;

/// See <METHOD>SimilarityIdx</METHOD>
Parameter OKAPIBM25B = .2;

/// See <METHOD>SimilarityIdx</METHOD>
Parameter OKAPIBM25K1 = 2;

/// See <METHOD>SimilarityIdx</METHOD>
Parameter OKAPIBM25K3 = 7;

/// By default, there is no default MAXLEN; that is, it must be specified wherever a %Text.Text
/// property is declared.  This behavior may be overridden by specifying MAXLEN as a positive
/// integer in the <CLASS>%Library.Text</CLASS> class and optionally also in the <CLASS>%Text.Text</CLASS>
/// class.
///
Parameter MAXLEN;

/// Languages such as Japanese require the raw document text to be parsed and
/// separated into words before being processed by the class methods.
/// If SEPARATEWORDS=1 then call the SeparateWords() class method.
///
Parameter SEPARATEWORDS = 0;

/// <PARAMETER>TARGETLANGUAGE</PARAMETER> specifies the default target language to translate
/// documents or queries to.  This enables documents written and stored in multiple langauges to
/// be queried in a single common language.  See also <PARAMETER>TARGETLANGUAGECLASS</PARAMETER>.
/// To find the list of values
///
Parameter TARGETLANGUAGE;

/// <PARAMETER>TARGETLANGUAGECLASS</PARAMETER> specifies the class to use when <PARAMETER>TARGETLANGUAGE</PARAMETER>
/// has been specified as a non-null value.  For example, if TARGETLANGUAGE="fr", then by default the
/// TARGETLANGUAGECLASS would be "%Text.French", but if you extend the %Text.French class and also want to also
/// use it as a target class, then you need to override TARGETLANGUAGECLASS in every class that is
/// referenced by a LANGUAGECLASS.
Parameter TARGETLANGUAGECLASS;

/// <PARAMETER>SOURCELANGUAGEUAGE</PARAMETER> specifies the default source language to translate
/// documents or queries from.  This enables documents written and stored in multiple langauges to
/// be queried in a single common language.
///
Parameter SOURCELANGUAGE;

/// <PARAMETER>IGNOREMARKUP</PARAMETER> is a Boolean (0/1) flag.  If equal to 1, then all content
/// between '<' and '>' will be ignored.  Note that the text must be properly escaped in order to
/// pass literal '<' and '>' characters when IGNOREMARKUP=1.
Parameter IGNOREMARKUP = 0;

/// The <METHOD>BuildValueArray</METHOD> method tokenizes a text string into a collection of
/// terms (words or phrases), computes statistics (count and positions) of each term, and stores
/// the result as <i>valueArray(term)=statistics</i>.
/// <p>
/// The statistics include the term count in $p(statistics,"#",1), and optionally include the character
/// positions where the term appears in the document in subsequent #-delimited positions, where
/// "#" is a non-word meta-character that may be redefined by an application if necessary.</p>
/// <p>
/// Three special values are also returned in the valueArray:
/// <ol>
/// <li>valueArray("#doclen") holds the number of non-noise terms in the document</li>
/// <li>valueArray("#norm") holds a statistic needed by the cosine metric (see <METHOD>SimilarityIdx</METHOD>)</li>
/// <li>valueArray holds the number of distinct terms in the document (the number of terms)</li>
/// </ol></p>
///
ClassMethod BuildValueArray(document As %Binary, ByRef valueArray As %Binary) As %Status
{
}

ClassMethod ends(b As %String, k As %Integer, sLen As %Integer, s As %String, ByRef j As %Integer) As %Boolean
{
}

/// setto(s) sets (j+1),...k to the characters in the string s, readjusting k.
ClassMethod setto(ByRef b As %String, s As %String, j As %Integer, Output k As %Integer)
{
}

ClassMethod stemWord(ByRef b As %String) As %String
{
}

/// If we must choose exactly one indexable search string from a pattern that
/// has more than ..#NGRAMLEN terms, then choose a multi-term pattern that
/// occurs in at least 3 documents, if any; otherwise just select the longest term.
///
ClassMethod ChooseSearchKey(document As %String) As %String
{
}

/// Returns the specified string in standardized form, that is: stemmed, filtered, translated,
/// space separated, with a leading and trailing space.
///
ClassMethod Standardize(document As %String, origtext As %Boolean = 0) As %String
{
}

/// Add the specified word or phrase to the current dictionary.  Optionally a repetition count
/// and a category may be specified.
///
ClassMethod AddToDictionary(word As %String, wordType As %Integer = 1, category As %String = "", wCount As %Integer = 1) As %Status
{
}

ClassMethod AddToThesaurus(term As %String, standardTerm As %String) As %Status
{
}

ClassMethod RemoveFromThesaurus(term As %String) As %Status
{
}

ClassMethod LoadThesaurus(pathname As %String) As %Status
{
}

/// Classifies the most common <i>nTerms</i> words in the current language as noise words.  The words specified
/// in <PARAMETER>NOISEWORDS100</PARAMETER>, <PARAMETER>NOISEWORDS200</PARAMETER>, and <PARAMETER>NOISEWORDS300</PARAMETER>,
/// list the most common 300 words of the current language, in order of their frequency.  Similarly, <PARAMETER>NOISEBIGRAMSn00</PARAMETER> lists
/// the most common 300 bigrams of the current language that would not typically be considered useful for searching.
///
ClassMethod ExcludeCommonTerms(nTerms) As %Status
{
}

/// Add words of the specified document to the ^%SYSDict global.  Optionally, classify the document
/// as being in the specified category so that other documents may be automatically classified.
///
/// The ..#DICTIONARY is used as the first subscript to ^%SYSDict to enable classification to be
/// carried out in both a language-specific and an application specific way.  For example, a subclass
/// of the %Text.English class could be defined for English email, with a unique DICTIONARY value.  The
/// dictionary for this sub-language of English could inherit the English stemmer, but could have its
/// own list of noise words, its own domain-specific word frequencies,
/// and possibly its own BuildValueArray that encodes words in the Subject/From/To/Body differently
/// from each other.  Email identified as belonging to the "junk mail" category could then be used to
/// help automatically classify incoming mail as "junk mail".
///
ClassMethod AddDocToDictionary(document As %String, category As %String = "") As %Status
{
}

ClassMethod RemoveDocFromDictionary(document As %String, category As %String = "") As %Status
{
}

/// Deletes all of the words, noisewords, etc. from the current dictionary.  Dictionaries
/// other than the current dictionary are not affected.
///
ClassMethod DropDictionary()
{
}

/// Classify document into one of the known categories using a semi-naive Bayesian classification algorithm.
/// A list of lists is returned, with each sublist containing the (category, score).  The score is the
/// ln(probability) of generating the document, given the category, divided by the (unknown) probability of
/// generating a document of the given length, which is assumed to be constant for all document lengths.
/// <p>
/// For background information (not used in this implementation), see www-2.cs.cmu.edu/~mccallum/bow/
/// Also see Dr. Dobb's Journal, May 2005
/// <p>
/// A basic explanation of Bayes' Rule is as follows:
/// <p>
/// Naive Bayes assumes a particular generative model for text documents.  Assumptions built into
/// the model are that (a) the data are produced by a mixture model, (b) there is a one-to-one correspondence
/// between mixture components and classes, (c) the probability that any given word appears in a document is
/// conditionally independent of the probability of appearance of any other word, and (d) the probability that
/// document Di is associated with class Cj is independent of the length of the document.
/// <p>
/// Under these assumptions, the probability that document Di could be generated by parameters T is given
/// by p(Di | T) = sum(p(Cj | T) * p(Di | Cj ; T),j=1:|C|), and
/// p(Di | Cj ; T) = p(|Di|) * product( p(word(Di,k) | Cj ; T),k=1:|Di|)
/// <p>
/// Thus the parameters of an individual mixture component are a multinomial distribution over words, i.e. the
/// collection of word probabilities.  Since the model assumes that document length is identically distributed
/// for all classes, it does not need to be parameterized to classify a document.
/// <p>
/// Learning a Naive Bayes classifier consists of estimating the parameters of the generative model by using a
/// set of pre-classified training samples.  The goal of the training procedure is to determine the parameters T
/// that maximize p(T | class(Di) = Cj), i=1:|D|, j=1:|C|).
/// <EXAMPLE LANGUAGE=NONE>
/// 	p(Category|Document) = ( p(Document|Category) * p(Category) ) / p(Document)
/// 	         exp(metric) =   p(Document|Category) * p(Category) = Product(p(Word|Category)) * p(Category)
/// 	         exp(metric) = Product(count(word,doc)/count(word,corpus)) * (nWordsInCategory / nWordsInDictionary)
/// </EXAMPLE>
/// p(Document) is unknown, but since it is independent of category we can ignore it for the purpose of computing
/// a relative p(Category|Document) score.  p(Category) is the number of words in all documents in the specified
/// category divided by the total number of words in all documents.  p(Document|Category) is defined as the product
/// of the probabilities of the individual words in that document.  p(Word) is the count of each word in the category
/// divided by the count of that word in the corpus.  We make a log transformation and compute the sum of the logs
/// of the ratios instead of computing the product of the ratios themselves.
/// <p>
/// The resulting p(Document|Category) * p(Category) can then be compared across all categories to identify the
/// category with maximum score, and hence the maximum p(Category|Document).  This is the predicted category.
/// <p>
/// Note that the use of ..#NGRAMLEN>1 invalidates the mathematical justification for using Bayesian probabilities;
/// however, biasing the probability score in favor of documents that match multi-word combinations is justifiable
/// because it partially addresses the absence of the joint probability information that is the main deficiency of
/// the naive Bayesian algorithm; therefore when ..#NGRAMLEN>1, we call this a "semi-naive" Bayesian classifier.
///
ClassMethod Classify(document As %String, topN As %Integer = 1, maxDocFreq = .20) As %List
{
}

/// See also <METHOD>SimilarityIdx</METHOD>
ClassMethod Similarity(document As %String, qList As %List) As %Numeric
{
}

/// <p>
/// This feature is not available prior to version 2007.1
/// <p>
/// An index that supports both Boolean queries (the %CONTAINS operator) and ranking queries (the %SIMILARITY operator)
/// may be created by removing TYPE=BITMAP and by specifying "[ DATA = myDocument(ELEMENTS) ]".  If such an index is
/// created, then also specify the name of the index in the SIMILARITYINDEX parameter of the corresponding property as follows:
/// <EXAMPLE LANGUAGE=UDL>
/// PROPERTY myDocument As %Text (MAXLEN = 256, LANGUAGECLASS = "%Text.English", SIMILARITYINDEX="bigIndex");
/// INDEX bigIndex ON myDocument(KEYS) [ DATA=myDocument(ELEMENTS) ];
/// </EXAMPLE>
/// <p>
///  This method computes a score that relates the similarity of a query document
///  to a reference document.  Many similarity heuristics have been proposed,
///  and have been shown to be effective on real data sets.  A variation of one
///  effective and commonly used statistic is the cosine measure:
///  <EXAMPLE LANGUAGE=NONE>
///                          SUM(w(q,t)*w(d,t))            for t in both q and d
///        C(q,d) = -------------------------------------
///                 SQRT(SUM(w(d,t)^2)*SQRT(SUM(w(q,t)^2)  for all t
///  </EXAMPLE>
///  <p>
///  The weights w(d,t) and w(q,t) are Okapi BM25 weights, calculated as follows:
///  <EXAMPLE LANGUAGE=NONE>
///  			 w(d,t) = dtf / (dtf + sizeAdj)
///  			    dtf = term frequency in document
///  			sizeAdj = k1*((1-b) + (b * doclen/avgdoclen))
///  			      b = .75, k1 = 2
///  			 w(q,t) = qtf * IDF(N,f(t))
///  			    qtf = term frequency in query
///  		IDF(N,df) = (ln(N/df)+1) / (ln(N)+1)
///  			      N = the number of documents classified
///  			     df = document frequency, or #documents containing term
///  </EXAMPLE>
///  See: <a href="http://hartford.lti.cs.cmu.edu/classes/95-779/Lectures/03-FreqAndCooccur.pdf" target="_blank">http://hartford.lti.cs.cmu.edu/classes/95-779/Lectures/03-FreqAndCooccur.pdf</a>
///  <p>
///  <EXAMPLE LANGUAGE=NONE>
///  OkapiBM25 = SUM(QTF*ln(IDF)*DTF)
///
/// 		Where:
/// 			- IDF = (N-n+.5)/(n+.5)
/// 			- DTF = (k1+1)*tf/((k1*sizeAdjD)+tf)
/// 			- tf = frequency of occurrences of the term in the document
/// 			- sizeAdjD = (1-b) + b*doclen/avgdoclen
/// 			- QTF = (k3+1)*qtf/(k3+qtf)
/// 			- qtf = frequency of occurrences of the term in the query
///  			- doclen = document length
///  			- avgdoclen = average document length
///  			- N = is the number of documents in the collection
///  			- n = is the number of documents containing the word
///  			- k1 = 1.2
///  			- b = 0.75 or 0.25 (recommend .75 for full text and .25 for shorter representations)
///  			- k3 = 7, set to 7 or 1000, controls the effect of the query term frequency on the weight.
///  </EXAMPLE>
ClassMethod SimilarityIdx(ID As %String, textIndex As %String, qList As %List) As %Numeric
{
}

/// Internal method used by the <METHOD>Similarity</METHOD> and <METHOD>SimilarityIdx</METHOD>
/// class methods.
ClassMethod CreateQList(document As %String, coll As %String) As %List
{
}

/// Separates individual terms with whitespace, for languages such as Japanese.
ClassMethod SeparateWords(rawText As %String) As %String
{
}

/// Convert a string into a list of search terms, such that each search term contains no
/// noise words and has at most NGRAMLEN words per search term.  Use this method to convert
/// a search pattern into a list of search patterns that can be passed to %CONTAINSTERM.
/// Note that if noise word filtering is enabled, noise words will be removed.
///
ClassMethod MakeSearchTerms(searchPattern As %String, ngramlen As %Integer = 0) As %List
{
}

ClassMethod Translate(text As %String = "", langpair As %String = "", ByRef translated As %String) As %Status
{
}

/// Converts the offsets from compressed to uncompressed form
ClassMethod DecompressOffsets(compressed As %String) As %String
{
}

ClassMethod EndOfWord(document As %String, cs As %Integer) As %Integer
{
}

}
