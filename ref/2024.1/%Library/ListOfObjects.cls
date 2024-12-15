/// <p><b>For information on this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Library.ListOfObjects">Working with Collections</a>.</p>
/// The <CLASS>%ListOfObjects</CLASS> class represents a list of references to objects,
/// each of which is associated with a numeric position in the list.
/// The first element in the list is stored at position 1.
/// The objects referred to must be registered.
/// They can be either persistent objects or non-id objects.
///
/// <p>Internally, a <CLASS>%ListOfObjects</CLASS> object contains two lists:
/// one for holding the OID values for the objects referred to
/// (or their serialized state in the case of a list of non-id objects);
/// and another for holding the OREF values for any objects that have been
/// explicitly referred to, and hence "swizzled" into memory. Swizzling
/// (loading an object into memory and generating an OREF value for it)
/// happens automatically whenever the user refers to an object within the list.
/// For example, if list is an <CLASS>%ListOfObjects</CLASS> object containing a list of
/// <b>Doctor</b> objects (that is a list of OID values for <b>Doctor</b> objects stored
/// in the database) then the following code fragment will automatically load
/// the Doctor object at location 7 in the list into memory and generate an
/// OREF value referring to the in-memory version of the <b>Doctor</b> object.
/// This OREF value can then be used to access the properties and methods of the <b>Doctor</b> object:
/// <EXAMPLE>
/// Set doc=list.GetAt(7)
/// Write doc.Name
/// </EXAMPLE>
///
/// Alternatively, we could use cascading dot syntax:
/// <EXAMPLE>
/// Set name=list.GetAt(7).Name
/// </EXAMPLE>
///
/// When the <CLASS>%ListOfObjects</CLASS> object is closed (removed from memory)
/// it will close (call <B>%Close</B> on) all the references it has swizzled into memory.
/// These classes can be used 'standalone' to store a collection.
Class %Library.ListOfObjects Extends (%Collection.AbstractListOfObj, %SerialObject) [ ClassType = serial, OdbcType = VARCHAR, StorageStrategy = Custom, System = 2 ]
{

/// This parameter determines how the collection object stores OID values.
/// If this parameter is set to 0, then partially-formed OID values, containing only an ID number,
/// are used. If this parameter is set to 1, then fully-formed OID values, containing both a class
/// name and an ID number, are used.
Parameter CLASSNAMEINOID = 0;

/// The type (class name) of the elements stored in the collection.
Parameter ELEMENTTYPE = "%RegisteredObject";

/// Private storage area used to hold OREF values.
Property Oref As %RawString [ MultiDimensional ];

/// The type (class name) of the elements stored in the collection.
Property ElementType As %RawString [ InitialExpression = {..#ELEMENTTYPE} ];

/// <var>Data</var> is a private property used to hold the contents of the list.
Property Data As %RawString [ MultiDimensional ];

/// <var>Size</var> is the number of elements contained in the list.
Property Size As %Integer [ InitialExpression = 0 ];

Method SizeSet(newvalue As %Integer) As %Status [ Private ]
{
}

/// Returns the number of elements contained in the list.
Method Count() As %Integer [ CodeMode = expression, Final ]
{
}

/// Inserts a list with value <var>inslist</var> at the end of the list.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method InsertList(inslist As %RawString) As %Status
{
}

/// Inserts an element with value <var>element</var> into the list at the correct ordered
/// position. The elements in the list are shifted to accommodate the new element as necessary.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method InsertOrdered(element As %RawString) As %Status
{
}

/// Finds and returns the index value of the element at the location following <var>key</var> in the list.
/// If key is a null string (""), then <b>Next</b> returns the position of the first element in the list (1).
Method Next(key As %Integer = 0) As %Integer [ CodeMode = expression, Final ]
{
}

/// Finds and returns the index value of the element at the location preceding <var>key</var> in the list.
/// If key is a null string (""), then <b>Next</b> returns the position of the last element in the list.
Method Previous(key As %Integer = 0) As %Integer [ CodeMode = expression, Final ]
{
}

/// Constructs array(key)=value for each element in the serialval value.
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
ClassMethod BuildValueArray(serialized As %Binary, array As %Binary) As %Status
{
}

/// Clears the contents of the array. Both the OID and OREF values are cleared.
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method Clear() As %Status
{
}

/// Starting from, but not including, position <var>key</var>, <b>Find</b> finds
/// the next element in the list whose OID value equals <var>element</var>.
/// If <var>key</var> is a null string, <b>Find</b> starts at the beginning
/// of the list.
///
/// <p><b>Find</b> returns the position of the found element or
/// null string ("") if no element was found.
Method Find(element As %ObjectIdentity, key As %Integer) As %String [ CodeMode = generator ]
{
}

/// Starting from, but not including, position <var>key</var>, <b>FindObjectId</b> finds
/// the next element in the list whose ObjectId equals <var>id</var>.
/// If <var>key</var> is a null string, <b>Find</b> starts at the beginning
/// of the list.
///
/// <p><b>Find</b> returns the position of the found element or
/// null string ("") if no element was found.
Method FindObjectId(id As %String, key As %Integer) As %String
{
}

/// Finds and returns the OREF value referring to the object at position
/// <var>key</var> in the list.
///
/// <p><b>GetAt</b> returns the value of the element at location <var>key</var>
/// or null string ("") if no element is found.
Method GetAt(key As %Integer) As %RegisteredObject
{
}

/// Finds and returns the OID value referring to the object at position
/// <var>key</var> in the list.
///
/// <p>Returns the value of the element at location <var>key</var>
/// or null string ("") if no element is found.
Method GetObjectAt(key As %Integer, force As %Integer = 0) As %ObjectIdentity
{
}

/// Finds and returns the ID value referring to the object at position
/// <var>key</var> in the list.
///
/// <p>Returns the value of the element at location <var>key</var>
/// or null string ("") if no element is found.
Method GetObjectIdAt(key As %Integer, force As %Integer = 0) As %String [ CodeMode = expression, Final ]
{
}

/// Finds and returns the OREF value referring to the object at the position after <var>key</var>
/// in the list. If <var>key</var> is a null string (""), it returns
/// the OREF value of the first element in the list.
///
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the position
/// value of the returned element or null string ("") if <var>key</var>
/// is at the end of the list.
Method GetNext(ByRef key As %Integer) As %RegisteredObject
{
}

/// Finds and returns the OID value referring to the object at the position after <var>key</var>
/// in the list. If <var>key</var> is a null string (""), it returns
/// the OID value of the first element in the list.
///
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the position
/// value of the returned element or null string ("") if <var>key</var>
/// is at the end of the list.
Method GetObjectNext(ByRef key As %Integer) As %ObjectIdentity
{
}

/// Finds and returns the ID value referring to the object at the position after <var>key</var>
/// in the list. If <var>key</var> is a null string (""), it returns
/// the ID value of the first element in the list.
///
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the position
/// value of the returned element or null string ("") if <var>key</var>
/// is at the end of the list.
Method GetObjectIdNext(ByRef key As %Integer) As %String [ CodeMode = expression, Final ]
{
}

/// Finds and returns the OREF value referring to the object at the position before <var>key</var>
/// in the list. If <var>key</var> is a null string (""), it returns
/// the OREF value of the last element in the list.
///
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the position
/// value of the returned element or null string ("")
/// if <var>key</var> is at the beginning of the list.
Method GetPrevious(ByRef key As %Integer) As %RegisteredObject
{
}

/// Finds and returns the OID value referring to the object at the position before <var>key</var>
/// in the list. If <var>key</var> is a null string (""), it returns
/// the OID value of the last element in the list.
///
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the position
/// value of the returned element or null string ("")
/// if <var>key</var> is at the beginning of the list.
Method GetObjectPrevious(ByRef key As %Integer) As %ObjectIdentity
{
}

/// Finds and returns the ID value referring to the object at the position before <var>key</var>
/// in the list. If <var>key</var> is a null string (""), it returns
/// the ID value of the last element in the list.
///
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the position
/// value of the returned element or null string ("")
/// if <var>key</var> is at the beginning of the list.
Method GetObjectIdPrevious(ByRef key As %Integer) As %String [ CodeMode = expression, Final ]
{
}

/// Inserts an element with OREF value <var>oref</var> at the end of the list.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method Insert(oref As %RegisteredObject) As %Status
{
}

/// Inserts an element with OID value <var>oid</var> at the end of the list.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method InsertObject(oid As %ObjectIdentity) As %Status
{
}

/// Inserts an element with ID value <var>id</var> at the end of the list.
///
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method InsertObjectId(id As %String) As %Status [ CodeMode = expression, Final ]
{
}

/// Inserts an element with OREF value <var>oref</var> at position <var>key</var>.
///
/// <p>To make room for the new element, the elements previously at or following position
/// <var>key</var> are moved up by one position.
/// <p><var>key</var> must be in the following range:<br>
/// <p>
/// 1 &lt;= index &lt;= Count() + 1
/// <br>
/// <p>
/// Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method InsertAt(oref As %RegisteredObject, key As %Integer) As %Status
{
}

/// Inserts an element with OID value <var>oid</var> at position <var>key</var>.
///
/// <p>To make room for the new element, the elements previously at or following position
/// <var>key</var> are moved up by one position.
/// <p><var>key</var> must be in the following range:<br>
/// <p>
/// 1 &lt;= index &lt;= Count() + 1
/// <br>
/// <p>
/// Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method InsertObjectAt(oid As %ObjectIdentity, key As %Integer) As %Status
{
}

/// Inserts an element with ID value <var>id</var> at position <var>key</var>.
///
/// <p>To make room for the new element, the elements previously at or following position
/// <var>key</var> are moved up by one position.
/// <p><var>key</var> must be in the following range:<br>
/// <p>
/// 1 &lt;= index &lt;= Count() + 1
/// <br>
/// <p>
/// Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method InsertObjectIdAt(id As %String, key As %Integer) As %Status [ CodeMode = expression, Final ]
{
}

/// Removes the element at position <var>key</var> in the list.
/// The elements following position <var>key</var> are moved to fill in the resulting gap.
///
/// <p><b>RemoveAt</b> returns the OID value of the removed element or null string ("")
/// if no element was removed. It also has a <var>success</var> output argument that
/// returns true if the item was removed and false if it was not.
Method RemoveAt(key As %Integer, Output success As %Boolean) As %ObjectIdentity
{
}

/// Sets the OREF value of the element at position <var>key</var> to <var>oref</var>.
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method SetAt(oref As %RegisteredObject, key As %Integer) As %Status
{
}

/// Sets the OID value of the element at position <var>key</var> to <var>oid</var>.
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method SetObjectAt(oid As %ObjectIdentity, key As %Integer) As %Status
{
}

/// Sets the ID value of the element at position <var>key</var> to <var>id</var>.
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method SetObjectIdAt(id As %String, key As %Integer) As %Status [ CodeMode = expression, Final ]
{
}

/// Overrides %SerialObject implementation. Scans objects for modifications in the related list (Element)
/// and the terminated relationship list (DeleteOref). Modified/Scheduled to delete objects are added to
/// the save graph.
Method %AddToSaveSet(force As %Integer = 0, refresh As %Integer = 0) As %Status
{
}

Method %SerializeObject(ByRef serial As %Binary, partial As %Integer = 0) As %Status
{
}

/// Unswizzles (removes from memory) the individual element at position <var>key</var> in the list.
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method %UnSwizzleAt(key As %Integer, force As %Integer = 0) As %Status
{
}

Method %GetSerial(force As %Integer = 0) As %String [ CodeMode = generator, Private ]
{
}

Method %SetSerial(serialized As %String) As %Status [ Private ]
{
}

Method %OnConstructClone(oref As %RegisteredObject, deep As %Boolean = 0, ByRef cloned As %String) As %Status [ Private ]
{
}

Method %OnNew(initvalue As %String) As %Status [ Private ]
{
}

}
