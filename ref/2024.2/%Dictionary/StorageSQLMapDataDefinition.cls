Class %Dictionary.StorageSQLMapDataDefinition Extends %Persistent [ StorageStrategy = custom, System = 2 ]
{

/// Pointer to the containing parent object
Relationship parent As %Dictionary.StorageSQLMapDefinition [ Cardinality = parent, Inverse = Data ];

/// Stores the DEFINED state of each attribute.
Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];

/// Delimiter
Property Delimiter As %RawString;

/// Name
Property Name As %RawString [ Required ];

/// Node
Property Node As %RawString;

/// Piece
Property Piece As %RawString;

/// RetrievalCode
Property RetrievalCode As %RawString;

Parameter SQLENABLED = 1;

Trigger OnInsertUpdate [ Event = INSERT/UPDATE ]
{
}

Trigger OnDelete [ Event = DELETE, Time = AFTER ]
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

Method DelimiterSet(value As %String = "") As %Status
{
}

Method DelimiterReset()
{
}

Method DelimiterIsDefined() As %Boolean
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

Method NodeSet(value As %String = "") As %Status
{
}

Method NodeReset()
{
}

Method NodeIsDefined() As %Boolean
{
}

Method PieceSet(value As %String = "") As %Status
{
}

Method PieceReset()
{
}

Method PieceIsDefined() As %Boolean
{
}

Method RetrievalCodeSet(value As %String = "") As %Status
{
}

Method RetrievalCodeReset()
{
}

Method RetrievalCodeIsDefined() As %Boolean
{
}

ClassMethod parentOnDelete(id As %String, concurrency As %Integer) As %Status
{
}

}
