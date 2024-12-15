Class %Collection.MV.ArrayOfDT Extends %Collection.ArrayOfDT [ System = 2 ]
{

/// Converts the serial state of this list object to a delimited string
/// using "," as a delimiter.
ClassMethod LogicalToOdbc(val As %String = "") As %String [ CodeMode = expression ]
{
}

/// Converts the value of an incoming delimited string to a serialized state
/// using "," as a delimiter.
ClassMethod OdbcToLogical(val As %String = "") As %String [ CodeMode = expression ]
{
}

/// Serialize() constructs a serialized form of the collection as a string
Method Serialize(force As %Integer = 0) As %String(MAXLEN="")
{
}

Method DeSerialize(serialized As %String(MAXLEN="")) As %Status
{
}

}
