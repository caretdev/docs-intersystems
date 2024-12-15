Class %Dictionary.ForeignKeyDefinition Extends (%Persistent, %Dictionary.ForeignKeyDefinitionQuery) [ StorageStrategy = custom, System = 2 ]
{

/// Pointer to the containing parent object
Relationship parent As %Dictionary.ClassDefinition [ Cardinality = parent, Inverse = ForeignKeys ];

/// Stores the DEFINED state of each attribute.
Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];

/// True if this foreign key is deprecated.
Property Deprecated As %Boolean [ InitialExpression = 0 ];

/// Supplies a description of the foreign key.
Property Description As %RawString;

/// If true then do not display this item in automatic documentation.
Property Internal As %Boolean [ InitialExpression = 0 ];

/// Defines a name for the key. It must be a valid class member name and must not conflict with any existing member name.
Property Name As %Dictionary.Identifier [ Required ];

/// Specifies whether InterSystems IRIS should check this foreign key constraint.
Property NoCheck As %Boolean [ InitialExpression = 0 ];

/// Specifies what referential action to take when the key value is deleted from the foreign table.
Property OnDelete As %RawString [ InitialExpression = "noaction" ];

/// Specifies what referential action to take when the key value is updated in the foreign table.
Property OnUpdate As %RawString [ InitialExpression = "noaction" ];

/// Specifies one or more properties whose values are used to constrain the value of the foreign key.
Property Properties As %RawString;

/// Specifies the name of the class containing the key referred to by this foreign key definition.
Property ReferencedClass As %Dictionary.Classname;

/// Specifies the key name of a unique index within a class that provides the set of allowed values for this foreign key.
Property ReferencedKey As %RawString;

/// SequenceNumber
Property SequenceNumber As %Integer [ InitialExpression = 0 ];

/// Specifies an alternate name for this foreign key when referred to via SQL.
Property SqlName As %RawString;

ClassMethod OnDeleteIsValid(val As %String) As %Status
{
}

ClassMethod OnUpdateIsValid(val As %String) As %Status
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

Method DeprecatedSet(value As %String = "") As %Status
{
}

Method DeprecatedReset()
{
}

Method DeprecatedIsDefined() As %Boolean
{
}

Method DescriptionSet(value As %String = "") As %Status
{
}

Method DescriptionReset()
{
}

Method DescriptionIsDefined() As %Boolean
{
}

Method InternalSet(value As %String = "") As %Status
{
}

Method InternalReset()
{
}

Method InternalIsDefined() As %Boolean
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

Method NoCheckSet(value As %String = "") As %Status
{
}

Method NoCheckReset()
{
}

Method NoCheckIsDefined() As %Boolean
{
}

Method OnDeleteSet(value As %String = "") As %Status
{
}

Method OnDeleteReset()
{
}

Method OnDeleteIsDefined() As %Boolean
{
}

Method OnUpdateSet(value As %String = "") As %Status
{
}

Method OnUpdateReset()
{
}

Method OnUpdateIsDefined() As %Boolean
{
}

Method PropertiesSet(value As %String = "") As %Status
{
}

Method PropertiesReset()
{
}

Method PropertiesIsDefined() As %Boolean
{
}

Method ReferencedClassSet(value As %String = "") As %Status
{
}

Method ReferencedClassReset()
{
}

Method ReferencedClassIsDefined() As %Boolean
{
}

Method ReferencedKeySet(value As %String = "") As %Status
{
}

Method ReferencedKeyReset()
{
}

Method ReferencedKeyIsDefined() As %Boolean
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

Method SqlNameSet(value As %String = "") As %Status
{
}

Method SqlNameReset()
{
}

Method SqlNameIsDefined() As %Boolean
{
}

ClassMethod parentOnDelete(id As %String, concurrency As %Integer) As %Status
{
}

}
