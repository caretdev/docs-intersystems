Class %Dictionary.MethodDefinition Extends (%Persistent, %Dictionary.MethodDefinitionQuery) [ StorageStrategy = custom, System = 2 ]
{

/// Pointer to the containing parent object
Relationship parent As %Dictionary.ClassDefinition [ Cardinality = parent, Inverse = Methods ];

/// Stores the DEFINED state of each attribute.
Property %isDefined As %RawString [ MultiDimensional, Private, Transient ];

/// Specifies that this is an abstract method. An abstract method has no implementation and has no executable code generated for it. Abstract methods exist solely for the purpose of defining a method signature or interface that can be overridden and implemented within one or more subclasses.
Property Abstract As %Boolean [ InitialExpression = 0 ];

/// Specifies that the method is a class method.  Instance methods can only be invoked via an instantiated object while class methods can be directly invoked without an object instance.
Property ClassMethod As %Boolean [ InitialExpression = 0 ];

/// If true this method is only available on the server, and is to be projected as a client method.
Property ClientMethod As %Boolean [ InitialExpression = 0 ];

/// An alias used by client projections of this method.
Property ClientName As %RawString;

/// Specifies how a given method is implemented: as a routine call, lines of code to be compiled, an expression, or a method that will generate the resulting method or object.
Property CodeMode As %RawString [ InitialExpression = "code" ];

/// True if this method is deprecated.
Property Deprecated As %Boolean [ InitialExpression = 0 ];

/// Specifies a description of the method.
Property Description As %RawString;

/// Specifies the SQL procedure name in the foreign database.
Property ExternalProcName As %RawString;

/// Specifies that subclasses cannot override the implementation of the method.
Property Final As %Boolean [ InitialExpression = 0 ];

/// When true we always regenerate this method into each subclass even if normal rules would allow us to call the superclass implementation.
Property ForceGenerate As %Boolean [ InitialExpression = 0 ];

/// Specifies the list of arguments. Each argument is of the format [&amp;|*]&lt;name&gt;[:&lt;type&gt;][=&lt;default&gt;] where &amp; means pass-by-reference and * means output-only.
Property FormalSpec As %RawString;

/// In the case of a method generator method, specifies that the generator should be invoked after the listed methods are generated.
Property GenerateAfter As %RawString;

/// Hash
Property Hash As %RawString;

/// The code that is executed when the method is invoked. In the case of an expression method, this is an expression. In the case of a call method, this is the name of an ObjectScript routine to call.
Property Implementation As %Stream.TmpCharacter;

/// If true, then do not display this item in automatic documentation.
Property Internal As %Boolean [ InitialExpression = 0 ];

/// The language used to implement this method.
Property Language As %RawString [ SqlFieldName = _Language ];

/// The name of the method.
Property Name As %Dictionary.Identifier [ Required ];

/// If true and in a datatype method, this prevents the * Set %val=..prop Set $this=&quot;&quot; * that is added to the property method so you can override things like the Get/Set methods.
Property NoContext As %Boolean [ InitialExpression = 0 ];

/// Deprecated.
Property NotForProperty As %Boolean [ InitialExpression = 0 ];

/// Specifies that this method is not inherited in subclasses.
Property NotInheritable As %Boolean [ InitialExpression = 0 ];

/// Specifies that the class compiler should place this method after the listed methods in the routine it creates for the class.
Property PlaceAfter As %RawString;

/// Specifies that the method is private. Private methods can only be invoked by instance methods of this class or its subclasses.
Property Private As %Boolean [ InitialExpression = 0 ];

/// Specifies that this method uses procedure block for method code.
Property ProcedureBlock As %RawString;

/// Specifies the public list.  This keyword is used only if the ProcedureBlock keyword is set to true.
Property PublicList As %RawString;

/// Comma separated string of resource constraints to run this method
Property Requires As %RawString;

/// If true this method may return zero, one, or more Resultsets in the %sqlcontext.
Property ReturnResultsets As %Boolean [ InitialExpression = 0 ];

/// Specifies the data type of the value returned by a call to the method. Setting ReturnType to an empty string specifies that there is no return value.
Property ReturnType As %Dictionary.Classname;

/// A comma separated list of any parameters on the ReturnType keyword.
Property ReturnTypeParams As %RawString;

/// SequenceNumber
Property SequenceNumber As %Integer [ InitialExpression = 0 ];

/// Specifies that a method will not be projected to a Java or C++ client.
Property ServerOnly As %RawString;

/// Lets you specify the HTTP SOAP action that must be used when invoking this web service method as a web method. For SOAP 1.1, the SOAP action is obtained from the SOAPAction HTTP header. For SOAP 1.2, it is obtained from the Content-Type HTTP header.
Property SoapAction As %RawString [ InitialExpression = "[default]" ];

/// Specifies what type of SOAP invocation is used for a web method. This keyword is ignored for non-web methods.
Property SoapBindingStyle As %RawString;

/// Specifies what kind of SOAP encoding is used for the inputs and outputs of a web method. This keyword is ignored for non-web methods.
Property SoapBodyUse As %RawString;

/// Specifies the name of the child element of the body of the response message for a web service method.
Property SoapMessageName As %RawString;

/// Overrides the SOAPNAMESPACE class parameter for this web service or web service client.
Property SoapNameSpace As %RawString;

///  This keyword will reflects the expected element name for top element of the SOAP body in the SOAP request.  This element is needed to distinguish between multiple requests which have the same SoapAction but different top level body elements.
Property SoapRequestMessage As %RawString;

/// Overrides the SOAPTYPENAMESPACE class parameter for this web service or web service client.
Property SoapTypeNameSpace As %RawString;

/// If this method is projected as an SQL stored procedure, then this name is used as the name of the stored procedure.
Property SqlName As %RawString;

/// Specifies that the method can be invoked as an SQL stored procedure. Only class methods can be called as SQL stored procedures.
Property SqlProc As %Boolean [ InitialExpression = 0 ];

/// If &#39;procedure&#39; then this is equivalent to SqlProc keyword and means class method can be called as an SQL procedure. If &#39;function&#39; then this class method can be called as an SQL function.
Property SqlRoutine As %RawString;

/// Specifies that a method can be invoked as a web method using the SOAP protocol.
Property WebMethod As %Boolean [ InitialExpression = 0 ];

/// Specifies that the method should be projected to the web client for use in the Zen framework.
Property ZenMethod As %Boolean [ InitialExpression = 0 ];

ClassMethod CodeModeIsValid(val As %String) As %Status
{
}

ClassMethod ProcedureBlockIsValid(val As %String) As %Status
{
}

ClassMethod ServerOnlyIsValid(val As %String) As %Status
{
}

ClassMethod SoapBindingStyleIsValid(val As %String) As %Status
{
}

ClassMethod SoapBodyUseIsValid(val As %String) As %Status
{
}

ClassMethod SqlRoutineIsValid(val As %String) As %Status
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

Method ClassMethodSet(value As %String = "") As %Status
{
}

Method ClassMethodReset()
{
}

Method ClassMethodIsDefined() As %Boolean
{
}

Method ClientMethodSet(value As %String = "") As %Status
{
}

Method ClientMethodReset()
{
}

Method ClientMethodIsDefined() As %Boolean
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

Method ExternalProcNameSet(value As %String = "") As %Status
{
}

Method ExternalProcNameReset()
{
}

Method ExternalProcNameIsDefined() As %Boolean
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

Method ForceGenerateSet(value As %String = "") As %Status
{
}

Method ForceGenerateReset()
{
}

Method ForceGenerateIsDefined() As %Boolean
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

Method GenerateAfterSet(value As %String = "") As %Status
{
}

Method GenerateAfterReset()
{
}

Method GenerateAfterIsDefined() As %Boolean
{
}

Method HashSet(value As %String = "") As %Status
{
}

Method HashReset()
{
}

Method HashIsDefined() As %Boolean
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

Method NoContextSet(value As %String = "") As %Status
{
}

Method NoContextReset()
{
}

Method NoContextIsDefined() As %Boolean
{
}

Method NotForPropertySet(value As %String = "") As %Status
{
}

Method NotForPropertyReset()
{
}

Method NotForPropertyIsDefined() As %Boolean
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

Method PlaceAfterSet(value As %String = "") As %Status
{
}

Method PlaceAfterReset()
{
}

Method PlaceAfterIsDefined() As %Boolean
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

Method ProcedureBlockSet(value As %String = "") As %Status
{
}

Method ProcedureBlockReset()
{
}

Method ProcedureBlockIsDefined() As %Boolean
{
}

Method PublicListSet(value As %String = "") As %Status
{
}

Method PublicListReset()
{
}

Method PublicListIsDefined() As %Boolean
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

Method ReturnResultsetsSet(value As %String = "") As %Status
{
}

Method ReturnResultsetsReset()
{
}

Method ReturnResultsetsIsDefined() As %Boolean
{
}

Method ReturnTypeSet(value As %String = "") As %Status
{
}

Method ReturnTypeReset()
{
}

Method ReturnTypeIsDefined() As %Boolean
{
}

Method ReturnTypeParamsSet(value As %String = "") As %Status
{
}

Method ReturnTypeParamsReset()
{
}

Method ReturnTypeParamsIsDefined() As %Boolean
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

Method SoapActionSet(value As %String = "") As %Status
{
}

Method SoapActionReset()
{
}

Method SoapActionIsDefined() As %Boolean
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

Method SoapMessageNameSet(value As %String = "") As %Status
{
}

Method SoapMessageNameReset()
{
}

Method SoapMessageNameIsDefined() As %Boolean
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

Method SoapRequestMessageSet(value As %String = "") As %Status
{
}

Method SoapRequestMessageReset()
{
}

Method SoapRequestMessageIsDefined() As %Boolean
{
}

Method SoapTypeNameSpaceSet(value As %String = "") As %Status
{
}

Method SoapTypeNameSpaceReset()
{
}

Method SoapTypeNameSpaceIsDefined() As %Boolean
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

Method SqlRoutineSet(value As %String = "") As %Status
{
}

Method SqlRoutineReset()
{
}

Method SqlRoutineIsDefined() As %Boolean
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

Method ZenMethodSet(value As %String = "") As %Status
{
}

Method ZenMethodReset()
{
}

Method ZenMethodIsDefined() As %Boolean
{
}

ClassMethod parentOnDelete(id As %String, concurrency As %Integer) As %Status
{
}

}
