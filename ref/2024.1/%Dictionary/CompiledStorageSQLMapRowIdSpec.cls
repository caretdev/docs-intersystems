Class %Dictionary.CompiledStorageSQLMapRowIdSpec Extends %Persistent [ StorageStrategy = custom, System = 2 ]
{

/// Pointer to the containing parent object
Relationship parent As %Dictionary.CompiledStorageSQLMap [ Cardinality = parent, Inverse = RowIdSpecs ];

/// Stores the DEFINED state of each attribute.
Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];

/// Expression
Property Expression As %RawString;

/// Field
Property Field As %RawString;

/// KeywordError
Property KeywordError As %Boolean;

/// KeywordModified
Property KeywordModified As %Boolean;

/// Name
Property Name As %Integer [ Required ];

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

Method ExpressionSet(value As %String = "") As %Status
{
}

Method ExpressionReset()
{
}

Method ExpressionIsDefined() As %Boolean
{
}

Method FieldSet(value As %String = "") As %Status
{
}

Method FieldReset()
{
}

Method FieldIsDefined() As %Boolean
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

ClassMethod parentOnDelete(id As %String, concurrency As %Integer) As %Status
{
}

}
