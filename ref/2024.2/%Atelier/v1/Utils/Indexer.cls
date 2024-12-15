Class %Atelier.v1.Utils.Indexer Extends %RegisteredObject
{

/// This general entry point serves to index all types of document
ClassMethod Index(pDocumentName As %String, pCat As %String, Output pIndex As %DynamicObject, pNS As %String = {$namespace}) As %Status
{
}

/// The index will be created by examining the structures in ^oddDEF
ClassMethod IndexClass(pClassName As %String, Output pIndex As %DynamicObject, pNS As %String) As %Status
{
}

/// This indexes the methods of a class
ClassMethod IndexMethods(pClassName As %String, ByRef pNormCache, ByRef pIndex As %DynamicObject, pNS As %String) As %Status [ Private ]
{
}

/// This indexes the parameters of a class
ClassMethod IndexParameters(pClassName As %String, ByRef pNormCache, ByRef pIndex As %DynamicObject, pNS As %String) As %Status [ Private ]
{
}

/// This indexes the properties of a class
ClassMethod IndexProperties(pClassName As %String, ByRef pNormCache, ByRef pIndex As %DynamicObject, pNS As %String) As %Status [ Private ]
{
}

ClassMethod NormalizeClassName(pClassName As %String, pBaseClass As %String, ByRef pCache) As %String
{
}

}
