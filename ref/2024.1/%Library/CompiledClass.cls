/// <b>
/// Note: The class definition classes in the %Library package have been superceded
/// by those in the %Dictionary package. Instead use <class>%Dictionary.CompiledClass</class>.</b>
/// <p>
/// This class represents a specific, compiled class definition.
/// It contains all class members, including those
/// that are inherited from super classes.
///
/// <p>Instances of this class are "read only"; to modify class definitions use the
/// non-compiled class definition classes.
Class %Library.CompiledClass Extends %Persistent [ Deprecated, Not ProcedureBlock, StorageStrategy = custom, System = 2 ]
{

/// A string indicating the class type.
Property ClassType As %RawString;

/// A string containing the description of the class.
Property Description As %RawString;

/// A flag indicating whether the class is a datatype class (1) or not (0).
Property Datatype As %RawString;

/// A string containing the name of the class.
Property Name As %RawString;

/// A flag indicating whether the class is persistent (1) or not (0).
Property Persistent As %RawString;

/// A flag indicating whether the class is serial (embeddable) (1) or not (0).
Property Serial As %RawString;

/// A flag indicating whether the class is a system class (1) or not (0).
Property System As %RawString;

/// A collection of methods belonging to the class. See <CLASS>%CompiledMethod</CLASS>
/// for details.
Property Methods As %ListOfPersistentChildObjects(CLASSNAME = 1);

/// A collection of class parameters belonging to the class.
/// See <CLASS>%CompiledParameter</CLASS> for details.
Property Parameters As %ListOfPersistentChildObjects(CLASSNAME = 1);

/// A collection of properties belonging to the class.
/// See <CLASS>%CompiledProperty</CLASS> for details.
Property Properties As %ListOfPersistentChildObjects(CLASSNAME = 1);

/// A collection of queries belonging to the class.
/// See <CLASS>%CompiledQuery</CLASS> for details.
Property Queries As %ListOfPersistentChildObjects(CLASSNAME = 1);

Property list As %ListOfDataTypes [ Transient ];

/// Returns a <class>%ClassDefinition</class> for this class so that you
/// can edit the class definition.
Property ClassDefinition As %ClassDefinition(CLASSNAME = 1);

Method ClassDefinitionGet() As %ClassDefinition
{
}

Method ClassDefinitionSet(val As %ClassDefinition) As %Status [ Private ]
{
}

/// The GetParameter method returns the value of the parameter
/// named <i>name</i> from the class <i>classname</i>.
ClassMethod GetClassParameter(classname As %String, name As %String) As %String
{
}

Method %LoadData(classname As %String) As %Status [ Private ]
{
}

Method %SaveData(id As %String) As %Status [ Private ]
{
}

ClassMethod %DeleteData(id As %String, concurrency As %Integer) As %Status [ Private ]
{
}

ClassMethod %Exists(oid As %ObjectIdentity) As %Boolean
{
}

Method GetClassList() As %ListOfDataTypes
{
}

ClassMethod ExportODL(Class As %String, File As %String) As %Status
{
}

/// The <b>ClassInfo</b> query provides a summary of information about compiled classes contained in the
/// <i>Class Dictionary</i>.
ClassMethod ClassInfoExecute(ByRef QHandle As %Binary, initvalue As %String) As %Status
{
}

ClassMethod ClassInfoFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

ClassMethod ClassInfoClose(QHandle As %Binary) As %Status
{
}

/// The <b>IndexInfo</b> query provides a list of indices defined for the class
/// <var>classname</var>.
ClassMethod IndexInfoExecute(ByRef QHandle As %Binary, classname As %String) As %Status
{
}

ClassMethod IndexInfoFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

ClassMethod IndexInfoClose(QHandle As %Binary) As %Status
{
}

}
