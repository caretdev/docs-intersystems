/// This is the base class for the family of DeepSee time hierarchy level classes.<br/>
/// A time hierarchy class defines the behavior for a level within a hierarchy within
/// a DeepSee dimension.<br/>
/// The class (non-package) part of a level class *must* be unique.
/// You will get an error when you attempt to compile a cube definition is this is not the case.
Class %DeepSee.Time.AbstractLevel Extends %RegisteredObject [ Abstract, System = 3 ]
{

/// This is a comma-delimited list of user-settable options for this
/// time function.<br/>
/// Options can be defined within a DeepSee cube definition.
Parameter OPTIONLIST As STRING;

/// Type reported back to the UI. This determines what type of control to display
/// for filters based on this class.
Parameter DIMTYPE As STRING;

Parameter CALENDAR As STRING = "gregorian";

Parameter DOMAIN As STRING = "%DeepSee";

/// Return true if this level supports a NOW member.
ClassMethod %SupportsNOW() As %Boolean
{
}

/// Return true if this time level is <b>independent</b> of the actual date.
/// For example a Month Number is independent of the actual month while a YearMonth is
/// not.
ClassMethod %IsIndependent() As %Boolean
{
}

/// Return the number of seconds in one unit of this time level.
ClassMethod %GetPeriodLength() As %Integer
{
}

/// Utility method:
/// Convert a time format string to a $ZDT format number.
/// [Previously private]
ClassMethod %FormatToZDTCode(pFormat As %String, pDefault As %Integer) As %Integer [ CodeMode = expression ]
{
}

/// Return set of possible options for this function.
/// This is return as an array subscripted by option name.
ClassMethod %GetOptionList(Output pList As %String) [ Final ]
{
}

/// Return the user-visible name of this level.
ClassMethod %GetName() As %String
{
}

/// Return the type of this level class (used by UI components).
ClassMethod %GetDimType() As %String
{
}

/// Return the calendar that this class uses to calculate the members of the level
ClassMethod %GetCalendar() As %String
{
}

/// Return the total number of members within this level.<br/>
ClassMethod %Count(pCube As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %Integer
{
}

/// Return the member specification for the given member.<br/>
ClassMethod %GetMemberSpec(pMemberId As %String, pCubeName As %String, pDimNo As %Integer, pHierNo As %Integer, pLevelNo As %Integer) As %String [ Internal ]
{
}

/// Convert a $H value to the logical value used for this level.
/// This is used within the computed field logic for properties
/// within a fact table based on this level.<br/>.
/// This is implemented by subclasses.<br/>
/// A subclass may extend this function and add additional arguments that
/// correspond to user-settable options. Option values will be
/// supplied when DeepSee invokes this method.<br/>
/// <var>pTimeOffset</var> is a time offset (interval) applied to the value.
ClassMethod %Convert(pTime As %DeepSee.Datatype.dateTime, pOffset As %String = "") As %Integer
{
}

/// Convert a level key (logical) value to a display value.
/// <var>pKey</var> is the logical value (the format is up to the implementer
/// of the class, but it must match that returned by the <method>%Convert</method> method.)<br/>
/// <var>Format</var> is an optional format value. This is specified
/// by the Format option when this level is specified within a cube definition.
/// The possible Format values are determined by the class implementor.
ClassMethod %KeyToValue(pKey As %Integer, pFormat As %String = "", pOffset As %String = "") As %String
{
}

/// Convert a level display value to its corresponding key value.
/// The format of the logical and display values are up to the class implementor.<br/>
/// <var>Format</var> is an optional format value. This is specified
/// by the Format option when this level is specified within a cube definition.<br/>
/// The possible Format values are determined by the class implementor.<br/>
/// Return "" if there is no corresponding key.
ClassMethod %ValueToKey(pValue As %String, pFormat As %String = "", pOffset As %String = "") As %Integer
{
}

/// Convert a level key value into starting and ending base values (in $H format).
ClassMethod %KeyToBaseRange(pKey As %String, Output pStart As %Date, Output pEnd As %Date, pOffset As %String = "") As %Status
{
}

/// Given a pair of base values (in $H format) find a key value that lies within the range.
ClassMethod %BaseRangeToKey(Output pKey As %String, pStart As %Date, pEnd As %Date, pOffset As %String = "") As %Status
{
}

/// Return an array of members of this level.
ClassMethod %GetLevelMembers(Output pList As %List, pCube As %String, pFact As %String, pStartRange As %Date, pEndRange As %Date, pTimeOffset As %String = "", pFormat As %String = "") As %Status
{
}

/// Return, via <var>pRelatedKey</var> a key within this level
/// related to <var>pKey</var>.<br/>
/// <var>pRelation</var> describes the relation:
/// "lead","lag","first","last"<br/>
/// "lead" and "lag" are relative to <var>pKey</var><br/>
/// "first" and "last" are relative to the first and last members of the level.<br/>
/// <var>pEndKey</var> is the end of the time period implied by the parent level (if applicable).
/// This is used by "first" and "last".<br/>
/// <var>pOffset</var> is an optional offset to apply (in the direction of the relation).<br/>
/// Note: pKey and pEndKey are key values and not $H values.
ClassMethod %GetRelatedKey(Output pRelatedKey As %String, pCube As %String, pFact As %String, pKey As %String, pRelation As %String, pOffset As %Integer = "", pEndKey As %String = "", pTimeOffset As %String = "") As %Status
{
}

/// Pull out all members of this level from the Fact table index.
ClassMethod %GetAllMembers(Output pList As %List, pCube As %String, pFact As %String, pStartRange As %Date, pEndRange As %Date, pFormat As %String = "") As %Status
{
}

/// Pull out the Nth (non-null) member (key) of this level from the Fact table index
/// where N is <var>pIndex</var>.
/// <var>pRelation</var> is "first" or "last"
/// If <var>pOffset</var> offset from the start or end.
ClassMethod %GetNthKey(Output pKey As %String, pCube As %String, pFact As %String, pRelation As %String, pOffset As %Integer = 0) As %Status [ Final ]
{
}

}
