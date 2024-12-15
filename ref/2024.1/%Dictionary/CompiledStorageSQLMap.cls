Class %Dictionary.CompiledStorageSQLMap Extends %Persistent [ StorageStrategy = custom, System = 2 ]
{

/// Pointer to the containing parent object
Relationship parent As %Dictionary.CompiledStorage [ Cardinality = parent, Inverse = SQLMaps ];

/// Stores the DEFINED state of each attribute.
Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];

/// BlockCount
Property BlockCount As %Integer;

/// Condition
Property Condition As %RawString;

/// ConditionalWithHostVars
Property ConditionalWithHostVars As %Boolean;

/// ConditionFields
Property ConditionFields As %RawString;

/// Data
Relationship Data As %Dictionary.CompiledStorageSQLMapData [ Cardinality = children, Inverse = parent ];

/// Global
Property Global As %RawString [ SqlFieldName = _Global ];

/// KeywordError
Property KeywordError As %Boolean;

/// KeywordModified
Property KeywordModified As %Boolean;

/// Name
Property Name As %RawString [ Required ];

/// PopulationPct
Property PopulationPct As %RawString;

/// PopulationType
Property PopulationType As %RawString;

/// RowIdSpec
Relationship RowIdSpecs As %Dictionary.CompiledStorageSQLMapRowIdSpec [ Cardinality = children, Inverse = parent ];

/// RowReference
Property RowReference As %RawString;

/// Structure
Property Structure As %RawString;

/// Subscript
Relationship Subscripts As %Dictionary.CompiledStorageSQLMapSub [ Cardinality = children, Inverse = parent ];

/// Specifies what kind of a map this is.
Property Type As %RawString;

Parameter SQLENABLED = 1;

Trigger OnInsertUpdate [ Event = INSERT/UPDATE ]
{
}

Trigger OnDelete [ Event = DELETE ]
{
}

Method %OnNew(name As %String) As %Status [ Private ]
{
}

ClassMethod %LockId(id As %String, shared As %Boolean = 0, timeout As %Integer) As %Status
{
}

ClassMethod %UnlockId(id As %String, shared As %Boolean = 0, immediate As %Boolean = 0) As %Status
{
}

ClassMethod %Exists(oid As %ObjectIdentity) As %Boolean
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

Method BlockCountSet(value As %String = "") As %Status
{
}

Method BlockCountReset()
{
}

Method BlockCountIsDefined() As %Boolean
{
}

Method ConditionSet(value As %String = "") As %Status
{
}

Method ConditionReset()
{
}

Method ConditionIsDefined() As %Boolean
{
}

Method ConditionalWithHostVarsSet(value As %String = "") As %Status
{
}

Method ConditionalWithHostVarsReset()
{
}

Method ConditionalWithHostVarsIsDefined() As %Boolean
{
}

Method ConditionFieldsSet(value As %String = "") As %Status
{
}

Method ConditionFieldsReset()
{
}

Method ConditionFieldsIsDefined() As %Boolean
{
}

Method GlobalSet(value As %String = "") As %Status
{
}

Method GlobalReset()
{
}

Method GlobalIsDefined() As %Boolean
{
}

Method NameSet(value As %String = "") As %Status
{
}

Method NameReset()
{
}

Method NameIsDefined() As %Boolean
{
}

Method PopulationPctSet(value As %String = "") As %Status
{
}

Method PopulationPctReset()
{
}

Method PopulationPctIsDefined() As %Boolean
{
}

Method PopulationTypeSet(value As %String = "") As %Status
{
}

Method PopulationTypeReset()
{
}

Method PopulationTypeIsDefined() As %Boolean
{
}

Method RowReferenceSet(value As %String = "") As %Status
{
}

Method RowReferenceReset()
{
}

Method RowReferenceIsDefined() As %Boolean
{
}

Method StructureSet(value As %String = "") As %Status
{
}

Method StructureReset()
{
}

Method StructureIsDefined() As %Boolean
{
}

Method TypeSet(value As %String = "") As %Status
{
}

Method TypeReset()
{
}

Method TypeIsDefined() As %Boolean
{
}

ClassMethod parentOnDelete(id As %String, concurrency As %Integer) As %Status
{
}

}
