/// <p><b>For information on this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Library.ArrayOfObjects">Working with Collections</a>.</p>
/// The <CLASS>%ArrayOfObjects</CLASS> class represents an array of references to objects,
/// each of which is associated with a unique key value. Keys can have any value,
/// string or numeric. The objects referred to must be registered.
/// They can be either persistent objects or non-id objects.
///
/// <p>Internally, an <CLASS>%ArrayOfObjects</CLASS> object contains two arrays: one for holding
/// the OID values for the objects referred to (or their serialized state in the
/// case of an array of non-id objects); and another for holding the OREF values
/// for any objects that have been explicitly referred to, and hence "swizzled"
/// into memory. Swizzling (loading an object into memory and generating an OREF
/// value for it) happens automatically whenever the user refers to an object within the array.
///
/// <p>For example, if array is an <CLASS>%ArrayOfObjects</CLASS> object containing an array of
/// <b>Doctor</b> objects (that is an array of OID values for Doctor objects stored
/// in the database) then the following code fragment will automatically load the
/// <b>Doctor</b> object associated with the key "Primary" into memory and generate
/// an OREF value referring to the in-memory version of the <b>Doctor</b> object.
/// This OREF value can then be used to access the properties and methods of the <b>Doctor</b> object:
///
/// <EXAMPLE>
/// Set doc=array.GetAt("Primary")
/// Write doc.Name
/// </EXAMPLE>
///
/// <p>Alternatively, we could use cascading dot syntax:
/// <EXAMPLE>
/// Set name=array.GetAt("Primary").Name
/// </EXAMPLE>
///
/// <p>When the <CLASS>%ArrayOfObjects</CLASS> object is closed (removed from memory),
/// it will close (call <B>%Close</B> on) all
/// of the references it has swizzled into memory.
/// These classes can be used 'standalone' to store a collection.
Class %Library.ArrayOfObjects Extends (%Collection.AbstractArrayOfObj, %SerialObject) [ ClassType = serial, OdbcType = VARCHAR, StorageStrategy = Custom, System = 2 ]
{

/// This parameter determines how the collection object stores OID values.
/// If this parameter is set to 0, then partially-formed OID values, containing only an ID number,
/// are used. If this parameter is set to 1, then fully-formed OID values, containing both a class
/// name and an ID number, are used.
Parameter CLASSNAMEINOID = 0;

/// The type (class name) of the elements stored in the collection.
Parameter ELEMENTTYPE = "%RegisteredObject";

/// Private storage area used to hold OREF values.
Property Oref As %String [ MultiDimensional ];

/// The type (class name) of the elements stored in the collection.
Property ElementType As %String(MAXLEN = 256) [ InitialExpression = {..#ELEMENTTYPE} ];

/// <var>Data</var> is a private property used to hold the
/// contents of the array.
Property Data As %String [ MultiDimensional ];

/// Returns the number of elements contained in the array.
Method Count() As %Integer [ ProcedureBlock = 1 ]
{
}

/// Returns true (1) if a value is defined at location <var>key</var>,
/// otherwise false (0).
Method IsDefined(key As %String) As %Boolean [ CodeMode = expression, Final ]
{
}

/// <b>This method is deprecated.</b>
/// <p>Please use <METHOD>IsDefined</METHOD> instead.
Method Define(key As %String) As %Boolean [ CodeMode = expression, Deprecated, Final ]
{
}

/// Finds and returns the key value of the element at the location following <var>key</var> in the array.
/// If key is a null string (""), then <b>Next</b> returns the key value for the first element in the array.
Method Next(key As %String = "") As %String [ CodeMode = expression, Final ]
{
}

/// Finds and returns the key value of the element at the location preceding <var>key</var> in the array.
/// If key is a null string (""), then <METHOD>Next</METHOD> returns the key value for the last element in the array.
Method Previous(key As %String = "") As %String [ CodeMode = expression, Final ]
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

/// Starting from, but not including, location <var>key</var>,
/// finds the next element in the array whose OID value equals <var>element</var>.
/// <p>If key is a null string (""), the search starts at the beginning of the array.
/// <p><b>Find</b> returns the key associated with the found element or null string ("") if no element is found.
Method Find(element As %ObjectIdentity, key As %String) As %String [ CodeMode = generator ]
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

/// Finds and returns the OREF value of the element associated with <var>key</var>.
/// <p><b>GetAt</b> returns the OREF value of the element associated with <var>key</var>
/// or null string ("") if no element is found.
Method GetAt(key As %String) As %RegisteredObject
{
}

/// Finds and returns the OID value of the element associated with <var>key</var>.
/// <p><b>GetObjectAt</b> returns the OID value of the element associated with <var>key</var>
/// or null string ("") if no element is found.
Method GetObjectAt(key As %String, force As %Integer = 0) As %ObjectIdentity
{
}

/// Finds and returns the ID value of the element associated with <var>key</var>.
/// <p><b>GetObjectIdAt</b> returns the ID value of the element associated with <var>key</var>
/// or null string ("") if no element is found.
Method GetObjectIdAt(key As %String, force As %Integer = 0) As %String [ CodeMode = expression ]
{
}

/// Finds and returns the OREF value of the element at the location after <var>key</var>
/// in the array. If <var>key</var> is a null string (""), it returns
/// the OREF value of the first element in the array.
///
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the key
/// value of the returned element or null string ("") if <var>key</var> is at the end of the array.
Method GetNext(ByRef key As %String) As %RegisteredObject
{
}

/// Finds and returns the OID value of the element at the location after <var>key</var>
/// in the array. If <var>key</var> is a null string (""), it returns
/// the OID value of the first element in the array.
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the key
/// value of the returned element or null string ("") if <var>key</var> is at the end of the array.
Method GetObjectNext(ByRef key As %String) As %ObjectIdentity
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

/// Finds and returns the OREF value of the element at the location before <var>key</var>
/// in the array. If <var>key</var> is a null string (""), it returns
/// the OREF value of the last element in the array.
///
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the key
/// value of the returned element or null string ("") if <var>key</var> is at the beginning of the array.
Method GetPrevious(ByRef key As %String) As %RegisteredObject
{
}

/// Finds and returns the OID value of the element at the location before <var>key</var>
/// in the array. If <var>key</var> is a null string (""), it returns
/// the OID value of the last element in the array.
///
/// <p>The value of <var>key</var>, which is passed by reference, is updated to the key
/// value of the returned element or null string ("") if <var>key</var> is at the beginning of the array.
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

/// Removes the element associated with <var>key</var> in the array.
///
/// <p><b>RemoveAt</b> returns the OID value of the removed element or null string ("")
/// if no element was removed. It also has a <var>success</var> output argument that
/// returns true if the item was removed and false if it was not.
Method RemoveAt(key As %String, Output success As %Boolean) As %ObjectIdentity
{
}

/// Sets the OREF value of the element associated with <var>key</var> to <var>element</var>.
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method SetAt(oref As %RegisteredObject, key As %String) As %Status
{
}

/// Sets the OID value of the element associated with <var>key</var> to <var>element</var>.
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method SetObjectAt(oid As %ObjectIdentity, key As %String) As %Status
{
}

/// Sets the ID value of the element associated with <var>key</var> to <var>element</var>.
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method SetObjectIdAt(id As %String, key As %String) As %Status [ CodeMode = expression ]
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

/// Unswizzles (removes from memory) the element associated with <var>key</var> in the array.
/// <p>Returns a <CLASS>%Status</CLASS> value indicating success or failure.
Method %UnSwizzleAt(key As %String, force As %Integer = 0) As %Status [ ProcedureBlock = 1 ]
{
}

Method %GetSerial(force As %Integer = 0) As %String [ CodeMode = generator, Private ]
{
}

Method %SetSerial(serialized As %String) As %Status [ Private ]
{
}

Method %OnConstructClone(oref As %RegisteredObject, deep As %Boolean = 0, ByRef cloned As %String) As %Status [ Private, ProcedureBlock = 1 ]
{
}

Method %OnNew(initvalue As %String) As %Status [ Private ]
{
}

}
