/// <b>
/// Note: The class definition classes in the %Library package have been superceded
/// by those in the %Dictionary package. Instead use <class>%Dictionary.CompiledParameter</class>.</b>
/// <p>
/// This class represents a specific class parameter description for a compiled class.
Class %Library.CompiledParameter Extends %Persistent [ Deprecated, Not ProcedureBlock, StorageStrategy = custom, System = 2 ]
{

/// A string containing the name of the class the class parameter belongs to.
Property ClassName As %RawString;

/// A string containing the name of the class parameter.
Property Name As %RawString;

/// A string containing the default value for the class parameter.
Property Default As %RawString;

/// This is for internal use only.
Property Type As %RawString;

Method %LoadData(paramId As %String) As %Status [ Private ]
{
}

Method %SaveData(id As %String) As %Status [ Private ]
{
}

ClassMethod %DeleteData(id As %String, concurrency As %Integer) As %Status [ Private ]
{
}

}
