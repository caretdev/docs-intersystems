/// This datatype represents a list of values and supports indexing on each individual value.
/// The list value can be in <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=OBJECTSCRIPT+$LIST+FUNCTION">$List</a> format or be a character-delimited list.
/// The default is comma-delimited.
Class %DeepSee.Datatype.list Extends %Library.String [ System = 3 ]
{

/// The maximum number of characters the string can contain.
Parameter MAXLEN = 30000;

/// This specifies whether the data in $List format (LIST) or character delimited (PIECE).
Parameter LISTTYPE [ Constraint = ",LIST,PIECE", Flags = ENUMEDIT ] = "PIECE";

/// If LISTTYPE is "PIECE", then this specifies the delimiter character.
Parameter DELIMITER = ",";

/// Convert the list to an array of values that can be indexed.
ClassMethod BuildValueArray(pDocument As %Binary, ByRef pValueArray As %String) As %Status
{
}

/// Crude display method.
ClassMethod LogicalToDisplay(%val = "") As %String
{
}

}
