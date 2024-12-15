Class %Dictionary.StorageSQLMapSubDefinition Extends %Persistent [ StorageStrategy = custom, System = 2 ]
{

/// Pointer to the containing parent object
Relationship parent As %Dictionary.StorageSQLMapDefinition [ Cardinality = parent, Inverse = Subscripts ];

/// Stores the DEFINED state of each attribute.
Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];

/// AccessType
Property AccessType As %RawString;

/// Accessvar
Relationship Accessvars As %Dictionary.StorageSQLMapSubAccessvarDefinition [ Cardinality = children, Inverse = parent ];

/// DataAccess
Property DataAccess As %RawString;

/// Delimiter
Property Delimiter As %RawString;

/// Expression
Property Expression As %RawString;

/// Invalidcondition
Relationship Invalidconditions As %Dictionary.StorageSQLMapSubInvalidconditionDefinition [ Cardinality = children, Inverse = parent ];

/// LoopInitValue
Property LoopInitValue As %RawString;

/// Name
Property Name As %Integer [ Required ];

/// NextCode
Property NextCode As %RawString;

/// NullMarker
Property NullMarker As %RawString;

/// StartValue
Property StartValue As %RawString;

/// StopExpression
Property StopExpression As %RawString;

/// StopValue
Property StopValue As %RawString;

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

Method AccessTypeSet(value As %String = "") As %Status
{
}

Method AccessTypeReset()
{
}

Method AccessTypeIsDefined() As %Boolean
{
}

Method DataAccessSet(value As %String = "") As %Status
{
}

Method DataAccessReset()
{
}

Method DataAccessIsDefined() As %Boolean
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

Method ExpressionSet(value As %String = "") As %Status
{
}

Method ExpressionReset()
{
}

Method ExpressionIsDefined() As %Boolean
{
}

Method LoopInitValueSet(value As %String = "") As %Status
{
}

Method LoopInitValueReset()
{
}

Method LoopInitValueIsDefined() As %Boolean
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

Method NextCodeSet(value As %String = "") As %Status
{
}

Method NextCodeReset()
{
}

Method NextCodeIsDefined() As %Boolean
{
}

Method NullMarkerSet(value As %String = "") As %Status
{
}

Method NullMarkerReset()
{
}

Method NullMarkerIsDefined() As %Boolean
{
}

Method StartValueSet(value As %String = "") As %Status
{
}

Method StartValueReset()
{
}

Method StartValueIsDefined() As %Boolean
{
}

Method StopExpressionSet(value As %String = "") As %Status
{
}

Method StopExpressionReset()
{
}

Method StopExpressionIsDefined() As %Boolean
{
}

Method StopValueSet(value As %String = "") As %Status
{
}

Method StopValueReset()
{
}

Method StopValueIsDefined() As %Boolean
{
}

ClassMethod parentOnDelete(id As %String, concurrency As %Integer) As %Status
{
}

}
