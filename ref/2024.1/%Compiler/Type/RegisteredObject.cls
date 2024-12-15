/// Property superclass for registered object values, for internal use only
Class %Compiler.Type.RegisteredObject Extends %Compiler.Type.Literal [ NoContext, System = 1 ]
{

Method Get() As %RawString [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Returns an oref, performing swizzling if necessary
/// it returns "" ($$$NULLOREF) if there is no oref and the id=""
Method GetSwizzled() As %RegisteredObject [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// Creates a new object for the referenced property
Method NewObject() As %ObjectHandle [ CodeMode = generator, GenerateAfter = Set, ServerOnly = 1 ]
{
}

/// Set the property to an oref value
/// if the new oref is different from an old oref, the old object
/// is closed
Method Set(newvalue As %RawString) As %Status [ CodeMode = generator, GenerateAfter = Get, ServerOnly = 1 ]
{
}

}
