Class %Dictionary.CompiledConstraint Extends (%Persistent, %Dictionary.CompiledConstraintQuery) [ StorageStrategy = custom, System = 2 ]
{

/// Pointer to the containing parent object
Relationship parent As %Dictionary.CompiledClass [ Cardinality = parent, Inverse = Constraints ];

/// Stores the DEFINED state of each attribute.
Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];

/// Specifies the type of constraint.
Property Category As %RawString;

/// CompilerGenerated
Property CompilerGenerated As %Boolean;

/// Deferrable
Property Deferrable As %Boolean [ SqlFieldName = _Deferrable ];

/// True if this constraint is deprecated.
Property Deprecated As %Boolean;

/// Final
Property Final As %Boolean;

/// Specifies the list of arguments that are passed to the constraint.
Property FormalSpec As %RawString;

/// FormalSpecParsed
Property FormalSpecParsed As %RawString;

/// Specifies the name of the class member from which this constraint is generated, member type depends on the value of the Category keyword.
Property GeneratedFrom As %RawString;

/// Id
Property Id As %Integer;

/// InheritedId
Property InheritedId As %Boolean;

/// Initialmode
Property Initialmode As %RawString;

/// KeywordError
Property KeywordError As %Boolean;

/// KeywordModified
Property KeywordModified As %Boolean;

/// Method
Relationship Methods As %Dictionary.CompiledConstraintMethod [ Cardinality = children, Inverse = parent ];

/// Name
Property Name As %Dictionary.Identifier [ Required ];

/// NotInheritable
Property NotInheritable As %Boolean;

/// Origin
Property Origin As %RawString;

/// Parameter
Property Parameters As array Of %RawString;

/// SqlName
Property SqlName As %RawString;

/// Type
Property Type As %RawString;

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

Method DeprecatedSet(value As %String = "") As %Status
{
}

Method DeprecatedReset()
{
}

Method DeprecatedIsDefined() As %Boolean
{
}

ClassMethod parentOnDelete(id As %String, concurrency As %Integer) As %Status
{
}

}
