/// This class is represents a null stream, i.e. reading from it always returns nothing, and
/// writing to it always discards the data. Used by the default implementation of Entity resolver
/// when uri scheme is unrecognized.
Class %XML.SAX.Utils.NullStream Extends %Library.AbstractStream [ Not ProcedureBlock, System = 3 ]
{

Method %Load(sid As %String) As %Status [ Private, ProcedureBlock = 1 ]
{
}

ClassMethod %DeleteData(soid As %String, concurrency As %Integer) As %Status [ Private, ProcedureBlock = 1 ]
{
}

Method %SaveData(ByRef sid As %String) As %Status [ Private, ProcedureBlock = 1 ]
{
}

Method CopyFromAndSave(source As %AbstractStream) As %Status
{
}

}
