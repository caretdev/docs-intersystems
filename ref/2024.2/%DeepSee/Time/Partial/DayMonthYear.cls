/// This class implements a Day level within a time dimension.
/// This is a specific day value that includes month and year.
Class %DeepSee.Time.Partial.DayMonthYear Extends %DeepSee.Time.AbstractLevel [ System = 3 ]
{

Parameter DIMTYPE;

Parameter CALENDAR As STRING = "partial";

/// Convert a partial date ODBC value to the logical value used for this level.
/// This is used within the computed field logic for properties
/// within a fact table based on this level.<br/>.
/// In this case we convert partial date to the form YYYY-MM-DD.
ClassMethod %Convert(pTime As %DeepSee.Datatype.dateTime, pTimeOffset As %String = "") As %Integer
{
}

/// Return the user-visible name of this level.
ClassMethod %GetName() As %String
{
}

/// Convert a level key value (yyyy[-mm[-dd]]) to a display value. Partial dates support.
ClassMethod %KeyToValue(pKey As %Integer, pFormat As %String = "", pTimeOffset As %String = "") As %String
{
}

/// Convert a level display value to its corresponding key value.
/// Return "" if there is no corresponding key.
ClassMethod %ValueToKey(pValue As %String, pFormat As %String = "", pOffset As %String = "") As %Integer
{
}

/// Convert a day of month ($H) into starting and ending
/// base values (in $H format).
ClassMethod %KeyToBaseRange(pKey As %String, Output pStart As %Date, Output pEnd As %Date, pOffset As %String = "") As %Status
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
