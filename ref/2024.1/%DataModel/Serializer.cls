/// Likely this will need to be an AET populated with property values that are AE's that wrap
/// Registered counterparts.
Class %DataModel.Serializer [ Abstract ]
{

/// Immutable universal wrapper for populating an instance of a
/// registered object via a JSON representation of its data.
/// This method calls %FromJSONValue(), which may be overridden, to
/// perform the actual business of JSON parsing and object population
ClassMethod fromJson(str) As %RegisteredObject
{
}

/// This is an internal class that implements utilities used by the $project methods. These
/// utility methods are implemented here but represent %ToObject and %FromObject
/// implementations for various system classes, including collection classes, %ZEN.proxyObject,
/// and so on.
/// <br>
/// The top level composition methods accept a target instance and that instance will be populated
/// by the projectrs. These methods are all named <var>project</var>Something.
/// <br>
/// The lower level methods map an instance of something to an instance of something else. The
/// method is specific for each category of from object and to object. For example, to map a Cache
/// Object to an Array, the method is named <method>mapCacheObjectToArray</method>. The various
/// map methods accept a target and if target is null then it is populated with the <var>To</var>
/// object type.
/// <br>
ClassMethod projectArrayFromCollection(target, source, laxMode As %Integer = 1)
{
}

ClassMethod projectArrayFromRegistered(target, source, laxMode As %Integer = 1)
{
}

/// This is the top level of composition - a top level object requested to be projectd from a source
/// instance. Construct the AET.</Description>
ClassMethod projectObjectFromCollection(target, source, laxMode As %Integer = 1)
{
}

ClassMethod projectCollectionFromCollection(target, source, laxMode As %Integer = 1)
{
}

/// This is the top level of composition - a top level object requested to be projectd from a source
/// instance. Construct the AET.</Description>
ClassMethod projectObjectFromRegistered(target, source, laxMode As %Integer = 1)
{
}

/// target is an instance of the RegisteredObject class, source is a DAO
ClassMethod projectRegisteredFromAbstractObject(target, source, laxMode As %Integer = 1)
{
}

ClassMethod projectZPOFromAbstractObject(target, source, laxMode As %Integer = 1)
{
}

ClassMethod projectRegisteredFromRegistered(target, source, laxMode As %Integer = 1)
{
}

ClassMethod projectCollectionFromAbstractObject(target, source, laxMode As %Integer = 1)
{
}

ClassMethod projectListFromDao(target, source, laxMode As %Integer = 1)
{
}

ClassMethod projectListFromRegistered(target, source, laxMode As %Integer = 1)
{
}

/// This mapper accepts any object (oref) and returns an %AbstractObject. This is just a dispatcher that invokes the most reasonable mapper depending on the
/// type information gathered from the source object. </Description>
ClassMethod mapGenericObjectToAbstractObject(source As %RawString, target As %Library.DynamicAbstractObject = "", laxMode As %Integer = 1, asReference As %Integer = 1, nested As %Integer = 0) As %Library.DynamicAbstractObject
{
}

ClassMethod mapRegisteredToObject(source As %Library.RegisteredObject, target As %Library.DynamicObject = "", laxMode As %Integer = 1) As %Library.DynamicObject
{
}

ClassMethod mapPersistentToObject(source As %Library.SerialObject, target As %Library.DynamicObject = "", laxMode As %Integer = 1, asReference As %Integer = 1, nested As %Integer = 0) As %Library.DynamicObject
{
}

ClassMethod mapOIDToObject(className As %RawString = "", propertyName As %RawString = "", typeClass As %RawString = "", oid As %RawString = "", target As %Library.DynamicObject = "") As %Library.DynamicObject
{
}

ClassMethod mapSerialToObject(source As %Library.SerialObject, target As %Library.DynamicObject = "", laxMode As %Integer = 1) As %Library.DynamicObject
{
}

/// This is a generic collection dispatcher - Cache Objects collection type is either list or array</Description>
ClassMethod mapCollectionToObject(source As %Collection.AbstractIterator, target As %Library.DynamicObject = "", laxMode As %Integer = 1) As %Library.DynamicObject
{
}

ClassMethod mapListCollectionToObject(source As %Collection.AbstractList, target As %Library.DynamicObject = "", laxMode As %Integer = 1) As %Library.DynamicObject
{
}

ClassMethod mapArrayCollectionToObject(source As %Collection.AbstractArray, target As %Library.DynamicObject = "", laxMode As %Integer = 1) As %Library.DynamicObject
{
}

ClassMethod mapStreamToObject(source As %Library.SerialObject, target As %Library.DynamicObject = "", laxMode As %Integer = 1) As %Library.DynamicObject
{
}

ClassMethod mapZPOToObject(source As %ZEN.proxyObject, target As %Library.DynamicObject = "", laxMode As %Integer = 1) As %Library.DynamicObject [ Internal ]
{
}

/// This is a generic collection dispatcher - Cache Objects collection type is either list or array
ClassMethod mapCollectionToArray(source As %Collection.AbstractIterator, target As %Library.DynamicArray = "", laxMode As %Integer = 1) As %Library.DynamicArray
{
}

ClassMethod mapListCollectionToArray(source As %Collection.AbstractList, target As %Library.DynamicArray = "", laxMode As %Integer = 1) As %Library.DynamicArray
{
}

ClassMethod mapListCollectionToRegistered(source As %Collection.AbstractList, target As %Library.DynamicArray = "", laxMode As %Integer = 1) As %Library.RegisteredObject
{
}

ClassMethod mapArrayCollectionToArray(source As %Collection.AbstractArray, target As %Library.DynamicArray = "", laxMode As %Integer = 1) As %Library.DynamicArray
{
}

ClassMethod mapArrayCollectionToRegistered(source As %Collection.AbstractList, target As %Library.DynamicArray = "", laxMode As %Integer = 1) As %Library.RegisteredObject
{
}

ClassMethod mapPersistentToArray(source As %Library.RegisteredObject, target As %Library.RegisteredObject = "", laxMode As %Integer = 1, asReference As %Integer = 1) As %Library.RegisteredObject
{
}

ClassMethod mapRegisteredToArray(source As %Library.RegisteredObject, target As %Library.RegisteredObject = "", laxMode As %Integer = 1, asReference As %Integer = 1) As %Library.RegisteredObject
{
}

/// An N-Cardinality relationship has an interface consistent with a Cache Array Collection but there are differences. This mapper function
ClassMethod mapRelationshipToArray(source As %Collection.AbstractList, target As %Library.DynamicArray = "", laxMode As %Integer = 1) As %Library.DynamicArray
{
}

ClassMethod mapStreamToArray(source As %Library.SerialObject, target As %Library.DynamicObject = "", laxMode As %Integer = 1) As %Library.DynamicArray
{
}

ClassMethod mapZPOToArray(source As %ZEN.proxyObject, target As %Library.DynamicObject = "", laxMode As %Integer = 1) As %Library.DynamicArray [ Internal ]
{
}

ClassMethod mapObjectToRegistered(source As %Library.DynamicObject, target As %Library.RegisteredObject = "", laxMode As %Integer = 1, asReference As %Integer = 1) As %Library.RegisteredObject
{
}

ClassMethod mapObjectToZPO(source As %Library.DynamicObject, target As %ZEN.proxyObject = "", laxMode As %Integer = 1) As %ZEN.proxyObject [ Internal ]
{
}

ClassMethod mapArrayToZPO(source As %Library.DynamicArray, target As %Library.ListOfDataTypes = "", laxMode As %Integer = 1) As %Library.ListOfDataTypes [ Internal ]
{
}

ClassMethod mapAbstractObjectToArrayCollection(source As %Library.DynamicArray, target As %Collection.AbstractArray = "", laxMode As %Integer = 1, asReference As %Integer = 1) As %Collection.AbstractArray
{
}

ClassMethod mapAbstractObjectToListCollection(source As %Library.DynamicArray, target As %Collection.AbstractArray = "", laxMode As %Integer = 1, asReference As %Integer = 1) As %Collection.AbstractArray
{
}

ClassMethod mapRegisteredToRegistered(source As %Library.RegisteredObject, target As %Library.RegisteredObject = "", laxMode As %Integer = 1, asReference As %Integer = 1) As %Library.RegisteredObject
{
}

ClassMethod mapStreamToRegistered(source As %Library.SerialObject, target As %Library.DynamicObject = "", laxMode As %Integer = 1) As %Library.RegisteredObject
{
}

/// Return an object containing the class name and ID of a Persistent instance</Description>
ClassMethod mapReferenceToValue(source As %Library.Persistent, target As %Library.DynamicObject = "", laxMode As %Integer = 1) As %Library.DynamicObject
{
}

ClassMethod getObjectProperties(oref As %Library.ObjectHandle = "", ByRef properties As %RawString) As %Integer [ Internal ]
{
}

ClassMethod getPropertyMetadata(class As %String(MAXLEN=""), propertyDescriptor As %String(MAXLEN=""), Output swizzleable As %Integer = 0, Output category As %String(MAXLEN="") = "", Output collectionType As %String(MAXLEN="") = "", Output multiDimensional As %Integer = 0, ByRef relationship As %Integer = 0, ByRef cardinality As %String(MAXLEN=6) = "", ByRef type As %String(MAXLEN="") = "", Output runtimeType As %String(MAXLEN="") = "", Output extGet As %Integer = 0, Output extSet As %Integer = 0) [ Internal ]
{
}

/// Returns the value of the property from the property descriptor
/// because the current value may be multidimensional and we need to pass back an array with structure</Description>
ClassMethod getValue(oref, pd, Output value) As %Integer
{
}

ClassMethod setValue(oref, pd, ByRef value) As %Integer
{
}

ClassMethod getJSONType(class) As %String
{
}

ClassMethod fromObject(source As %RegisteredObject = "", returnValue = "", laxMode As %Integer = 1) [ Internal ]
{
}

/// Default mechanism for populating an instance of this object from
/// a JSON representation of its data.</Description>
ClassMethod %FromJSONValue(str) As %RegisteredObject [ ServerOnly = 1 ]
{
}

/// Default mechanism for populating an instance of this object from
/// an instance of some other object. This method is responsible for identifying the type of the
/// source object and processing the mapping from that source to the target object. If the
/// <var>target</var> instance is not populated then this method is responsible for instantiating
/// the current class and returning that instance to the caller. ]]></Description>
ClassMethod %FromObject(source = "", target = "", laxMode As %Integer = 1) As %RegisteredObject [ ServerOnly = 1 ]
{
}

}
