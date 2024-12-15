/// <b>
/// Note: The class definition classes in the %Library package have been superceded
/// by those in the %Dictionary package. Instead use <class>%Dictionary.CompiledQuery</class>.</b>
/// <p>
/// This class represents a specific class query description for a compiled class.
Class %Library.CompiledQuery Extends %Persistent [ Deprecated, Not ProcedureBlock, StorageStrategy = custom, System = 2 ]
{

/// A string containing the name of the class the query belongs to.
Property ClassName As %RawString;

/// A string containing the name of the query.
Property Name As %RawString;

/// A flag indicating whether the query contains an ID column (1) or not (0).
Property ContainId As %RawString;

/// A string containing a comma-delimited list of the columns returned by the query.
Property RowSpec As %RawString;

/// A string containing the name of the class used for the implementation of the query.
Property Type As %RawString;

Method %LoadData(queryId As %String) As %Status [ Private ]
{
}

Method %SaveData(id As %String) As %Status [ Private ]
{
}

ClassMethod %DeleteData(id As %String, concurrency As %Integer) As %Status [ Private ]
{
}

ClassMethod QueryInfoExecute(ByRef QHandle As %Binary, ClassName As %String) As %Status
{
}

ClassMethod QueryInfoFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

ClassMethod QueryInfoClose(QHandle As %Binary) As %Status
{
}

}
