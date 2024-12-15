/// <p>This sample <class>%iKnow.Matching.Formats.Format</class> implementation checks whether a string starts with a given character sequence,
/// offering a meaningful <method>MatchAll</method> example.</p>
///
/// <p><b>Format parameters:</b></p>
/// <ol>
/// 	<li><b>prefix</b> (<class>%String</class>, no default) - the prefix to check for, with no double, starting or trailing spaces</li>
/// 	<li><b>outputType</b> (<class>%Integer</class>, default 0) - what to supply in terms of output:
/// 			<ul>
/// 			<li>0: no output</li>
/// 			<li>1: the remainder of the word following the (first occurrence of the) prefix</li>
/// 			<li>2: same as 1, but if there is a space following the prefix, returns the next word</li>
/// 			<li>3: the whole entity starting right after the (first occurrence of the) prefix</li>
/// 			</ul></li>
/// </ol>
Class %iKnow.Matching.Formats.SimplePrefixFormat Extends %iKnow.Matching.Formats.Format [ Deprecated, System = 4 ]
{

/// <!-- This only works if the $$$IKMATCHINGCASELOWER is used -->
Method HasMatchAll() As %Boolean
{
}

Method MatchAll(stringsGlobalName As %String, resultGlobalName As %String, formatParams As %List, minEntUniId As %Integer = 0) As %Status
{
}

Method MatchSingle(string As %String, formatParams As %List, Output matchScore As %Numeric, Output matchedWordBits, Output isScattered As %Boolean, Output formatOutput) As %Status
{
}

Method CalculateOutParams(string As %String, prefix As %String, outputType As %Integer, Output matchScore As %Numeric, Output matchedWordBits, Output isScattered As %Boolean, Output formatOutput) As %Status [ Private ]
{
}

}
