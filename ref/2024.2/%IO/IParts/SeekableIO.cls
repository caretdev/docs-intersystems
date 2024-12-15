/// Aggregation holder class for methods implemented in Seekable stream classes
/// The methods of this class work for both Byte and Character streams
Class %IO.IParts.SeekableIO [ Abstract, System = 2 ]
{

Property Position As %Integer [ InitialExpression = 0, ReadOnly ];

Property Size As %Integer [ Calculated, ReadOnly ];

Method Rewind(Output pSC As %Status)
{
}

Method Seek(pPosition As %Integer = 1, Output pSC As %Status) As %Boolean [ Abstract ]
{
}

Method SizeGet() As %Integer
{
}

Method TruncateAt(pPosition As %Integer, Output pSC As %Status) As %Boolean
{
}

Method Clear(Output pSC As %Status) As %Boolean
{
}

Method Find(pMatch As %String, pPosition As %Integer = 1, pEndPosition As %Integer = -1, Output pSC As %Status, pReadLines As %Boolean = 0) As %Integer
{
}

}
