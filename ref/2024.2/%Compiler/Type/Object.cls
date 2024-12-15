/// Property superclass for object values, for internal use only
Class %Compiler.Type.Object Extends %Compiler.Type.Literal [ NoContext, System = 1 ]
{

/// A logical value determines if classnames of referenced properties are stored.
/// 0 - store only the ID;
/// 1 - store the two element form of the OID
/// 2 - store the three element form of the OID (applies only to streams currently)
Parameter CLASSNAME As INTEGER [ Constraint = "0,1,2", Flags = ENUM ] = 0;

/// Returns an oref, performing swizzling if necessary
/// it returns "" ($$$NULLOREF) if there is no oref and the id=""
Method Get() As %RawString [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Returns an oref, performing swizzling if necessary it returns "" ($$$NULLOREF) if there is no oref and the id="".
/// If <var>noswizzle</var> is passed as true then this will just return the current value for the property, so if it
/// has been swizzled already then it will return the oref, if it has not been swizzled it will return "" ($$$NULLOREF).
Method GetSwizzled(noswizzle As %Boolean = 0) As %RegisteredObject [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Obtains the state/id of the referenced object
/// if swizzling has not occurred, it simply returns the stored
/// state else it references the specified object
/// force = an optional parameter, if its value is 1 then if the
/// referenced object is an ID object it must return its ID,
/// which may force it to file itself.
/// no code for this method if the property is a datatype
Method GetObject(force As %Integer = 0) As %ObjectIdentity [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Stores simply calls GetObject() with decomposes Oid into Id
Method GetObjectId(force As %Integer = 0) As %String [ CodeMode = generator, GenerateAfter = GetObject, ServerOnly = 0 ]
{
}

/// Can be used to test whether an embedded object is in
/// NULL state exists for embedded object only, not for persistent objects
Method IsEmpty() As %Integer [ CodeMode = generator, GenerateAfter = GetObject, ServerOnly = 1 ]
{
}

/// Creates a new object for the referenced property
Method NewObject() As %ObjectHandle [ CodeMode = generator, GenerateAfter = Set, ServerOnly = 1 ]
{
}

/// Set the property to an oref value
/// if the new oref is different from an old oref, the old object
/// is closed
Method Set(newvalue As %RawString) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Stores a new value for the OID of the referenced
/// object. if swizzling has not occurred, it simply stores the
/// OID (after perhaps stripping the class name if CLASSNAME=0).
/// if swizzling has occurred, then it references the object to
/// obtain its OID.  If it is the same, then nothing happens.
/// If they are different then the old object is closed and the
/// new OID is stored.
Method SetObject(newvalue As %ObjectIdentity) As %Status [ CodeMode = generator, ServerOnly = 0 ]
{
}

/// Stores simply calls SetObject() with constructed Oid
Method SetObjectId(newid As %String) As %Status [ CodeMode = generator, GenerateAfter = SetObject, ServerOnly = 0 ]
{
}

/// Unswizzles a property, if it has an oref
Method UnSwizzle(force As %Integer = 0) As %Status [ CodeMode = generator, Private, ServerOnly = 1 ]
{
}

}
