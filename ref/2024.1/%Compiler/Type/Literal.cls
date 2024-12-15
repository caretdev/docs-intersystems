/// Property class for literal values, for internal use only.
/// <p>
/// The property interface consists of several accessor methods. For literals, the following methods are defined:
/// <method>Get</method>
/// <method>Set</method>
/// <method>IsValid</method>
/// </p>
/// <p>
/// For complex types, the following methods are defined in subclasses of this class. Refer to <class>%Compiler.Type.Object</class>
/// for object types.
Class %Compiler.Type.Literal [ NoContext, System = 1 ]
{

/// A caption for the property usually used by client applications.
Parameter CAPTION;

/// The name of the column in an external SQL table (gateway) to which this property is linked.
Parameter EXTERNALSQLNAME As STRING;

/// The original type of the column in an external SQL table (gateway) to which this property is linked.
Parameter EXTERNALSQLTYPE As STRING;

/// This parameter controls whether the SELECTIVITY of this property is calculated during TuneTable
/// 1 means TuneTable will calculate the SELECTIVITY of the property/field.  0 means it will be skipped by TuneTable.
Parameter CALCSELECTIVITY As BOOLEAN = 1;

/// The Java type to be used when exported.
Parameter JAVATYPE;

/// STORAGEDEFAULT is the type of storage used for the property if it is not already
/// allocated in a DATA definition in the active STORAGE definition.
/// Used to define a property as being stored as columnar in a hybrid row/column table.
/// globalnode is used to store long data in its own global.
Parameter STORAGEDEFAULT As STRING [ Constraint = ",columnar,row,globalnode", Flags = ENUM ];

Method Get() As %RawString [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// SetT() is the "triggered set" method generated solely for READONLY properties that are SQLCOMPUTED
/// and are triggered by a non-null set of properties defined in SQLCOMPUTEONCHANGE. Not to be called by user code.
Method SetT() As %Status [ CodeMode = generator, Internal, ServerOnly = 1 ]
{
}

/// Set the property to <var>newvalue</var> if is different from the current value.
Method Set(newvalue As %RawString) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

ClassMethod IsValid(value As %RawString) As %Status [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// This internal method is generated for properties with SQLCOMPUTED = true. It contains code to compute a value for the property as defined in SQLCOMPUTECODE. SQLCOMPUTECODE is scanned for {<field>} references and those references are replaced by a formal argument.
/// Do not attempt to call this method from user code.
ClassMethod Compute(%id As %RawString) As %String [ CodeMode = generator, Internal, ProcedureBlock = 0, ServerOnly = 1 ]
{
}

/// This internal method is generated for properties with SQLCOMPUTED = true.
/// It contains code to compute a value for the property as defined in SQLCOMPUTECODE for the SQL Filer.
/// Not to be called by user code.
ClassMethod SQLCompute() [ CodeMode = generator, Internal, ProcedureBlock = 0, ServerOnly = 1 ]
{
}

}
