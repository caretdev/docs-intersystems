Class %Dictionary.CompiledClass Extends (%Persistent, %Dictionary.CompiledClassQuery) [ StorageStrategy = custom, System = 2 ]
{

/// Stores the DEFINED state of each attribute.
Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];

/// Specifies that the class cannot have instances; for datatypes, specifies that the class cannot be used as an attribute type.
Property Abstract As %Boolean;

/// Ancestry
Property Ancestry As %RawString;

/// The version of InterSystems IRIS this class was compiled on.
Property CacheVersion As %RawString;

/// Status code from this class compile if there is an error
Property ClassCompileError As %RawString;

/// Set to true if there is a problem serializing the class so the compiler knows not to compile this.
Property ClassDefinitionError As %Boolean;

/// Array of items generated by this class.
Property Classes As array Of %RawString;

/// Specifies how this class is to be used.
Property ClassType As %RawString;

/// In the case of a datatype class, specifies the type used when exposed via ActiveX or Java. Datatype classes must specify a client datatype.
Property ClientDataType As %RawString;

/// ClientDataTypeEnum
Property ClientDataTypeEnum As %Integer;

/// ClientInfo
Property ClientInfo As array Of %RawString;

/// This gives an alternate name for the class if it projected, for example, to Java.
Property ClientName As %RawString;

/// CompilationSignature
Property CompilationSignature As %RawString;

/// Indicates that the class compiler should compile this class after the specified classes.
Property CompileAfter As %RawString;

/// The namespace when this class is compiled, used to help dependency checking.
Property CompileNamespace As %RawString;

/// Constraint
Relationship Constraints As %Dictionary.CompiledConstraint [ Cardinality = children, Inverse = parent ];

/// Additional constraint member super classes to inherit.
Property ConstraintClass As %RawString;

/// Optional copyright notice associated with this class
Property Copyright As %RawString;

/// In the case of a persistent class, indicates whether or not DDL statements can be used to alter or delete the class definition.
Property DdlAllowed As %Boolean;

/// List of classes that this class depends on being runable in order for this class to compile.
Property DependsOn As %RawString;

/// Indicates whether the class has been deployed, that is, disassociated from the source that was used to build it.
Property Deployed As %Integer;

/// True if this class is deprecated.
Property Deprecated As %Boolean;

/// Specifies a description of the class.
Property Description As %RawString;

/// Deprecated.
Property Dynamic As %Boolean;

/// If specified in a member type class is the name of the class which forms the embedded superclass
Property EmbeddedClass As %RawString;

/// Extents
Property Extents As array Of %RawString;

/// Specifies that the class cannot have subclasses.
Property Final As %Boolean;

/// ForeignKey
Relationship ForeignKeys As %Dictionary.CompiledForeignKey [ Cardinality = children, Inverse = parent ];

/// If this class is generated by some other component then this is the name of the item that generated this class
Property GeneratedBy As %RawString;

/// True if this class has C++ methods.
Property HasCPP As %RawString;

/// A hash of this class so we can detect when it is changed.
Property Hash As %RawString;

/// Specifies that this class is not typically listed when viewing the contents of the class dictionary.
Property Hidden As %Boolean;

/// Supplies a list of class packages to import for this class.
Property Import As %RawString;

/// Importall
Property Importall As array Of %RawString;

/// Specifies an optional list of include files used when compiling this class.
Property IncludeCode As %RawString;

/// IncludeCodeAll
Property IncludeCodeAll As array Of %RawString;

/// Specifies an optional list of include files used when compiling the method generator methods of this class.
Property IncludeGenerator As %RawString;

/// IncludeMGenAll
Property IncludeMGenAll As array Of %RawString;

/// Index
Relationship Indices As %Dictionary.CompiledIndex [ Cardinality = children, Inverse = parent ];

/// Additional index member super classes to inherit.
Property IndexClass As %RawString;

/// Define the inheritance order when using multiple inheritance, if a member exists in multiple superclasses which one will take precedence.
Property Inheritance As %RawString;

/// If specified the initial serial value for a new object
Property InitialValue As %RawString;

/// InstanceVar
Relationship InstanceVars As %Dictionary.CompiledInstanceVar [ Cardinality = children, Inverse = parent ];

/// KeywordError
Property KeywordError As %Boolean;

/// KeywordModified
Property KeywordModified As %Boolean;

/// The default language used to implement methods for this class.
Property Language As %RawString [ SqlFieldName = _Language ];

/// If true then pass %this as first argument of all instance methods
Property LegacyInstanceContext As %Boolean;

/// Array of items projected with this class which need to be included in any deployment package we create from this class
Property Manifest As array Of %RawString;

/// This is the class to inherit if this class is used as a member class in member inheritance
Property MemberSuper As %RawString;

/// Method
Relationship Methods As %Dictionary.CompiledMethod [ Cardinality = children, Inverse = parent ];

/// Deprecated.
Property ModificationAuxiliary As %RawString;

/// Deprecated.
Property ModificationLevel As %Integer;

/// If set to 0 then class is always modified, and so it is always saved.
Property Modified As %RawString;

/// The name of the class.
Property Name As %Dictionary.Classname [ Required ];

/// If true, datatype methods have access to the current instance instead of providing their own context.
Property NoContext As %Boolean;

/// If TRUE will prevent this class from instantiating a persistent extent.
Property NoExtent As %Boolean;

/// In the case of a datatype class, specifies the type used when exposed via ODBC or JDBC. Datatype classes must specify an ODBC type.
Property OdbcType As %RawString;

/// Keep track of old hash values so we can modify a class without marking it as out of date.
Property OldHash As %RawString;

/// Specifies the owner of the class and its corresponding table. By default, classes and tables are owned by _SYSTEM.
Property Owner As %RawString;

/// Parameter
Relationship Parameters As %Dictionary.CompiledParameter [ Cardinality = children, Inverse = parent ];

/// PrimarySuper
Property PrimarySuper As %RawString;

/// Specifies that the class uses procedure block for method code.
Property ProcedureBlock As %Boolean;

/// Procedures
Property Procedures As array Of %RawString;

/// Projection
Relationship Projections As %Dictionary.CompiledProjection [ Cardinality = children, Inverse = parent ];

/// Additional projection member super classes to inherit.
Property ProjectionClass As %RawString;

/// Property
Relationship Properties As %Dictionary.CompiledProperty [ Cardinality = children, Inverse = parent ];

/// Additional property member super classes to inherit.
Property PropertyClass As %RawString;

/// Query
Relationship Queries As %Dictionary.CompiledQuery [ Cardinality = children, Inverse = parent ];

/// Additional query member super classes to inherit.
Property QueryClass As %RawString;

/// Deprecated.
Property QueryPropInfo As %Boolean;

/// Random value that is updated each time the class is compiled
Property RandomSig As %RawString;

/// RoutineCount
Property RoutineCount As %Integer;

/// Routines
Property Routines As array Of %RawString;

/// Specifies whether this class is projected to Java clients.
Property ServerOnly As %RawString;

/// 0 if table is not sharded, 1 if it is sharded on the shard manager, 2 if it is sharded on the shard itself.
Property Sharded As %Integer;

/// SlotCount
Property SlotCount As %Integer;

/// Specifies the SOAP Binding used by this class when it is used to send and receive mnessages via SOAP.
Property SoapBindingStyle As %RawString;

/// Specifies the encoding used for SOAP messages.
Property SoapBodyUse As %RawString;

/// In the case of a datatype class, specifies a type to use for calculations in SQL. Datatype classes must specify an SQL Category.
Property SqlCategory As %RawString;

/// SqlQualifiedNameQ
Property SqlQualifiedNameQ As %RawString;

/// Deprecated.
Property SqlRoutinePrefix As %RawString;

/// In the case of a persistent class, specifies an altername field name used for the ID column. By default the ID is called ID.
Property SqlRowIdName As %RawString;

/// In the case of a persistent class, specifies whether the ID column is projected to ODBC as a hidden field.
Property SqlRowIdPrivate As %Boolean;

/// SqlSchemaName
Property SqlSchemaName As %RawString;

/// In the case of a persistent class, specifies the table name used to identify the class in its SQL projection. By default, the SQL table name is the same as the class name.
Property SqlTableName As %RawString;

/// Storage
Relationship Storages As %Dictionary.CompiledStorage [ Cardinality = children, Inverse = parent ];

/// Specifies the name of the storage strategy used to control persistence for this class.
Property StorageStrategy As %RawString;

/// Hash of class &#39;structure&#39; so we can detect when SQL related classes need to be recompiled.
Property Structure As %RawString;

/// Specifies one or more superclasses for the class.
Property Super As %RawString;

/// Specifies the order to compile classes in when compiling a set, we always proceed in the order 1,2,3,4,0 where 0 is the default if not specified.
Property System As %RawString [ ClientName = _System ];

/// Tables
Property Tables As array Of %RawString;

/// Gives the time the last change was made to the class.
Property TimeChanged As %RawString;

/// Gives the time the class was first created.
Property TimeCreated As %RawString;

/// Trigger
Relationship Triggers As %Dictionary.CompiledTrigger [ Cardinality = children, Inverse = parent ];

/// Additional trigger member super classes to inherit.
Property TriggerClass As %RawString;

/// UDLText
Relationship UDLTexts As %Dictionary.CompiledUDLText [ Cardinality = children, Inverse = parent ];

/// Gives the SQL query used for View definition of this class.
Property ViewQuery As %RawString;

/// Views
Property Views As array Of %RawString;

/// XData
Relationship XDatas As %Dictionary.CompiledXData [ Cardinality = children, Inverse = parent ];

/// XMLData
Property XMLData As array Of %RawString;

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

Method ClassDefinitionErrorSet(value As %String = "") As %Status
{
}

Method ClassDefinitionErrorReset()
{
}

Method ClassDefinitionErrorIsDefined() As %Boolean
{
}

Method ClassTypeSet(value As %String = "") As %Status
{
}

Method ClassTypeReset()
{
}

Method ClassTypeIsDefined() As %Boolean
{
}

Method ClientDataTypeSet(value As %String = "") As %Status
{
}

Method ClientDataTypeReset()
{
}

Method ClientDataTypeIsDefined() As %Boolean
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

Method CompileAfterSet(value As %String = "") As %Status
{
}

Method CompileAfterReset()
{
}

Method CompileAfterIsDefined() As %Boolean
{
}

Method ConstraintClassSet(value As %String = "") As %Status
{
}

Method ConstraintClassReset()
{
}

Method ConstraintClassIsDefined() As %Boolean
{
}

Method CopyrightSet(value As %String = "") As %Status
{
}

Method CopyrightReset()
{
}

Method CopyrightIsDefined() As %Boolean
{
}

Method DdlAllowedSet(value As %String = "") As %Status
{
}

Method DdlAllowedReset()
{
}

Method DdlAllowedIsDefined() As %Boolean
{
}

Method DependsOnSet(value As %String = "") As %Status
{
}

Method DependsOnReset()
{
}

Method DependsOnIsDefined() As %Boolean
{
}

Method DeployedSet(value As %String = "") As %Status
{
}

Method DeployedReset()
{
}

Method DeployedIsDefined() As %Boolean
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

Method DynamicSet(value As %String = "") As %Status
{
}

Method DynamicReset()
{
}

Method DynamicIsDefined() As %Boolean
{
}

Method EmbeddedClassSet(value As %String = "") As %Status
{
}

Method EmbeddedClassReset()
{
}

Method EmbeddedClassIsDefined() As %Boolean
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

Method GeneratedBySet(value As %String = "") As %Status
{
}

Method GeneratedByReset()
{
}

Method GeneratedByIsDefined() As %Boolean
{
}

Method HiddenSet(value As %String = "") As %Status
{
}

Method HiddenReset()
{
}

Method HiddenIsDefined() As %Boolean
{
}

Method ImportSet(value As %String = "") As %Status
{
}

Method ImportReset()
{
}

Method ImportIsDefined() As %Boolean
{
}

Method IncludeCodeSet(value As %String = "") As %Status
{
}

Method IncludeCodeReset()
{
}

Method IncludeCodeIsDefined() As %Boolean
{
}

Method IncludeGeneratorSet(value As %String = "") As %Status
{
}

Method IncludeGeneratorReset()
{
}

Method IncludeGeneratorIsDefined() As %Boolean
{
}

Method IndexClassSet(value As %String = "") As %Status
{
}

Method IndexClassReset()
{
}

Method IndexClassIsDefined() As %Boolean
{
}

Method InheritanceSet(value As %String = "") As %Status
{
}

Method InheritanceReset()
{
}

Method InheritanceIsDefined() As %Boolean
{
}

Method LanguageSet(value As %String = "") As %Status
{
}

Method LanguageReset()
{
}

Method LanguageIsDefined() As %Boolean
{
}

Method LegacyInstanceContextSet(value As %String = "") As %Status
{
}

Method LegacyInstanceContextReset()
{
}

Method LegacyInstanceContextIsDefined() As %Boolean
{
}

Method MemberSuperSet(value As %String = "") As %Status
{
}

Method MemberSuperReset()
{
}

Method MemberSuperIsDefined() As %Boolean
{
}

Method ModificationAuxiliarySet(value As %String = "") As %Status
{
}

Method ModificationAuxiliaryReset()
{
}

Method ModificationAuxiliaryIsDefined() As %Boolean
{
}

Method ModificationLevelSet(value As %String = "") As %Status
{
}

Method ModificationLevelReset()
{
}

Method ModificationLevelIsDefined() As %Boolean
{
}

Method ModifiedSet(value As %String = "") As %Status
{
}

Method ModifiedReset()
{
}

Method ModifiedIsDefined() As %Boolean
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

Method NoContextSet(value As %String = "") As %Status
{
}

Method NoContextReset()
{
}

Method NoContextIsDefined() As %Boolean
{
}

Method NoExtentSet(value As %String = "") As %Status
{
}

Method NoExtentReset()
{
}

Method NoExtentIsDefined() As %Boolean
{
}

Method OdbcTypeSet(value As %String = "") As %Status
{
}

Method OdbcTypeReset()
{
}

Method OdbcTypeIsDefined() As %Boolean
{
}

Method OwnerSet(value As %String = "") As %Status
{
}

Method OwnerReset()
{
}

Method OwnerIsDefined() As %Boolean
{
}

Method ProcedureBlockSet(value As %String = "") As %Status
{
}

Method ProcedureBlockReset()
{
}

Method ProcedureBlockIsDefined() As %Boolean
{
}

Method ProjectionClassSet(value As %String = "") As %Status
{
}

Method ProjectionClassReset()
{
}

Method ProjectionClassIsDefined() As %Boolean
{
}

Method PropertyClassSet(value As %String = "") As %Status
{
}

Method PropertyClassReset()
{
}

Method PropertyClassIsDefined() As %Boolean
{
}

Method QueryClassSet(value As %String = "") As %Status
{
}

Method QueryClassReset()
{
}

Method QueryClassIsDefined() As %Boolean
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

Method ShardedSet(value As %String = "") As %Status
{
}

Method ShardedReset()
{
}

Method ShardedIsDefined() As %Boolean
{
}

Method SoapBindingStyleSet(value As %String = "") As %Status
{
}

Method SoapBindingStyleReset()
{
}

Method SoapBindingStyleIsDefined() As %Boolean
{
}

Method SoapBodyUseSet(value As %String = "") As %Status
{
}

Method SoapBodyUseReset()
{
}

Method SoapBodyUseIsDefined() As %Boolean
{
}

Method SqlCategorySet(value As %String = "") As %Status
{
}

Method SqlCategoryReset()
{
}

Method SqlCategoryIsDefined() As %Boolean
{
}

Method SqlRoutinePrefixSet(value As %String = "") As %Status
{
}

Method SqlRoutinePrefixReset()
{
}

Method SqlRoutinePrefixIsDefined() As %Boolean
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

Method SqlRowIdPrivateSet(value As %String = "") As %Status
{
}

Method SqlRowIdPrivateReset()
{
}

Method SqlRowIdPrivateIsDefined() As %Boolean
{
}

Method SqlTableNameSet(value As %String = "") As %Status
{
}

Method SqlTableNameReset()
{
}

Method SqlTableNameIsDefined() As %Boolean
{
}

Method StorageStrategySet(value As %String = "") As %Status
{
}

Method StorageStrategyReset()
{
}

Method StorageStrategyIsDefined() As %Boolean
{
}

Method SuperSet(value As %String = "") As %Status
{
}

Method SuperReset()
{
}

Method SuperIsDefined() As %Boolean
{
}

Method SystemSet(value As %String = "") As %Status
{
}

Method SystemReset()
{
}

Method SystemIsDefined() As %Boolean
{
}

Method TimeChangedSet(value As %String = "") As %Status
{
}

Method TimeChangedReset()
{
}

Method TimeChangedIsDefined() As %Boolean
{
}

Method TimeCreatedSet(value As %String = "") As %Status
{
}

Method TimeCreatedReset()
{
}

Method TimeCreatedIsDefined() As %Boolean
{
}

Method TriggerClassSet(value As %String = "") As %Status
{
}

Method TriggerClassReset()
{
}

Method TriggerClassIsDefined() As %Boolean
{
}

Method ViewQuerySet(value As %String = "") As %Status
{
}

Method ViewQueryReset()
{
}

Method ViewQueryIsDefined() As %Boolean
{
}

}
