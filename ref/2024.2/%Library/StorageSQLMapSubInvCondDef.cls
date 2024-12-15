/// Contains SQL subscript Invalid Condition information for a storage definition for a class within the
/// <i>Class Dictionary</i>.
Class %Library.StorageSQLMapSubInvCondDef Extends %AbstractDefinition [ Not ProcedureBlock, StorageStrategy = custom, System = 3 ]
{

Property ClassName As %RawString;

Property StorageName As %RawString;

Property MapName As %RawString;

Property SubscriptName As %RawString;

Property Name As %RawString;

Property Expression As %RawString;

Method %OnNew(initvalue As %String) As %Status [ Private ]
{
}

Method %OnValidateObject() As %Status [ Private ]
{
}

Method %LoadData(id As %String) As %Status [ Private ]
{
}

Method %SaveData(id As %String) As %Status [ Private ]
{
}

ClassMethod %DeleteData(id As %String, concurrency As %Integer) As %Status [ Private ]
{
}

}
