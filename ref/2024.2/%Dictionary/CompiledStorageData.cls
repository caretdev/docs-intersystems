Class %Dictionary.CompiledStorageData Extends %Persistent [ StorageStrategy = custom, System = 2 ]
{

/// Pointer to the containing parent object
Relationship parent As %Dictionary.CompiledStorage [ Cardinality = parent, Inverse = Data ];

/// Stores the DEFINED state of each attribute.
Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];

/// Attribute
Property Attribute As %RawString;

/// Specifies the name of the global this Columnar column is stored in.
Property ColumnarGlobal As %RawString;

/// Specifies the name of the global to store this field in.
Property DataDefinitionLocation As %RawString;

/// KeywordError
Property KeywordError As %Boolean;

/// KeywordModified
Property KeywordModified As %Boolean;

/// Specifies the name of the StorageData definition. This name must be a valid storage member name and must not conflict with any other StorageData names.
Property Name As %RawString [ Required ];

/// Specifies the size of the small chunk for this colmnar string field.
Property SmallChunkSize As %Integer;

/// Specifies how the data is stored into a global node.
Property Structure As %RawString;

/// Subscript
Property Subscript As %RawString;

/// Value
Relationship Values As %Dictionary.CompiledStorageDataValue [ Cardinality = children, Inverse = parent ];

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

Method AttributeSet(value As %String = "") As %Status
{
}

Method AttributeReset()
{
}

Method AttributeIsDefined() As %Boolean
{
}

Method ColumnarGlobalSet(value As %String = "") As %Status
{
}

Method ColumnarGlobalReset()
{
}

Method ColumnarGlobalIsDefined() As %Boolean
{
}

Method DataDefinitionLocationSet(value As %String = "") As %Status
{
}

Method DataDefinitionLocationReset()
{
}

Method DataDefinitionLocationIsDefined() As %Boolean
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

Method SmallChunkSizeSet(value As %String = "") As %Status
{
}

Method SmallChunkSizeReset()
{
}

Method SmallChunkSizeIsDefined() As %Boolean
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

Method SubscriptSet(value As %String = "") As %Status
{
}

Method SubscriptReset()
{
}

Method SubscriptIsDefined() As %Boolean
{
}

ClassMethod parentOnDelete(id As %String, concurrency As %Integer) As %Status
{
}

}
