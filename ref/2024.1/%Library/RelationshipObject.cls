/// <p><b>For information on this class</b>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=CLASSES+%25Library.RelationshipObject">Defining and Using Relationships</a>.</p>
/// Registered relationship class for relationship cardinalities many and children.
///
/// Instances of this class are used by n-cardinality relationships to manage objects
/// currently related to the container object and also to manage the objects whose
/// relationship with the container object has been removed. Related objects are loaded
/// into this object using a query-like interface that is implemented by the inverse
/// relationship. The order in which related objects are loaded is neither guaranteed or
/// maintained as objects are related or unrelated.
///
/// This class is used internally by InterSystems IRIS. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this class.
Class %Library.RelationshipObject Extends (%SerialObject, %Collection.AbstractIterator) [ Inheritance = right, StorageStrategy = Custom, System = 2 ]
{

Parameter CARDINALITY;

/// This parameter determines how the collection object stores OID values.
/// If this parameter is set to 0, then partially-formed OID values (containing only an ID number)
/// are used. If this parameter is set to 1, then fully-formed OID values (containing both a class
/// name and an ID number) are used.
Parameter CLASSNAMEINOID = 0;

/// The type (class name) of the elements stored in the collection.
Parameter ELEMENTTYPE = "%ObjectHandle";

Parameter INVERSEPROPERTY;

Parameter PERSISTENT = 0;

Parameter INVERSEPERSISTENT = 0;

Property InverseReference As %RawString;

/// <var>Oref</var> is a private property used to hold the
/// related object references in the form i%Oref(key)=oref.
Property Oref As %RawString [ MultiDimensional, Private ];

/// Private property used to hold some relationship data
Property RelationshipData [ MultiDimensional, Private ];

/// The type (class name) of the elements stored in the collection.
Property ElementType As %RawString [ InitialExpression = {..#ELEMENTTYPE} ];

/// Private storage area used to hold OREF values for objects no longer related to the container object.
Property Disconnected As %RawString [ MultiDimensional, Private ];

/// The property name of the inverse relationship in the related class.
Property Cardinality As %RawString [ InitialExpression = {..#CARDINALITY} ];

/// TRUE if the ElementType class is a persistent class.
Property InversePersistent As %RawString [ InitialExpression = {..#PERSISTENT} ];

/// The property name of the inverse relationship in the related class.
Property InverseProperty As %RawString [ InitialExpression = {..#INVERSEPROPERTY} ];

/// TRUE if related objects have not been retrieved by calling Load().
Property NotLoaded As %Boolean [ InitialExpression = 1, Transient ];

/// TRUE if the container class is a persistent class.
Property Persistent As %RawString [ InitialExpression = {..#PERSISTENT} ];

/// %New callback - initializes ElementType, Cardinality, InverseProperty and InverseReference from <var>initvalue</var> parameter.
Method %OnNew(initvalue As %String = "") As %Status [ Private ]
{
}

Method %OnClose() As %Status [ Private ]
{
}

Method %SetSerial(initvalue As %String) As %Status [ Private ]
{
}

Method %GetSerial(force As %Integer = 0) As %String [ CodeMode = expression, Private ]
{
}

/// Overrides %SerialObject implementation. Scans objects for modifications in the related list (Element)
/// and the terminated relationship list (DeleteOref). Modified/Scheduled to delete objects are added to
/// the save graph.
Method %AddToSaveSet(force As %Integer = 0, refresh As %Integer = 0) As %Status
{
}

/// This method is called by <METHOD>%TRollBack^%occTransaction</METHOD> when a transaction is rolled back.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method %RollBack() As %Status [ ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// 		This method retrieves all of the serial values for referenced objects and places them into the instance variables
/// 		and then validates, normalizes, and serializes the object (with a save of the persistent image if persistent).
Method %SerializeObject(ByRef serial As %Binary, partial As %Integer = 0) As %Status
{
}

Method %OnConstructClone(oref As %RegisteredObject, deep As %Boolean = 0, ByRef cloned As %String) As %Status [ Private ]
{
}

/// Clears the contents of the array. Both the OID and OREF values are cleared.
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method Clear() As %Status
{
}

/// Returns the number of elements contained in the Relationship.
Method Count() As %Integer
{
}

/// Starting from, but not including, position <var>key</var>, <b>FindObject</b> finds
/// the next element in the list whose ID value equals the id from <var>oid</var> ($$$oidPrimary is the id).
/// If <var>key</var> is a null string, <b>FindObject</b> starts at the beginning
/// of the list.
///
/// <p><b>FindObject</b> returns the position of the found element or
/// null string ("") if no element was found.
Method FindObject(oid As %ObjectIdentity, key As %String) As %String [ CodeMode = expression, Final ]
{
}

/// Starting from, but not including, position <var>key</var>, <b>FindObjectId</b> finds
/// the next element in the list whose ID value equals <var>id</var>.
/// If <var>key</var> is a null string, <b>FindObjectId</b> starts at the beginning
/// of the list.
///
/// <p><b>FindObjectId</b> returns the position of the found element or
/// null string ("") if no element was found.
Method FindObjectId(id As %String, key As %String = "") As %String
{
}

/// Starting from, but not including, location <var>key</var>,
/// finds the next element in the array whose Oref value equals <var>oref</var>.
/// <p>If key is a null string (""), the search starts at the beginning of the array.
/// <p><b>FindOref</b> returns the key associated with the found element or null string ("") if no element is found.
///
/// Unswizzled references are compared to oref.%Oid() and if equal, swizzling will occur.
Method FindOref(oref As %ObjectHandle, key As %String = "", id As %String) As %String
{
}

/// Finds and returns the OREF value referring to the object at position
/// <var>key</var> in the list.
///
/// <p><b>GetAt</b> returns the value of the element at location <var>key</var>
/// or null string ("") if no element is found.
Method GetAt(key As %String) As %ObjectHandle
{
}

/// Finds and returns the OREF value referring to the object at the position after <var>key</var>
/// in the list. If <var>key</var> is a null string (""), it returns
/// the OREF value of the first element in the list.
///
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the position
/// value of the returned element or null string ("") if <var>key</var>
/// is at the end of the list.
Method GetNext(ByRef key As %String) As %ObjectHandle
{
}

/// Finds and returns the OID value referring to the object at position
/// <var>key</var> in the list.
///
/// <p>Returns the value of the element at location <var>key</var>
/// or the null OID if no element is found.
Method GetObjectAt(key As %String = "", force As %Integer = 0) As %ObjectIdentity
{
}

/// Finds and returns the ID value of the element associated with <var>key</var>.
/// <p><b>GetObjectIdAt</b> returns the ID value of the element associated with <var>key</var>
/// or null string ("") if no element is found.
Method GetObjectIdAt(key As %String = "", force As %Integer = 0) As %String [ CodeMode = expression ]
{
}

/// Finds and returns the OID value referring to the object at the position after <var>key</var>
/// in the list. If <var>key</var> is a null string (""), it returns
/// the OID value of the first element in the list.
///
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the position
/// value of the returned element or the null OID if <var>key</var> is at the end of the list.
Method GetObjectNext(ByRef key As %String = "") As %ObjectIdentity
{
}

/// Finds and returns the ID value of the element at the location after <var>key</var>
/// in the array. If <var>key</var> is a null string (""), it returns
/// the ID value of the first element in the array.
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the key
/// value of the returned element or null string ("") if <var>key</var> is at the end of the array.
Method GetObjectIdNext(ByRef key As %String) As %String [ CodeMode = expression ]
{
}

/// Finds and returns the OID value referring to the object at the position before <var>key</var>
/// in the list. If <var>key</var> is a null string (""), it returns
/// the OID value of the last element in the list.
///
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the position
/// value of the returned element or the null OID if <var>key</var> is at the beginning of the list.
Method GetObjectPrevious(ByRef key As %String) As %ObjectIdentity
{
}

/// Finds and returns the ID value of the element at the location before <var>key</var>
/// in the array. If <var>key</var> is a null string (""), it returns
/// the ID value of the last element in the array.
///
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the key
/// value of the returned element or null string ("") if <var>key</var> is at the beginning of the array.
Method GetObjectIdPrevious(ByRef key As %String) As %String [ CodeMode = expression ]
{
}

/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this method.
///
/// <p>Finds and returns the OREF at position <var>key</var> in the list without
/// automatically swizzling the object. Returns $$$NULLOREF if no element is found or if
/// the referenced object hasn't been swizzled.</p>
Method GetOrefAt(key As %String, force As %Integer = 0) As %ObjectHandle [ CodeMode = expression, Final ]
{
}

/// Finds and returns the OREF value referring to the object at the position before <var>key</var>
/// in the list. If <var>key</var> is a null string (""), it returns
/// the OREF value of the last element in the list.
///
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the position
/// value of the returned element or the null OREF if <var>key</var> is at the beginning of the list.
Method GetPrevious(ByRef key As %String) As %ObjectHandle
{
}

/// Returns true (1) if a value is defined at location <var>key</var>,
/// otherwise false (0).
Method IsDefined(key As %String) As %Boolean [ Final ]
{
}

/// Retrieves a list of all objects related to InverseReference and inserts them into array
/// of related objects.
Method Load() As %Status
{
}

/// Returns true if this collection is empty.
/// To get better performance, if the contents of the collection are not already loaded, then this will run a minimal query
/// to determine if the collection is empty, and will not actually load the contents.
Method IsEmpty() As %Boolean
{
}

/// Finds and returns the key value of the element at the location following <var>key</var> in the array.
/// If key is a null string (""), then <b>Next</b> returns the key value for the first element in the array.
Method Next(key As %String = "") As %String [ Final ]
{
}

/// Finds and returns the key value of the element at the location preceding <var>key</var> in the array.
/// If key is a null string (""), then <b>Previous</b> returns the key value for the last element in the array.
Method Previous(key As %String = "") As %String [ Final ]
{
}

/// Inserts an element with OREF value <var>oref</var> at the end of the array.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method Insert(oref As %ObjectHandle) As %Status
{
}

/// Inserts an element with OID value <var>oid</var> at the end of the array.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method InsertObject(oid As %ObjectIdentity) As %Status
{
}

/// Inserts an element with ID value <var>id</var> at the end of the array.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method InsertObjectId(id As %String) As %Status [ CodeMode = expression, Final ]
{
}

/// Removes the element at position <var>key</var> in the array.
///
/// <p><b>RemoveAt</b> returns the OID value of the removed element or the null OID
/// if no element was removed.
Method RemoveAt(key As %String) As %ObjectIdentity
{
}

/// Removes the element whose oref is <var>oref</var>.
///
/// <p><b>Remove</b> returns the OID value of the removed element or the null OID
/// if no element was removed.
Method Remove(oref As %ObjectHandle) As %ObjectIdentity
{
}

/// Removes the element whose OID is <var>oid</var>.
///
/// <p><b>RemoveAt</b> returns the OID value of the removed element or then null OID
/// if no element was removed.
Method RemoveObject(oid As %ObjectIdentity) As %ObjectIdentity
{
}

/// Method for <b>INTERNAL USE ONLY</b>, not for public use.
/// <p>Sets the OREF value of the element associated with <var>key</var> to <var>oref</var>.
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method SetAt(oref As %ObjectHandle, key As %String) As %Status [ Internal ]
{
}

/// Method for<b>INTERNAL USE ONLY</b>, not for public use.
/// <p>Sets the OID value of the element associated with <var>key</var> to <var>oid</var>.
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method SetObjectAt(oid As %ObjectIdentity, key As %String) As %Status [ Internal ]
{
}

/// Unswizzles (removes from memory) the individual element at position <var>key</var> in the list.
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method %UnSwizzleAt(key As %String, force As %Integer = 0) As %Status
{
}

/// Inserts an element with OREF value <var>oref</var> at the end of the list.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
///
/// This method should not be invoked directly. It is invoked by the inverse relationship.
Method Relate(oref As %ObjectHandle) As %Status
{
}

/// Moves an element with OREF value <var>oref</var> from the array of related objects to the
/// list of terminated relationships.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
///
/// This method should not be invoked directly. It is invoked by the inverse relationship.
Method UnRelate(oref As %ObjectHandle) As %Status
{
}

/// Like FindObjectId but is private, and will not trigger a Load()
Method FindExistingObjectId(id As %String, key As %String = "") As %String [ Private ]
{
}

/// Like FindOref but doesn't support key starting point, is private, and will not trigger a Load()
Method FindExistingOref(oref As %ObjectHandle) As %String [ Private ]
{
}

/// Finds and returns the OID value referring to the object at position
/// <var>key</var> in the list.
///
/// <p>Returns the value of the element at location <var>key</var>
/// or the null OID if no element is found.
Method GetExistingObjectAt(key As %String, force As %Integer = 0) As %ObjectIdentity
{
}

/// Finds and returns the OID value referring to the object at the position after <var>key</var>
/// in the list. If <var>key</var> is a null string (""), it returns
/// the OID value of the first element in the list.
///
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the position
/// value of the returned element or the null OID if <var>key</var> is at the end of the list.
Method GetExistingObjectNext(ByRef key As %String) As %ObjectIdentity
{
}

}
