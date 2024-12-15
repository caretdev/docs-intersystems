Class %Dictionary.CompiledIndex Extends (%Persistent, %Dictionary.CompiledIndexQuery) [ StorageStrategy = custom, System = 2 ]
{

/// Pointer to the containing parent object
Relationship parent As %Dictionary.CompiledClass [ Cardinality = parent, Inverse = Indices ];

/// Stores the DEFINED state of each attribute.
Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];

/// Specifies that this index should be abstract.  Not projected to SQL, holds no data.
Property Abstract As %Boolean;

/// BuildPurge
Property BuildPurge As %Boolean;

/// CompilationSignature
Property CompilationSignature As %RawString;

/// CompilerGenerated
Property CompilerGenerated As %Boolean;

/// In the case of a conditional index, specifies the condition that must be met for an entry to be included in the index.
Property Condition As %RawString;

/// Specifies the name of the class this class is cosharded with.
Property CoshardWith As %Dictionary.Classname;

/// Specifies a list of properties whose values are to be stored within this index.
Property Data As %RawString;

/// True if this index is deprecated.
Property Deprecated As %Boolean;

/// Specifies a description of the index.
Property Description As %RawString;

/// An extent index is used to keep track of which object instances belong to a subclass. When using bitmap indices, then an extent index is automatically maintained and there is no need to define one.
Property Extent As %Boolean [ ClientName = _Extent ];

/// Final
Property Final As %Boolean;

/// Id
Property Id As %Integer;

/// Specifies that the property or properties defined for this index will be used to form the Object Identity value for this object. This value is used to uniquely locate persistent object instances.
Property IdKey As %Boolean;

/// InheritedId
Property InheritedId As %Boolean;

/// If true, then do not display this item in automatic documentation.
Property Internal As %Boolean;

/// KeywordError
Property KeywordError As %Boolean;

/// KeywordModified
Property KeywordModified As %Boolean;

/// Method
Relationship Methods As %Dictionary.CompiledIndexMethod [ Cardinality = children, Inverse = parent ];

/// The name of the index.
Property Name As %Dictionary.Identifier [ Required ];

/// NotInheritable
Property NotInheritable As %Boolean;

/// Origin
Property Origin As %RawString;

/// Parameter
Property Parameters As array Of %RawString;

/// PosInt
Property PosInt As %Boolean;

/// Specifies that this index should be reported, via SQL, as being the Primary Key for this class.
Property PrimaryKey As %Boolean;

/// Specifies a list of properties used to build this index. May also include a collation specification for each property.
Property Properties As %RawString;

/// Property
Relationship PropertyCollection As %Dictionary.CompiledIndexProperty [ Cardinality = children, Inverse = parent ];

/// SequenceNumber
Property SequenceNumber As %Integer;

/// If true then this index defines the components of the shard key.
Property ShardKey As %Boolean;

/// Defines an alternate name for this index when referred to via SQL.
Property SqlName As %RawString;

/// SystemAssigned
Property SystemAssigned As %Boolean;

/// Specifies the type of the index. Type &#39;key&#39; is deprecated.
Property Type As %RawString;

/// Specifies the FunctionalIndex class used to provide the implementation of the functional index interface.
Property TypeClass As %Dictionary.Classname;

/// Specifies whether this is a unique index.  The property or properties indexed by a unique index are constrained to have unique values.  This means that no two instances can have the same collated value within the extent among the set of all objects of the class that defines the index.
Property Unique As %Boolean [ SqlFieldName = _Unique ];

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
