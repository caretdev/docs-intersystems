/// These %Collection classes can only be used when you have a collection property of another object as they rely on
/// storing the data inside the parent object, they can not be used as 'stand alone' collections, for this use the <class>%ArrayOfObjects</class>.
Class %Collection.ArrayOfStream Extends ArrayOfObj [ System = 4 ]
{

Method GetAt(key As %String) As %RegisteredObject
{
}

Method SetAt(oref As %RegisteredObject, key As %String) As %Status
{
}

Method SetObjectIdAt(id As %String, key As %String) As %Status [ CodeMode = expression ]
{
}

Method %OnConstructClone(oref As %RegisteredObject, deep As %Boolean = 0, ByRef cloned As %String) As %Status [ Private ]
{
}

}
