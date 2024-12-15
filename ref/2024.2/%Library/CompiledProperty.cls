/// <b>
/// Note: The class definition classes in the %Library package have been superceded
/// by those in the %Dictionary package. Instead use <class>%Dictionary.CompiledProperty</class>.</b>
/// <p>
/// This class represents a specific property description for a compiled class.
Class %Library.CompiledProperty Extends %Persistent [ Deprecated, Not ProcedureBlock, StorageStrategy = custom, System = 2 ]
{

/// A string containing the name of the class the property belongs to.
Property ClassName As %RawString;

/// A string containing the name of the property.
Property Name As %RawString;

/// A flag indicating whether the property is calculated (1) or not (0).
Property Calculated As %RawString;

/// If the property is a collection, this is a string containing the name of
/// the collection type. If the property is not a collection (single-valued) it
/// contains a null string ("").
Property Collection As %RawString;

Property Datatype As %RawString;

/// A string containing the initial value expression for the property.
Property InitialExpression As %RawString;

/// A flag indicating whether the property is multi-dimensional (1) or not (0).
Property MultiDimensional As %RawString;

Property Persistent As %RawString;

/// A flag indicating whether the property is private (1) or public (0).
Property Private As %RawString;

/// A flag indicating whether the property is required (1) or not (0).
Property Required As %RawString;

Property RuntimeDatatype As %RawString;

Property RuntimeType As %RawString;

/// A flag indicating whether the property is transient (1) or not (0).
Property Transient As %RawString;

/// A string containing the defined type (class name) of the field.
Property Type As %RawString;

/// An array containing any parameter definitions for the property. The array
/// keys are the parameter names and the array values are the parameter values.
Property Parameters As array Of %RawString;

Method %LoadData(propertyId As %String) As %Status [ Private ]
{
}

Method %SaveData(id As %String) As %Status [ Private ]
{
}

ClassMethod %DeleteData(id As %String, concurrency As %Integer) As %Status [ Private ]
{
}

/// The <b>PropertyInfo</b> query provides a summary of information about properties
/// contained within the specific class <PARAMETER>ClassName</PARAMETER>.
ClassMethod PropertyInfoExecute(ByRef QHandle As %Binary, ClassName As %String) As %Status
{
}

ClassMethod PropertyInfoFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

ClassMethod PropertyInfoClose(QHandle As %Binary) As %Status
{
}

}
