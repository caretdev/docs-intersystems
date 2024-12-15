/// <b>
/// Note: The class definition classes in the %Library package have been superceded
/// by those in the %Dictionary package. Instead use <class>%Dictionary.CompiledMethod</class>.</b>
/// <p>
/// This class represents a specific method description for a compiled class.
Class %Library.CompiledMethod Extends %Persistent [ Deprecated, Not ProcedureBlock, StorageStrategy = custom, System = 2 ]
{

/// A string containing the name of the class the method belongs to.
Property ClassName As %RawString;

/// A string containing the name of the method.
Property Name As %RawString;

/// A flag indicating whether the method is a class method (1) or an instance method (0).
Property ClassMethod As %RawString;

/// A flag indicating whether the method is private (1) or public (0).
Property Private As %RawString;

/// A flag indicating whether the method returns a value (1) or not (0).
Property QuitWithValue As %RawString;

/// A string containing the return type (a class name) for the method. If there is
/// no return type it contains a null string ("").
Property ReturnType As %RawString;

Method %LoadData(methodId As %String) As %Status [ Private ]
{
}

Method %SaveData(id As %String) As %Status [ Private ]
{
}

ClassMethod %DeleteData(id As %String, concurrency As %Integer) As %Status [ Private ]
{
}

}
