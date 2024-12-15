/// <p>This <class>%iKnow.Matching.Formats.Format</class> implementation enables users to use the
/// iFind search syntax as a pattern to locate matching entities in an iKnow domain. Please bear in
/// mind that iFind is meant for search scenario's (when looking up records matching the search string),
/// whereas iKnow matching is meant for annotation scenario's (to identify all matches of a search
/// string in a full domain).</p>
/// <p>Note: matches are only detected <i>within</i> entities and are case-insensitive.</p>
/// <p><b>Format parameters:</b></p>
/// <ol>
/// 	<li><b>iFind expression</b> (<class>%String</class>, mandatory): </li>
/// </ol>
Class %iKnow.Matching.Formats.iFind Extends Format [ Deprecated, System = 4 ]
{

Method MatchSingle(string As %String, formatParams As %List, Output matchScore As %Numeric, Output matchedWordBits, Output isScattered As %Boolean, Output formatOutput) As %Status
{
}

}
