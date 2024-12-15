/// <p>This sample <class>%iKnow.Matching.Formats.Format</class> implementation checks whether any word in a string ends with the supplied
/// suffix and optionally returns the fragment (or just the word) preceding the suffix. If the suffix
/// is preceded by only a single word (directly or separated with a space), it is considered a full
/// match.</p>
///
/// <p><b>Format parameters:</b></p>
/// <ol>
/// 	<li><b>suffix</b> (<class>%String</class>, no default) - the suffix to check for (cannot contain spaces)</li>
/// 	<li><b>lastWordOnly</b> (<class>%Boolean</class>, default 0) - whether to check for the last word of the entity only</li>
/// 	<li><b>outputType</b> (<class>%Integer</class>, default 0) - what to supply in terms of output:
/// 			<ul>
/// 			<li>0: no output</li>
/// 			<li>1: the remainder of the word preceding the (first occurrence of the) suffix</li>
/// 			<li>2: same as 1, but if there is a space preceding the suffix, returns the word before</li>
/// 			<li>3: the whole entity up to the (first occurrence of the) suffix</li>
/// 			</ul></li>
/// </ol>
Class %iKnow.Matching.Formats.SimpleSuffixFormat Extends %iKnow.Matching.Formats.Format [ Deprecated, System = 4 ]
{

Method MatchSingle(string As %String, formatParams As %List, Output matchScore As %Numeric, Output matchedWordBits, Output isScattered As %Boolean, Output formatOutput) As %Status
{
}

}
