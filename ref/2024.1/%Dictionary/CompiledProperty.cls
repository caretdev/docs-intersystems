Class %Dictionary.CompiledProperty Extends (%Persistent, %Dictionary.CompiledPropertyQuery) [ StorageStrategy = custom, System = 2 ]
{

/// Pointer to the containing parent object
Relationship parent As %Dictionary.CompiledClass [ Cardinality = parent, Inverse = Properties ];

/// Stores the DEFINED state of each attribute.
Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];

/// List of aliases for this property.
Property Aliases As %RawString;

/// Specifies that the property has no in-memory storage allocated for it when the object containing it is instantiated.
Property Calculated As %Boolean;

/// Specifies the cardinality of a relationship property. The Cardinality keyword is required for relationship properties. It is ignored by non-relationship properties.
Property Cardinality As %RawString;

/// An alias used by client projections of this property.
Property ClientName As %RawString;

/// Specifies that a property is a collection property as well as what type of collection it is.
Property Collection As %RawString;

/// CompilerGenerated
Property CompilerGenerated As %Boolean;

/// List of properties referenced by the SQLCOMPUTECODE.
Property ComputeDependency As %RawString;

/// List of properties to be computed when this property changes.
Property ComputeTriggers As %RawString;

/// True if this property is deprecated.
Property Deprecated As %Boolean;

/// Specifies a description of the property.
Property Description As %RawString;

/// Deprecated
Property DirectRefOnGet As %Boolean;

/// Deprecated
Property DirectRefOnSet As %Boolean;

/// Specifies that subclasses cannot override the definition of this property.
Property Final As %Boolean;

/// Id
Property Id As %Integer;

/// Specifies that this property is the identity for this class. Identity properties can be set in new objects only and the default is set by incrementing a counter.
Property Identity As %Boolean [ SqlFieldName = _Identity ];

/// InheritedId
Property InheritedId As %Boolean;

/// Specifies an initial value for the property.
Property InitialExpression As %RawString;

/// If true, then do not display this item in automatic documentation.
Property Internal As %Boolean;

/// Specifies the name of the inverse side of a relationship. That is, the name of the corresponding relationship property in the related class. The inverse property must exist in the related class and have the correct Cardinality value. The Inverse keyword is required for relationship properties. It is ignored by non-relationship properties.
Property Inverse As %RawString;

/// KeywordError
Property KeywordError As %Boolean;

/// KeywordModified
Property KeywordModified As %Boolean;

/// Method
Relationship Methods As %Dictionary.CompiledPropertyMethod [ Cardinality = children, Inverse = parent ];

/// Specifies that an attribute has the characteristics of a multidimensional array.
Property MultiDimensional As %Boolean;

/// The name of the property.
Property Name As %Dictionary.Identifier [ Required ];

/// Deprecated.
Property NoModBit As %Boolean;

/// Deprecated.
Property NotInheritable As %Boolean;

/// Specifies what referential action to take when the key value is deleted from the foreign table.
Property OnDelete As %RawString;

/// Origin
Property Origin As %RawString;

/// Parameter
Property Parameters As array Of %RawString;

/// Specifies that the property is private. Private properties can only be used by instance methods of this class or its subclasses.
Property Private As %Boolean;

/// Specifies that the property is readonly.
Property ReadOnly As %Boolean;

/// Specifies that a property is a relationship property.
Property Relationship As %Boolean;

/// In the case of a persistent class, specifies that the value of the property must be given a value before it can be stored to disk.
Property Required As %Boolean;

/// RuntimeType
Property RuntimeType As %RawString;

/// SequenceNumber
Property SequenceNumber As %Integer;

/// Specifies that a property will not be projected to a Java or C++ client.
Property ServerOnly As %RawString;

/// Deprecated.
Property SqlCollation As %RawString;

/// Explicitly sets the SQL Column number for this property. This is provided for legacy application support.
Property SqlColumnNumber As %RawString;

/// Specifies ObjectScript code that evaluates to a computed field value.
Property SqlComputeCode As %RawString;

/// Specifies that this property is an SQL computed field.
Property SqlComputed As %Boolean;

/// Specifies one or more properties whose modification triggers the recalculation of this computed field within SQL.
Property SqlComputeOnChange As %RawString;

/// In the case of a persistent class, specifies the column name used to identify the property in its SQL projection. By default, the SQL column name is the same as the property name.
Property SqlFieldName As %RawString;

/// Specifies the delimiter character used within SQL for lists. This is provided for legacy application support.
Property SqlListDelimiter As %RawString;

/// specifies the representation to be used for a list.
Property SqlListType As %RawString;

/// Storable
Property Storable As %Boolean;

/// In the case of a persistent class, specifies that the property is not stored in the database.
Property Transient As %Boolean;

/// Specifies the name of the class associated with the property, which can be a data type class, a persistent class, or an embeddable serial class.
Property Type As %Dictionary.Classname;

/// UDLText
Relationship UDLTexts As %Dictionary.CompiledPropertyUDLText [ Cardinality = children, Inverse = parent ];

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

Method AliasesSet(value As %String = "") As %Status
{
}

Method AliasesReset()
{
}

Method AliasesIsDefined() As %Boolean
{
}

Method CalculatedSet(value As %String = "") As %Status
{
}

Method CalculatedReset()
{
}

Method CalculatedIsDefined() As %Boolean
{
}

Method CardinalitySet(value As %String = "") As %Status
{
}

Method CardinalityReset()
{
}

Method CardinalityIsDefined() As %Boolean
{
}

Method ClientNameSet(value As %String = "") As %Status
{
}

Method ClientNameReset()
{
}

Method ClientNameIsDefined() As %Boolean
{
}

Method CollectionSet(value As %String = "") As %Status
{
}

Method CollectionReset()
{
}

Method CollectionIsDefined() As %Boolean
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

Method FinalSet(value As %String = "") As %Status
{
}

Method FinalReset()
{
}

Method FinalIsDefined() As %Boolean
{
}

Method IdentitySet(value As %String = "") As %Status
{
}

Method IdentityReset()
{
}

Method IdentityIsDefined() As %Boolean
{
}

Method InitialExpressionSet(value As %String = "") As %Status
{
}

Method InitialExpressionReset()
{
}

Method InitialExpressionIsDefined() As %Boolean
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

Method InverseSet(value As %String = "") As %Status
{
}

Method InverseReset()
{
}

Method InverseIsDefined() As %Boolean
{
}

Method MultiDimensionalSet(value As %String = "") As %Status
{
}

Method MultiDimensionalReset()
{
}

Method MultiDimensionalIsDefined() As %Boolean
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

Method NoModBitSet(value As %String = "") As %Status
{
}

Method NoModBitReset()
{
}

Method NoModBitIsDefined() As %Boolean
{
}

Method NotInheritableSet(value As %String = "") As %Status
{
}

Method NotInheritableReset()
{
}

Method NotInheritableIsDefined() As %Boolean
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

Method PrivateSet(value As %String = "") As %Status
{
}

Method PrivateReset()
{
}

Method PrivateIsDefined() As %Boolean
{
}

Method ReadOnlySet(value As %String = "") As %Status
{
}

Method ReadOnlyReset()
{
}

Method ReadOnlyIsDefined() As %Boolean
{
}

Method RelationshipSet(value As %String = "") As %Status
{
}

Method RelationshipReset()
{
}

Method RelationshipIsDefined() As %Boolean
{
}

Method RequiredSet(value As %String = "") As %Status
{
}

Method RequiredReset()
{
}

Method RequiredIsDefined() As %Boolean
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

Method ServerOnlySet(value As %String = "") As %Status
{
}

Method ServerOnlyReset()
{
}

Method ServerOnlyIsDefined() As %Boolean
{
}

Method SqlCollationSet(value As %String = "") As %Status
{
}

Method SqlCollationReset()
{
}

Method SqlCollationIsDefined() As %Boolean
{
}

Method SqlColumnNumberSet(value As %String = "") As %Status
{
}

Method SqlColumnNumberReset()
{
}

Method SqlColumnNumberIsDefined() As %Boolean
{
}

Method SqlComputeCodeSet(value As %String = "") As %Status
{
}

Method SqlComputeCodeReset()
{
}

Method SqlComputeCodeIsDefined() As %Boolean
{
}

Method SqlComputedSet(value As %String = "") As %Status
{
}

Method SqlComputedReset()
{
}

Method SqlComputedIsDefined() As %Boolean
{
}

Method SqlComputeOnChangeSet(value As %String = "") As %Status
{
}

Method SqlComputeOnChangeReset()
{
}

Method SqlComputeOnChangeIsDefined() As %Boolean
{
}

Method SqlFieldNameSet(value As %String = "") As %Status
{
}

Method SqlFieldNameReset()
{
}

Method SqlFieldNameIsDefined() As %Boolean
{
}

Method SqlListDelimiterSet(value As %String = "") As %Status
{
}

Method SqlListDelimiterReset()
{
}

Method SqlListDelimiterIsDefined() As %Boolean
{
}

Method SqlListTypeSet(value As %String = "") As %Status
{
}

Method SqlListTypeReset()
{
}

Method SqlListTypeIsDefined() As %Boolean
{
}

Method TransientSet(value As %String = "") As %Status
{
}

Method TransientReset()
{
}

Method TransientIsDefined() As %Boolean
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
