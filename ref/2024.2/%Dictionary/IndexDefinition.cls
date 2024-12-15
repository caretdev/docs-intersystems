Class %Dictionary.IndexDefinition Extends (%Persistent, %Dictionary.IndexDefinitionQuery) [ StorageStrategy = custom, System = 2 ]
{

/// Pointer to the containing parent object
Relationship parent As %Dictionary.ClassDefinition [ Cardinality = parent, Inverse = Indices ];

/// Stores the DEFINED state of each attribute.
Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];

/// Specifies that this index should be abstract.  Not projected to SQL, holds no data.
Property Abstract As %Boolean [ InitialExpression = 0 ];

/// In the case of a conditional index, specifies the condition that must be met for an entry to be included in the index.
Property Condition As %RawString;

/// Specifies the name of the class this class is cosharded with.
Property CoshardWith As %Dictionary.Classname;

/// Specifies a list of properties whose values are to be stored within this index.
Property Data As %RawString;

/// True if this index is deprecated.
Property Deprecated As %Boolean [ InitialExpression = 0 ];

/// Specifies a description of the index.
Property Description As %RawString;

/// An extent index is used to keep track of which object instances belong to a subclass. When using bitmap indices, then an extent index is automatically maintained and there is no need to define one.
Property Extent As %Boolean [ ClientName = _Extent, InitialExpression = 0 ];

/// Specifies that the property or properties defined for this index will be used to form the Object Identity value for this object. This value is used to uniquely locate persistent object instances.
Property IdKey As %Boolean [ InitialExpression = 0 ];

/// If true, then do not display this item in automatic documentation.
Property Internal As %Boolean [ InitialExpression = 0 ];

/// The name of the index.
Property Name As %Dictionary.Identifier [ Required ];

/// Parameter
Property Parameters As array Of %RawString;

/// Specifies that this index should be reported, via SQL, as being the Primary Key for this class.
Property PrimaryKey As %Boolean [ InitialExpression = 0 ];

/// Specifies a list of properties used to build this index. May also include a collation specification for each property.
Property Properties As %RawString;

/// SequenceNumber
Property SequenceNumber As %Integer [ InitialExpression = 0 ];

/// If true then this index defines the components of the shard key.
Property ShardKey As %Boolean [ InitialExpression = 0 ];

/// Defines an alternate name for this index when referred to via SQL.
Property SqlName As %RawString;

/// Specifies the type of the index. Type &#39;key&#39; is deprecated.
Property Type As %RawString;

/// Specifies the FunctionalIndex class used to provide the implementation of the functional index interface.
Property TypeClass As %Dictionary.Classname;

/// Specifies whether this is a unique index.  The property or properties indexed by a unique index are constrained to have unique values.  This means that no two instances can have the same collated value within the extent among the set of all objects of the class that defines the index.
Property Unique As %Boolean [ InitialExpression = 0, SqlFieldName = _Unique ];

ClassMethod TypeIsValid(val As %String) As %Status
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

Method AbstractSet(value As %String = "") As %Status
{
}

Method AbstractReset()
{
}

Method AbstractIsDefined() As %Boolean
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

Method CoshardWithSet(value As %String = "") As %Status
{
}

Method CoshardWithReset()
{
}

Method CoshardWithIsDefined() As %Boolean
{
}

Method DataSet(value As %String = "") As %Status
{
}

Method DataReset()
{
}

Method DataIsDefined() As %Boolean
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

Method ExtentSet(value As %String = "") As %Status
{
}

Method ExtentReset()
{
}

Method ExtentIsDefined() As %Boolean
{
}

Method IdKeySet(value As %String = "") As %Status
{
}

Method IdKeyReset()
{
}

Method IdKeyIsDefined() As %Boolean
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

Method PrimaryKeySet(value As %String = "") As %Status
{
}

Method PrimaryKeyReset()
{
}

Method PrimaryKeyIsDefined() As %Boolean
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

Method SequenceNumberSet(value As %String = "") As %Status
{
}

Method SequenceNumberReset()
{
}

Method SequenceNumberIsDefined() As %Boolean
{
}

Method ShardKeySet(value As %String = "") As %Status
{
}

Method ShardKeyReset()
{
}

Method ShardKeyIsDefined() As %Boolean
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

Method TypeSet(value As %String = "") As %Status
{
}

Method TypeReset()
{
}

Method TypeIsDefined() As %Boolean
{
}

Method TypeClassSet(value As %String = "") As %Status
{
}

Method TypeClassReset()
{
}

Method TypeClassIsDefined() As %Boolean
{
}

Method UniqueSet(value As %String = "") As %Status
{
}

Method UniqueReset()
{
}

Method UniqueIsDefined() As %Boolean
{
}

ClassMethod parentOnDelete(id As %String, concurrency As %Integer) As %Status
{
}

}
