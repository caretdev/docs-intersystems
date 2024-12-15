/// A version of the <CLASS>%Collection.ArrayOfObj</CLASS> collection class that stores
/// class names in OIDs.
/// These %Collection classes can only be used when you have a collection property of another object as they rely on
/// storing the data inside the parent object, they can not be used as 'stand alone' collections, for this use the <class>%ArrayOfObjectsWithClassName</class>.
Class %Collection.ArrayOfObjCN Extends %Collection.ArrayOfObj [ System = 2 ]
{

Method Find(element As %ObjectIdentity, key As %String) As %String
{
}

/// Serialize() constructs a serialized form of the collection as a string
Method Serialize(force As %Integer = 0) As %String(MAXLEN="")
{
}

}
