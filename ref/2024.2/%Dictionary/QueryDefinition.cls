Class %Dictionary.QueryDefinition Extends (%Persistent, %Dictionary.QueryDefinitionQuery) [ StorageStrategy = custom, System = 2 ]
{

/// Pointer to the containing parent object
Relationship parent As %Dictionary.ClassDefinition [ Cardinality = parent, Inverse = Queries ];

/// Stores the DEFINED state of each attribute.
Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];

/// An alias used by client projections of this query.
Property ClientName As %RawString;

/// True if this query is deprecated.
Property Deprecated As %Boolean [ InitialExpression = 0 ];

/// Specifies a description of the query.
Property Description As %RawString;

/// Specifies that subclasses cannot override the definition of the query.
Property Final As %Boolean [ InitialExpression = 0 ];

/// Specifies the list of arguments passed to the Execute method. Each argument is of the format [&amp;|*]&lt;name&gt;[:&lt;type&gt;][=&lt;default&gt;] where &amp; means pass-by-reference and * means output-only.
Property FormalSpec As %RawString;

/// If true, then do not display this item in automatic documentation.
Property Internal As %Boolean [ InitialExpression = 0 ];

/// The name of the query.
Property Name As %Dictionary.Identifier [ Required ];

/// Deprecated
Property NotInheritable As %Boolean [ InitialExpression = 0 ];

/// Parameter
Property Parameters As array Of %RawString;

/// Deprecated.
Property Private As %Boolean [ InitialExpression = 0 ];

/// Comma separated string of resource constraints to run this method
Property Requires As %RawString;

/// SequenceNumber
Property SequenceNumber As %Integer [ InitialExpression = 0 ];

/// Specifies what type of SOAP invocation is used for a web method. This keyword is ignored for non-web methods.
Property SoapBindingStyle As %RawString;

/// Specifies what kind of SOAP encoding is used for the inputs and outputs of a web method. This keyword is ignored for non-web methods.
Property SoapBodyUse As %RawString;

/// Specifies the namespace at the binding operation level in the WSDL. Applies only in a class that is defined as a web service or web client.
Property SoapNameSpace As %RawString;

/// If this query is projected as an SQL stored procedure, then this name is used as the name of the stored procedure.
Property SqlName As %RawString;

/// Specifies that the query can be invoked as an SQL stored procedure.
Property SqlProc As %Boolean [ InitialExpression = 0 ];

/// Specifies an SQL statement to be used for an SQL-based query.
Property SqlQuery As %RawString;

/// Specifies whether to project this query as an SQL View.
Property SqlView As %Boolean [ InitialExpression = 0 ];

/// Specifies an SQL alias for the view projected from this query.
Property SqlViewName As %RawString;

/// Specifies the Query class used to provide the implementation of the query interface.
Property Type As %Dictionary.Classname;

/// description=Specifies that this query can be invoked using the SOAP protocol.
Property WebMethod As %Boolean [ InitialExpression = 0 ];

ClassMethod SoapBindingStyleIsValid(val As %String) As %Status
{
}

ClassMethod SoapBodyUseIsValid(val As %String) As %Status
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

Method ClientNameSet(value As %String = "") As %Status
{
}

Method ClientNameReset()
{
}

Method ClientNameIsDefined() As %Boolean
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

Method FormalSpecSet(value As %String = "") As %Status
{
}

Method FormalSpecReset()
{
}

Method FormalSpecIsDefined() As %Boolean
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

Method NotInheritableSet(value As %String = "") As %Status
{
}

Method NotInheritableReset()
{
}

Method NotInheritableIsDefined() As %Boolean
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

Method RequiresSet(value As %String = "") As %Status
{
}

Method RequiresReset()
{
}

Method RequiresIsDefined() As %Boolean
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

Method SoapNameSpaceSet(value As %String = "") As %Status
{
}

Method SoapNameSpaceReset()
{
}

Method SoapNameSpaceIsDefined() As %Boolean
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

Method SqlProcSet(value As %String = "") As %Status
{
}

Method SqlProcReset()
{
}

Method SqlProcIsDefined() As %Boolean
{
}

Method SqlQuerySet(value As %String = "") As %Status
{
}

Method SqlQueryReset()
{
}

Method SqlQueryIsDefined() As %Boolean
{
}

Method SqlViewSet(value As %String = "") As %Status
{
}

Method SqlViewReset()
{
}

Method SqlViewIsDefined() As %Boolean
{
}

Method SqlViewNameSet(value As %String = "") As %Status
{
}

Method SqlViewNameReset()
{
}

Method SqlViewNameIsDefined() As %Boolean
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

Method WebMethodSet(value As %String = "") As %Status
{
}

Method WebMethodReset()
{
}

Method WebMethodIsDefined() As %Boolean
{
}

ClassMethod parentOnDelete(id As %String, concurrency As %Integer) As %Status
{
}

}
