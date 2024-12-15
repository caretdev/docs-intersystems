/// This class implements a Decade level within a time dimension.<br/>
/// A decade is a group of ten years and is displayed in the format:<br/>
/// "1960s", "1990s".<br/>
/// The key value for a decades also has a trailing "s": &[1990s]<br/>
Class %DeepSee.Time.Hijri.Decade Extends %DeepSee.Time.AbstractLevel [ System = 3 ]
{

Parameter CALENDAR = "hijriTabular";

/// Convert a $H value to the logical value used for this level.
/// This is used within the computed field logic for properties
/// within a fact table based on this level.<br/>.
/// In this case, we convert $H to the decade number.
/// The decade number takes the form: 2000s,2010s.
ClassMethod %Convert(pTime As %DeepSee.Datatype.dateTime, pOffset As %String = "") As %Integer
{
}

/// Return the user-visible name of this level.
ClassMethod %GetName() As %String
{
}

/// Convert a level key value to a display value.
ClassMethod %KeyToValue(pKey As %Integer, pFormat As %String = "", pOffset As %String = "") As %String
{
}

/// Convert a level display value to its corresponding key value.
/// Return "" if there is no corresponding key.
ClassMethod %ValueToKey(pValue As %String, pFormat As %String = "", pOffset As %String = "") As %Integer
{
}

/// Convert a decade value (starting year of decade) into starting and ending
/// base values (in $H format).
ClassMethod %KeyToBaseRange(pValue As %String, Output pStart As %Date, Output pEnd As %Date, pOffset As %String = "") As %Status
{
}

/// Return an array of members of this level.
ClassMethod %GetLevelMembers(Output pList As %List, pCube As %String, pFact As %String, pStartRange As %Date, pEndRange As %Date, pTimeOffset As %String = "", pFormat As %String = "") As %Status
{
}

/// Return, via <var>pRelatedKey</var> a key within this level
/// related to <var>pKey</var>.<br/>
ClassMethod %GetRelatedKey(Output pRelatedKey As %String, pCube As %String, pFact As %String, pKey As %String, pRelation As %String, pOffset As %Integer = "", pEndKey As %String = "", pTimeOffset As %String = "") As %Status
{
}

/// Return true if this level supports a NOW member.
ClassMethod %SupportsNOW() As %Boolean
{
}

}
