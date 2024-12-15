/// Journal marker related API
Class %SYS.Journal.Marker Extends %SYS.Journal.Record [ System = 4 ]
{

Parameter READONLY = 1;

Property info As %VarString [ Private ];

/// Marker ID (or Marker Type)
Property MID As %Integer [ Calculated ];

/// Cluster journal sequence number of the marker on a clustered system or 0 otherwise
Property Sequence As %Integer [ Calculated ];

/// Text string associated with the marker
Property Text As %VarString [ Calculated ];

/// Object reference to the previous marker in the journal file or NULLOREF if this is the first marker
Property PrevMarker As %SYS.Journal.Marker [ Calculated ];

Method %LoadData(Offset As %String, flag As %Boolean) As %Status [ Private ]
{
}

Method MIDGet() As %Integer
{
}

Method SequenceGet() As %Integer
{
}

Method TextGet() As %String
{
}

Method PrevMarkerGet() As %SYS.Journal.Marker
{
}

Method Fetch(ByRef Row As %List, ByRef Columns As %String, Match As %List = "") As %Boolean [ Internal, PublicList = (col, match, Row, Columns) ]
{
}

/// Translate the numeric marker type (<property>MID</property>) to the string form
ClassMethod TranslateType(ID As %Integer) As %String
{
}

/// Returns a list of journal markers
ClassMethod MarkerListExecute(ByRef qHandle As %Binary, FileName As %SysPath = "", Offset As %Integer = 0) As %Status
{
}

ClassMethod MarkerListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

ClassMethod MarkerListClose(ByRef qHandle As %Binary) As %Status
{
}

}
