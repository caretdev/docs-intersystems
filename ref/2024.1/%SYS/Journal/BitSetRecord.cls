/// Journal BITSET record related API
Class %SYS.Journal.BitSetRecord Extends %SYS.Journal.SetKillRecord [ System = 4 ]
{

Parameter READONLY = 1;

/// Bit position of the BITSET
Property Position As %Integer [ Calculated ];

/// The length of the bit string prior to the BITSET
Property OldLength As %Integer [ Calculated ];

Method %LoadData(Offset As %String, flag As %Boolean) As %Status [ Private ]
{
}

Method NewValueGet() As %String
{
}

Method OldValueGet() As %String [ CodeMode = expression ]
{
}

Method PositionGet() As %Integer
{
}

Method OldLengthGet() As %Integer
{
}

Method Fetch(ByRef Row As %List, ByRef Columns As %String, Match As %List = "") As %Boolean [ Internal, PublicList = (col, match, Row, Columns) ]
{
}

}
