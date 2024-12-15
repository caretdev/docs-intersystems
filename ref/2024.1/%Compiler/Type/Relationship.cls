/// Object Relationship Property Class
Class %Compiler.Type.Relationship Extends %Compiler.Type.Object [ NoContext, System = 2 ]
{

/// ACCESSPOLICY defines how collection is fetched to the client application.
///
/// 	EAGER:	The whole collection is fetched no later than it is first accessed by application in any manner.
/// 				If collection contains object values then objects are opened and instantiated in application memory.
/// 				For applications using POJO mode this means that application can use this collection even if it has
/// 				been disconnected from the server afterwards. Value EAGER is a requirement, meaning that if it is
/// 				specified then EAGER policy always be employed.
///
/// 	LAZY: 	Values in collection can be fetched as they are requested by the application, e.g. when methods get()
/// 				or Iterator.next() are invoked. Value LAZY is a hint meaning that if it is specified it tells that LAZY
/// 				policy may be used for this collection but does not guarantee that it is used. In case LAZY fetching is
/// 				used collection may become invalid when application disconnected from the server.
Parameter ACCESSPOLICY As STRING [ Constraint = ",lazy,eager", Flags = ENUM ];

/// Return the oref of the object referenced by this property. If the oref isn't present then swizzle the OID to produce one and relate the objects.
/// If <var>noswizzle</var> is passed as true then this will just return the current value for the property, so if it
/// has been swizzled already then it will return the oref, if it has not been swizzled it will return "" ($$$NULLOREF).
Method GetSwizzled(noswizzle As %Boolean = 0) As %RegisteredObject [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Connect two objects in memory so that the relationship in each object has a swizzled reference
/// to its inverse relationship in the other object.
Method Relate(oref) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Unswizzles a property, if it has an oref                           |
Method UnSwizzle(force As %Integer = 0) As %Status [ CodeMode = generator, Private, ServerOnly = 1 ]
{
}

/// Terminate the relationship between two objects. For multi-valued relationships just invoke
/// its UnRelate() method.
Method UnRelate(oref) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Creates a new instance of this property's type class and returns its reference to the caller.
Method NewObject() As %ObjectHandle [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Close the query that returns a list of related objects.
ClassMethod RClose(%qHandle As %Binary) As %Status [ CodeMode = generator, PublicList = SQLCODE, ServerOnly = 1 ]
{
}

/// Instantiate a query that returns a list of objects related to <var>inverse</var>.
ClassMethod RExec(ByRef %qHandle As %Binary, inverse As %String) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Returns up to <var>FetchCount</var> number of rows (or up to 32k of data if <var>FetchCount</var>
/// is zero) in <var>RowSet</var>. <var>ReturnCount</var> indicates the number of rows returned. <var>AtEnd</var>
/// is TRUE if the query encountered an end-of-data condition while retrieving data - in other words, don't try calling
/// again.
ClassMethod RFetch(ByRef %qHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status [ CodeMode = generator, PlaceAfter = RExec, ServerOnly = 1 ]
{
}

/// Set the value of this property to <var>newvalue</var>. If this property has a current value that
/// that is not <var>newvalue</var> then %Close it, decrement its reference count and UnRelate() it. Relate()
/// the new value.
Method Set(newvalue As %String) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// This method stores a new value for the OID of the referenced object. if swizzling has not occurred,
/// it simply stores the OID (after perhaps stripping the class name if CLASSNAME=0). If swizzling has occurred,
/// then it references the object to obtain its OID.  If it is the same, then nothing happens. If they
/// are different then the old object is closed and the new OID is stored.
Method SetObject(newvalue As %ObjectIdentity) As %Status [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// This method stores simply calls SetObject() with constructed Oid      |
Method SetObjectId(newid As %String) As %Status [ CodeMode = generator, GenerateAfter = SetObject, ServerOnly = 0 ]
{
}

/// This method is generated for properties with SQLCOMPUTED = true.
/// It contains code to compute a value for the property as defined in SQLCOMPUTECODE for the SQL Filer.
ClassMethod SQLCompute() As %String [ CodeMode = generator, Internal, ProcedureBlock = 0, ServerOnly = 1 ]
{
}

ClassMethod OnDelete(id As %RawString = "", concurrency As %Integer = -1) As %Status [ CodeMode = generator, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

}
