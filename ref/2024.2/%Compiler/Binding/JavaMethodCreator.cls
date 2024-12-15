Class %Compiler.Binding.JavaMethodCreator Extends %RegisteredObject [ System = 4 ]
{

Property class As %Dictionary.CompiledClass;

Property className As %String;

Property rootSuper As %String;

Property leftSuper As %String;

Property irisSupers As %List;

Property classType As %String;

Property irisPackage As %String;

Property projParams As %ArrayOfDataTypes;

Property newCollections As %Boolean;

Property tConverter As JavaTypeConverter;

Property jdCreator As JavaDocCreator;

Property propsWithGetter As %List [ MultiDimensional ];

Property propsWithSetter As %List [ MultiDimensional ];

Property conflictedMemberName As %List;

Property objectLibraryTypes As %List;

Property streamTypes As %List;

Property utilConvertedTypes As %List;

Property systemMethods As %List;

Property ignoredMethods As %List;

Property typesWithBuildIndices As %List;

Method %OnNew(class As %Dictionary.CompiledClass, className As %String, rootSuper As %String, leftSuper As %String, irisSupers As %List, projParams As %ArrayOfDataTypes, jdCreator As JavaDocCreator) As %Status
{
}

/// Create a new method
Method createMethod(file As JavaFile, javaMethodName As %String, params As %List, returnType As %String, irisMethodName As %String, returnsObject = 0, isStatic = 0, description = "", createsJavaDoc = 1, interfaceFile = "")
{
}

/// create call to IRIS method
Method createIRISCall(file As JavaFile, args As %String, returnType As %String, returnsObject As %Boolean, irisMethodName As %String, isStatic = 0)
{
}

Method getCastForIRISCall(typeForIRISCall As %String, ByRef rType As %String, ByRef cast As %String)
{
}

Method processResultOfIRISCall(file As JavaFile, returnType As %String, typeForIRISCall As %String, elementType = "", isStatic = 0)
{
}

/// Create constructors
Method createConstructors(file As JavaFile, onNew As %CompiledMethod, ByRef qstruct As %String) As %Status
{
}

/// Create %OpenId and %Open
Method createOpens(file As JavaFile, tableName As %String)
{
}

/// Template to create 1 pair of open methods
Method createOpen(file As JavaFile, javaMethodName1 As %String, javaMethodName2 As %String, params As %List, returnType As %String, irisMethodName As %String, returnsObject = 0)
{
}

/// Create %Delete and %DeleteId
Method createDeletes(file As JavaFile)
{
}

/// Generate %Exists and %ExistsId
Method createExists(file As JavaFile)
{
}

/// Generate ClassName methods
Method createClassName(file As JavaFile, hasFields As %Boolean)
{
}

/// Track all properties of the class
Method trackProperties(prop As %CompiledProperty, properties As %ArrayOfDataTypes, leftSuperProps As %ArrayOfDataTypes, ByRef qstruct As %String) As %Status
{
}

/// Create property methods
Method createProperty(file As JavaFile, prop As %Dictionary.CompiledProperty, interfaceFile = "") As %Status
{
}

/// Generate IsValid() and Logical/Display methods
Method createPropertySystemMethod(file As JavaFile, irisType As %String, javaType As %String, elementType As %String, collectionType As %String, propName As %String, propPackage As %String)
{
}

/// Create property getter
Method createGetter(file As JavaFile, propPackage As %String, propName As %String, clientName As %String, propType As %String, elementType As %String, collectionType As %String, description As %String, interfaceFile = "")
{
}

/// Create property setter
Method createSetter(file As JavaFile, propPackage As %String, propName As %String, clientName As %String, propType As %String, collectionType As %String, isRelationship As %Boolean, isReadOnly As %Boolean, description As %String, interfaceFile = "")
{
}

/// Create index methods
Method createIndexMethods(file As JavaFile, index As %Dictionary.CompiledIndex, ByRef qstruct As %String) As %Status
{
}

/// Create user-defined methods
Method createQueryMethod(file As JavaFile, query As %CompiledQuery)
{
}

/// Create user-defined methods
Method createUserDefinedMethod(file As JavaFile, method As %CompiledMethod, properties As %ArrayOfDataTypes, interfaceFile = "", ByRef qstruct As %String) As %Status
{
}

Method isProjectableMethod(method As %CompiledMethod) As %Boolean
{
}

/// Create stored procedure for a SqlProc class method
Method createStoredProcedure(file As JavaFile, methodName As %String, argCount As %Integer, returnType As %String, sqlName As %String, description As %String)
{
}

/// Format a method return type into the right form to append to a Java template
Method convertReturnType(ByRef returnType As %String, ByRef package = "", ByRef returnsObject As %Boolean, ByRef qstruct As %String) As %Status
{
}

/// Format a string of method parameters into a $list of parameters
Method convertParams(ByRef convertedParams As %ListOfDataTypes, methodParams As %String, ByRef qstruct As %String) As %Status
{
}

/// Template to create 1 pair of system methods
Method createMethodPair(file As JavaFile, javaMethodName1 As %String, javaMethodName2 As %String, params As %List, returnType As %String, irisMethodName As %String, returnsObject = 0)
{
}

/// Create %OpenByQuery
Method createOpenByQueryPair(file As JavaFile, tableName As %String)
{
}

Method createOpenByQuery(file As JavaFile, tableName As %String, hasArgs = 0)
{
}

Method resolveConflictedMemberName(name As %String) As %String
{
}

Method createDateTimeValidator(file As JavaFile, propName = "", propType = "")
{
}

Method default()
{
}

}
