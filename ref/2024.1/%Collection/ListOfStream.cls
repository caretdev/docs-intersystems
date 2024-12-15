/// These %Collection classes can only be used when you have a collection property of another object as they rely on
/// storing the data inside the parent object, they can not be used as 'stand alone' collections, for this use the <class>%ListOfObjects</class>.
Class %Collection.ListOfStream Extends ListOfObj [ System = 4 ]
{

Method GetAt(key As %Integer) As %RegisteredObject
{
}

Method Insert(oref As %RegisteredObject) As %Status
{
}

Method InsertObjectId(id As %String) As %Status [ CodeMode = expression, Final ]
{
}

Method InsertAt(oref As %RegisteredObject, key As %Integer) As %Status
{
}

Method InsertObjectIdAt(id As %String, key As %Integer) As %Status [ CodeMode = expression, Final ]
{
}

Method SetAt(oref As %RegisteredObject, key As %Integer) As %Status
{
}

Method SetObjectIdAt(id As %String, key As %Integer) As %Status [ CodeMode = expression, Final ]
{
}

Method %OnConstructClone(oref As %RegisteredObject, deep As %Boolean = 0, ByRef cloned As %String) As %Status [ Private ]
{
}

}
