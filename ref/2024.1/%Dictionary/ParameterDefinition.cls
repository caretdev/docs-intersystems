Class %Dictionary.ParameterDefinition Extends (%Persistent, %Dictionary.ParameterDefinitionQuery) [ StorageStrategy = custom, System = 2 ]
{

/// Pointer to the containing parent object
Relationship parent As %Dictionary.ClassDefinition [ Cardinality = parent, Inverse = Parameters ];

/// Stores the DEFINED state of each attribute.
Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];

/// Specifies whether this is an abstract parameter.
Property Abstract As %Boolean [ InitialExpression = 0 ];

/// Specifies a constraint value used by Studio to provide input validation for the parameter. Its value is not used nor enforced by the Class Compiler.
Property Constraint As %RawString [ SqlFieldName = _Constraint ];

/// Specifies a default value for the parameter assuming the Expression keyword is blank.
Property Default As %RawString [ SqlFieldName = _Default ];

/// True if this parameter is deprecated.
Property Deprecated As %Boolean [ InitialExpression = 0 ];

/// Specifies a description of the parameter.
Property Description As %RawString;

/// If true then the parameter value is base64 encoded.
Property Encoded As %Boolean [ InitialExpression = 0 ];

/// An expression to seed parameter with evaluated at compile time, if specified this takes precedence over the Default keyword.
Property Expression As %RawString;

/// Specifies that subclasses cannot override the definition of the parameter.
Property Final As %Boolean [ InitialExpression = 0 ];

/// Specifies any additional modifier flags for the parameter type.
Property Flags As %RawString;

/// If true, then do not display this item in automatic documentation.
Property Internal As %Boolean [ InitialExpression = 0 ];

/// The name of the parameter.
Property Name As %Dictionary.Identifier [ Required ];

/// SequenceNumber
Property SequenceNumber As %Integer [ InitialExpression = 0 ];

/// Specifies a type for the parameter. The type is used by Studio to provide input validation for the parameter.
Property Type As %RawString;

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

Method ConstraintSet(value As %String = "") As %Status
{
}

Method ConstraintReset()
{
}

Method ConstraintIsDefined() As %Boolean
{
}

Method DefaultSet(value As %String = "") As %Status
{
}

Method DefaultReset()
{
}

Method DefaultIsDefined() As %Boolean
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

Method EncodedSet(value As %String = "") As %Status
{
}

Method EncodedReset()
{
}

Method EncodedIsDefined() As %Boolean
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

Method FinalSet(value As %String = "") As %Status
{
}

Method FinalReset()
{
}

Method FinalIsDefined() As %Boolean
{
}

Method FlagsSet(value As %String = "") As %Status
{
}

Method FlagsReset()
{
}

Method FlagsIsDefined() As %Boolean
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
