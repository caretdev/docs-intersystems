Class %Dictionary.CompiledTrigger Extends (%Persistent, %Dictionary.CompiledTriggerQuery) [ StorageStrategy = custom, System = 2 ]
{

/// Pointer to the containing parent object
Relationship parent As %Dictionary.CompiledClass [ Cardinality = parent, Inverse = Triggers ];

/// Stores the DEFINED state of each attribute.
Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];

/// The code that is executed when the trigger is fired.
Property Code As %RawString;

/// Specifies how a given method is implemented: lines of code to be compiled, or a method that will generate the resulting method or object.
Property CodeMode As %RawString;

/// CompilerGenerated
Property CompilerGenerated As %Boolean;

/// True if this trigger is deprecated.
Property Deprecated As %Boolean;

/// Specifies a description of the SQL trigger.
Property Description As %RawString;

/// Specifies the SQL event that will fire the trigger.
Property Event As %RawString;

/// Specifies that subclasses cannot override the definition of the SQL trigger.
Property Final As %Boolean;

/// Indicates if the trigger will be invoked for each row, for rows and objects, or for each statement
Property Foreach As %RawString;

/// Id
Property Id As %Integer;

/// InheritedId
Property InheritedId As %Boolean;

/// If true, then do not display this item in automatic documentation.
Property Internal As %Boolean;

/// KeywordError
Property KeywordError As %Boolean;

/// KeywordModified
Property KeywordModified As %Boolean;

/// The language used to implement this trigger.
Property Language As %RawString [ SqlFieldName = _Language ];

/// The name of the SQL trigger.
Property Name As %Dictionary.Identifier [ Required ];

/// The name of the SQL table that holds old values for the trigger.
Property NewTable As %RawString;

/// NotInheritable
Property NotInheritable As %Boolean;

/// The name of the SQL table that holds old values for the trigger.
Property OldTable As %RawString;

/// In the case of multiple triggers for the same EVENT and TIME, specifies the order in which the triggers should be fired.
Property Order As %Integer;

/// Origin
Property Origin As %RawString;

/// SequenceNumber
Property SequenceNumber As %Integer;

/// Specifies an alternate name when this trigger is used by SQL.
Property SqlName As %RawString;

/// TagGenerator
Property TagGenerator As %RawString;

/// Specifies whether the trigger is fired before or after the EVENT.
Property Time As %RawString [ SqlFieldName = _Time ];

/// Specifies one or more columns whose modification causes the trigger to be pulled by SQL.
Property UpdateColumnList As %RawString;

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

Method CodeSet(value As %String = "") As %Status
{
}

Method CodeReset()
{
}

Method CodeIsDefined() As %Boolean
{
}

Method CodeModeSet(value As %String = "") As %Status
{
}

Method CodeModeReset()
{
}

Method CodeModeIsDefined() As %Boolean
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

Method EventSet(value As %String = "") As %Status
{
}

Method EventReset()
{
}

Method EventIsDefined() As %Boolean
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

Method ForeachSet(value As %String = "") As %Status
{
}

Method ForeachReset()
{
}

Method ForeachIsDefined() As %Boolean
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

Method LanguageSet(value As %String = "") As %Status
{
}

Method LanguageReset()
{
}

Method LanguageIsDefined() As %Boolean
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

Method NewTableSet(value As %String = "") As %Status
{
}

Method NewTableReset()
{
}

Method NewTableIsDefined() As %Boolean
{
}

Method OldTableSet(value As %String = "") As %Status
{
}

Method OldTableReset()
{
}

Method OldTableIsDefined() As %Boolean
{
}

Method OrderSet(value As %String = "") As %Status
{
}

Method OrderReset()
{
}

Method OrderIsDefined() As %Boolean
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

Method TimeSet(value As %String = "") As %Status
{
}

Method TimeReset()
{
}

Method TimeIsDefined() As %Boolean
{
}

Method UpdateColumnListSet(value As %String = "") As %Status
{
}

Method UpdateColumnListReset()
{
}

Method UpdateColumnListIsDefined() As %Boolean
{
}

ClassMethod parentOnDelete(id As %String, concurrency As %Integer) As %Status
{
}

}
