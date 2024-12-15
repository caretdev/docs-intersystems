Class %Dictionary.StorageDefinition Extends (%Persistent, %Dictionary.StorageDefinitionQuery) [ StorageStrategy = custom, System = 2 ]
{

/// Pointer to the containing parent object
Relationship parent As %Dictionary.ClassDefinition [ Cardinality = parent, Inverse = Storages ];

/// Stores the DEFINED state of each attribute.
Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];

/// Specifies the base location of counters for properties with type is %Library.Counter. Normally this would be a global reference such as ^User.PersonC. The global reference can also include one or more leading subscripts.
Property CounterLocation As %RawString;

/// Data
Relationship Data As %Dictionary.StorageDataDefinition [ Cardinality = children, Inverse = parent ];

/// Specifies expression that is the location where data is stored for this class. Normally this would be a global reference such as ^User.PersonD. The global reference can also include one or more leading subscripts.
Property DataLocation As %RawString;

/// Specifies the name of the DATA definition that the Class Compiler Data Structure Generator uses to place any previously unstored properties. A property is unstored if it is storable, but is not listed in any DATA definition.
Property DefaultData As %RawString;

/// True if this storage is deprecated.
Property Deprecated As %Boolean [ InitialExpression = 0 ];

/// Specifies a description of the storage definition. This description is displayed by the online class reference.
Property Description As %RawString;

/// Specifies the base location of globals used by the extent of this class.
Property ExtentLocation As %RawString;

/// ExtentSize
Property ExtentSize As %RawString;

/// Specifies that the storage definition cannot be modified by subclasses.
Property Final As %Boolean [ InitialExpression = 0 ];

/// IdExpression
Property IdExpression As %RawString;

/// Specifies the system function used to allocate new id values.
Property IdFunction As %RawString;

/// Specifies location of the ID Counter.
Property IdLocation As %RawString;

/// Index
Relationship Indices As %Dictionary.StorageIndexDefinition [ Cardinality = children, Inverse = parent ];

/// Specifies the global used for indices for this class. If not specified, the index location is ^MyApp.MyClassI, where MyApp.MyClass is the classname.
Property IndexLocation As %RawString;

/// If true then do not display this item in automatic documentation.
Property Internal As %Boolean [ InitialExpression = 0 ];

/// Specifies the name of the Storage definition. This name must be a valid class member name and must not conflict with any other class member names.
Property Name As %RawString [ Required ];

/// Property
Relationship Properties As %Dictionary.StoragePropertyDefinition [ Cardinality = children, Inverse = parent ];

/// SequenceNumber
Property SequenceNumber As %Integer [ InitialExpression = 0 ];

/// Value of the Sharded keyword
Property Sharded As %RawString;

/// ShardKey
Relationship ShardKeies As %Dictionary.StorageShardKeyDefinition [ Cardinality = children, Inverse = parent ];

/// Specifies the name of the shard-local class
Property ShardLocalClassName As %RawString;

/// Specifies the name of the shard-local table
Property ShardLocalTableName As %RawString;

/// SqlChildSub
Property SqlChildSub As %RawString;

/// SqlIdExpression
Property SqlIdExpression As %RawString;

/// SQLMap
Relationship SQLMaps As %Dictionary.StorageSQLMapDefinition [ Cardinality = children, Inverse = parent ];

/// Specifies the name of the Row ID column projected to SQL.
Property SqlRowIdName As %RawString;

/// Specifies the SQL RowId property. This keyword is only used by classes that have been migrated from earlier InterSystems products.
Property SqlRowIdProperty As %RawString;

/// Specifies the internal SQL Table Number. This keyword is only used by classes that have been migrated from earlier InterSystems products.
Property SqlTableNumber As %RawString;

/// For a serial embedded class, this keyword specifies which Data definition is used to define the serialized state of the object. This is also the default DATA definition that unstored properties will be added to by the default structure generator.
Property State As %RawString;

/// Specifies the default global used to store any stream properties within this class. If not specified, the index location is ^MyApp.MyClassS, where MyApp.MyClass is the classname.
Property StreamLocation As %RawString;

/// Specifies the Storage Class used to provide persistence for this class.
Property Type As %Dictionary.Classname;

/// Specifies location of the %Version Counter.
Property VersionLocation As %RawString;

ClassMethod IdFunctionIsValid(val As %String) As %Status
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

Method CounterLocationSet(value As %String = "") As %Status
{
}

Method CounterLocationReset()
{
}

Method CounterLocationIsDefined() As %Boolean
{
}

Method DataLocationSet(value As %String = "") As %Status
{
}

Method DataLocationReset()
{
}

Method DataLocationIsDefined() As %Boolean
{
}

Method DefaultDataSet(value As %String = "") As %Status
{
}

Method DefaultDataReset()
{
}

Method DefaultDataIsDefined() As %Boolean
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

Method ExtentLocationSet(value As %String = "") As %Status
{
}

Method ExtentLocationReset()
{
}

Method ExtentLocationIsDefined() As %Boolean
{
}

Method ExtentSizeSet(value As %String = "") As %Status
{
}

Method ExtentSizeReset()
{
}

Method ExtentSizeIsDefined() As %Boolean
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

Method IdExpressionSet(value As %String = "") As %Status
{
}

Method IdExpressionReset()
{
}

Method IdExpressionIsDefined() As %Boolean
{
}

Method IdFunctionSet(value As %String = "") As %Status
{
}

Method IdFunctionReset()
{
}

Method IdFunctionIsDefined() As %Boolean
{
}

Method IdLocationSet(value As %String = "") As %Status
{
}

Method IdLocationReset()
{
}

Method IdLocationIsDefined() As %Boolean
{
}

Method IndexLocationSet(value As %String = "") As %Status
{
}

Method IndexLocationReset()
{
}

Method IndexLocationIsDefined() As %Boolean
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

Method SequenceNumberSet(value As %String = "") As %Status
{
}

Method SequenceNumberReset()
{
}

Method SequenceNumberIsDefined() As %Boolean
{
}

Method ShardedSet(value As %String = "") As %Status
{
}

Method ShardedReset()
{
}

Method ShardedIsDefined() As %Boolean
{
}

Method ShardLocalClassNameSet(value As %String = "") As %Status
{
}

Method ShardLocalClassNameReset()
{
}

Method ShardLocalClassNameIsDefined() As %Boolean
{
}

Method ShardLocalTableNameSet(value As %String = "") As %Status
{
}

Method ShardLocalTableNameReset()
{
}

Method ShardLocalTableNameIsDefined() As %Boolean
{
}

Method SqlChildSubSet(value As %String = "") As %Status
{
}

Method SqlChildSubReset()
{
}

Method SqlChildSubIsDefined() As %Boolean
{
}

Method SqlIdExpressionSet(value As %String = "") As %Status
{
}

Method SqlIdExpressionReset()
{
}

Method SqlIdExpressionIsDefined() As %Boolean
{
}

Method SqlRowIdNameSet(value As %String = "") As %Status
{
}

Method SqlRowIdNameReset()
{
}

Method SqlRowIdNameIsDefined() As %Boolean
{
}

Method SqlRowIdPropertySet(value As %String = "") As %Status
{
}

Method SqlRowIdPropertyReset()
{
}

Method SqlRowIdPropertyIsDefined() As %Boolean
{
}

Method SqlTableNumberSet(value As %String = "") As %Status
{
}

Method SqlTableNumberReset()
{
}

Method SqlTableNumberIsDefined() As %Boolean
{
}

Method StateSet(value As %String = "") As %Status
{
}

Method StateReset()
{
}

Method StateIsDefined() As %Boolean
{
}

Method StreamLocationSet(value As %String = "") As %Status
{
}

Method StreamLocationReset()
{
}

Method StreamLocationIsDefined() As %Boolean
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

Method VersionLocationSet(value As %String = "") As %Status
{
}

Method VersionLocationReset()
{
}

Method VersionLocationIsDefined() As %Boolean
{
}

ClassMethod parentOnDelete(id As %String, concurrency As %Integer) As %Status
{
}

}
