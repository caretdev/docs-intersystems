Class %Collection.MV.ListOfObj Extends %Collection.ListOfObj [ System = 2 ]
{

Parameter IdCollection As BOOLEAN = 1;

/// Serialize() constructs a serialized form of the collection as a string
Method Serialize(force As %Integer = 0) As %String(MAXLEN="")
{
}

Method DeSerialize(serialized As %String(MAXLEN="")) As %Status
{
}

/// Converts the serial state of this list object to a delimited string
/// using <i>delim</i> (default delim is ",") as a delimiter.
ClassMethod LogicalToOdbc(val As %String = "", delim As %String = ",", class As %String = "", method As %String = "") As %String
{
}

/// Converts the value of an incoming delimited string to a serialized state
/// using <i>delim</i> (default delim is ",") as a delimiter.
ClassMethod OdbcToLogical(val As %String = "", delim As %String = ",", class As %String = "", method As %String = "") As %String
{
}

/// Converts the serial state of this list object to a delimited string
/// using the value of the <var>%delim</var> argument as a delimiter.
ClassMethod LogicalToDisplay(val As %String = "", delim As %String = {$char(13,10)}, class As %String = "", method As %String = "") As %String
{
}

/// Converts the value of an incoming delimited string to a serialized state
/// using the value of the <var>delim</var> argument as a delimiter.
ClassMethod DisplayToLogical(val As %String = "", delim As %String = {$char(13,10)}, class As %String = "", method As %String = "") As %String
{
}

}
