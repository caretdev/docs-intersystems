/// <p>This is a very simple example of a <class>%iKnow.Matching.Formats.Format</class> implementation, simply checking whether the supplied
/// strings can be converted to a proper date and optionally returning it as output. </p>
///
/// <p><b>Format parameters:</b></p>
/// <ol>
/// 	<li><b>dateFormat</b> (<class>%Integer</class>, default -1): the dformat parameter passed to $zdateh or $zdatetimeh</li>
/// 	<li><b>timeFormat</b> (<class>%Integer</class>, default 0): the tformat parameter passed to $zdatetimeh, 0 means no time is checked</li>
/// 	<li><b>output</b> (<class>%Boolean</class>, default 0): whether or not to output the identified date</li>
/// </ol>
Class %iKnow.Matching.Formats.SimpleDateFormat Extends %iKnow.Matching.Formats.Format [ Deprecated, System = 4 ]
{

Method MatchSingle(string As %String, formatParams As %List, Output matchScore As %Numeric, Output matchedWordBits, Output isScattered As %Boolean, Output formatOutput) As %Status
{
}

}
