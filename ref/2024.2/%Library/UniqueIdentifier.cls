/// The <b>%UniqueIdentifier</b> data type class represents a GUID.
Class %Library.UniqueIdentifier Extends %DataType [ ClientDataType = BINARY, OdbcType = GUID, System = 1 ]
{

/// Tests if the logical value <var>%val</var>, which is a GUID, is valid.
ClassMethod IsValid(%val As %RawString) As %Status [ ServerOnly = 0 ]
{
}

}
