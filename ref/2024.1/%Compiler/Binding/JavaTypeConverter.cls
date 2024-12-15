Class %Compiler.Binding.JavaTypeConverter Extends %RegisteredObject [ System = 4 ]
{

Property objectLibraryTypes;

Property timeTypes;

Property projParams As %ArrayOfDataTypes;

Property primitiveDataTypes As %Boolean;

Method %OnNew(projParams As %ArrayOfDataTypes) As %Status [ Private, ServerOnly = 1 ]
{
}

Method getSigType(returnType As %String, newCollections As %Boolean) As %String
{
}

Method convertType(fullType As %String, ByRef package As %String, ByRef type As %String, ByRef elementType = "", collectionType = "", isRelationship = 0, ByRef qstruct As %String) As %Status
{
}

Method convertCDType(type As %String, className = "") As %String
{
}

Method convertObjectTypes(type As %String) As %String
{
}

Method paramsToArguments(params As %List, isStatic = 0, convertsType = 1) As %String
{
}

Method paramsToString(params As %List) As %String
{
}

Method getTypeForIRISCall(type As %String, returnsObject As %Boolean, notPropertyCall = 0) As %String
{
}

}
