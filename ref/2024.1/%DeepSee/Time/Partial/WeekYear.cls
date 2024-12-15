/// This class implements an ISO 8601 year and week level within a time dimension.
/// This represents the week number (0 through 53) of a given year.<br/>
/// The key value for this level takes the form "YYYYWnn"
Class %DeepSee.Time.Partial.WeekYear Extends %DeepSee.Time.AbstractLevel [ System = 3 ]
{

Parameter DIMTYPE = "week";

Parameter CALENDAR As STRING = "partial";

/// Return true if this level supports a NOW member.
ClassMethod %SupportsNOW() As %Boolean
{
}

/// Convert a partial date value to the logical value used for this level.
/// This is used within the computed field logic for properties
/// within a fact table based on this level.<br/>.
/// In this case, we convert yyyy-mm-dd to an ISO Week: YYYYWnn
ClassMethod %Convert(pTime As %DeepSee.Datatype.dateTime, pTimeOffset As %String = "") As %Integer
{
}

/// Return the total number of members within this level.<br/>
ClassMethod %Count(pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %Integer
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

/// Convert a week into starting and ending base values (in partial date ODBC format).<br/>
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

/// Return the number of ISO weeks within a given year.
ClassMethod ISOWEEKSINYEAR(pYear As %Integer) As %Integer
{
}

/// Return the ISO day of week for a given ODBC date value: Monday = 1, Sunday = 7.
ClassMethod ISODOW(pDate As %String) As %Integer
{
}

/// Compute the ISO week number (with no year) for a given ODBC date value.
ClassMethod ISOWEEKNUM(pDate As %String) As %Integer
{
}

/// Compute the ISO week number and corresponding year for a given ODBC partial date value.
/// Returns the ISO compatible display form of the week: YYYYWnn.<br/>
ClassMethod ISOWEEK(pDate As %String, Output pWeek As %Integer, Output pYear As %Integer) As %String
{
}

/// For a given ISOWEEK (YYYYWnn), find its start and end dates. Dates are returned in ODBC format
ClassMethod ISOWEEKToRange(pWeek As %String, Output pStart As %String, Output pEnd As %String)
{
}

}
