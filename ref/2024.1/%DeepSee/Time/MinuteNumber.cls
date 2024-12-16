/// This class implements a Minute level within a time dimension.
/// This is the minute of the date independent of the actual day. Keys are
/// 0 through 1339; displayed values are 00:00 through 23:59
Class %DeepSee.Time.MinuteNumber Extends %DeepSee.Time.AbstractLevel [ System = 3 ]
{

/// Return true if this time level is <b>independent</b> of the actual date.
ClassMethod %IsIndependent() As %Boolean
{
}

/// Return the number of seconds in one unit of this time level.
ClassMethod %GetPeriodLength() As %Integer
{
}

/// Convert a $H value to the logical value used for this level.
/// This is used within the computed field logic for properties
/// within a fact table based on this level.<br/>.
/// In this case, we convert $H to a minute:
ClassMethod %Convert(pTime As %DeepSee.Datatype.dateTime, pTimeOffset As %String = "") As %Integer [ CodeMode = expression ]
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

/// Convert a minute number into starting and ending
/// base values (in $H format).<br/>
/// As this dimension is independent of year, we use year 2000 as
/// the basis of calculations.
ClassMethod %KeyToBaseRange(pKey As %String, Output pStart As %Date, Output pEnd As %Date, pOffset As %String = "") As %Status
{
}

/// Return an array of members of this level.<br/>
/// As this dimension is independent of year, we use Jan 2000 as
/// the basis of calculations.
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