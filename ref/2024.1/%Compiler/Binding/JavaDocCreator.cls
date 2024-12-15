Class %Compiler.Binding.JavaDocCreator Extends %RegisteredObject [ System = 4 ]
{

Property javaDoc As %Boolean;

Property tConverter As JavaTypeConverter;

Property irisClassName As %String;

Property javaClassName As %String;

Property documaticHost As %String;

Property documaticPort As %String;

Property documaticNamespace As %String;

Property documaticUrl As %String;

Property deleteMethodNames As %List;

Property existsMethodNames As %List;

Method %OnNew(irisClassName As %String, javaClassName As %String, projParams As %ArrayOfDataTypes, tConverter As JavaTypeConverter) As %Status
{
}

Method createClassIntro(file As JavaFile, description As %String)
{
}

Method createConstructorDoc(file As JavaFile, params As %List, hasConnectionObject = 1)
{
}

Method createSystemConstructorDoc(file As JavaFile)
{
}

Method createIRISClassNameDoc(file As JavaFile)
{
}

Method createOpenDoc(file As JavaFile, methodName As %String, params As %List, hasConnectionObject = 1, hasConcurrency = 0)
{
}

Method createOpenByQueryDoc(file As JavaFile, hasArgs = 0)
{
}

Method createPersistentMethodDoc(file As JavaFile, methodName As %String, params As %List)
{
}

Method createGetterDoc(file As JavaFile, propName As %String, propType As %String, description As %String)
{
}

Method createSetterDoc(file As JavaFile, propName As %String, propType As %String, description As %String)
{
}

Method createMethodDoc(file As JavaFile, methodName As %String, params As %List, description As %String, isStatic = 0, createsMethodDoc = 0)
{
}

Method createStoredProcedureDoc(file As JavaFile, procName As %String, methodName As %String, description As %String)
{
}

Method createQueryDoc(file As JavaFile, queryName As %String, description As %String, hasConnectionObject = 1)
{
}

Method createParamsDoc(file As JavaFile, params As %List, hasConnectionObject = 0, ByRef hasConcurrency = 0)
{
}

}
