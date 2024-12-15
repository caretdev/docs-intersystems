Class %Dictionary.UDLTextDefinition Extends (%Persistent, %Dictionary.UDLTextDefinitionQuery) [ StorageStrategy = custom, System = 2 ]
{

/// Pointer to the containing parent object
Relationship parent As %Dictionary.ClassDefinition [ Cardinality = parent, Inverse = UDLTexts ];

/// Stores the DEFINED state of each attribute.
Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];

/// Category
Property Category As %RawString [ InitialExpression = "comment" ];

/// Holds the content of the UDL text.
Property Content As %Stream.TmpCharacter;

/// Speficies the COS name of the UDL text.
Property Name As %Dictionary.Identifier [ Required ];

/// Position
Property Position As %RawString [ InitialExpression = "body" ];

/// SequenceNumber
Property SequenceNumber As %Integer [ InitialExpression = 0 ];

/// TextType
Property TextType As %Integer [ InitialExpression = 0 ];

ClassMethod CategoryIsValid(val As %String) As %Status
{
}

ClassMethod PositionIsValid(val As %String) As %Status
{
}

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

Method CategorySet(value As %String = "") As %Status
{
}

Method CategoryReset()
{
}

Method CategoryIsDefined() As %Boolean
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

Method PositionSet(value As %String = "") As %Status
{
}

Method PositionReset()
{
}

Method PositionIsDefined() As %Boolean
{
}

Method SequenceNumberSet(value As %String = "") As %Status
{
}

Method SequenceNumberReset()
{
}

Method SequenceNumberIsDefined() As %Boolean
{
}

Method TextTypeSet(value As %String = "") As %Status
{
}

Method TextTypeReset()
{
}

Method TextTypeIsDefined() As %Boolean
{
}

ClassMethod parentOnDelete(id As %String, concurrency As %Integer) As %Status
{
}

}