/// Serial object interface
Class %Storage.Serial Extends %SerialState [ Abstract, System = 2 ]
{

Parameter STORAGECOMPILERCLASS = "%Compiler.Storage.Serial";

Method %GetSerial(force As %Integer = 0) As %String [ CodeMode = generator, Private, ProcedureBlock = 0 ]
{
}

Method %IsNull() As %Boolean [ CodeMode = generator, ProcedureBlock = 0 ]
{
}

/// Return true if pOID is a null object and false if the object is not null
ClassMethod %ObjectIsNull(pOID As %ObjectIdentity) As %Boolean
{
}

/// 	Set Serialized State.
Method %SetSerial(val As %String) As %Status [ CodeMode = generator, Private ]
{
}

/// 	LogicalToOdbc()
/// 		Construct a string delimited by ODBCDELIMITER from an object's serialized state.
ClassMethod LogicalToOdbc(val As %String = "") As %String [ CodeMode = generator ]
{
}

ClassMethod OdbcToLogical(val As %String = "") As %String [ CodeMode = generator ]
{
}

}
