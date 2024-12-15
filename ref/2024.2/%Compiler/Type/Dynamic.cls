/// Property superclass for dynamic object values, for internal use only.
Class %Compiler.Type.Dynamic Extends %Compiler.Type.Object [ NoContext, System = 1 ]
{

Parameter FORMAT As STRING [ Constraint = JSON, Flags = ENUM ] = "JSON";

Parameter CLASSNAME As INTEGER [ Constraint = 0, Final, Flags = ENUM ] = 0;

/// Returns an oref, performing swizzling if necessary
/// it returns "" ($$$NULLOREF) if there is no oref and the id=""
Method Get() As %RawString [ CodeMode = generator, ServerOnly = 1 ]
{
}

ClassMethod GetStored(id As %String) As %RawString [ CodeMode = generator, NoContext, ServerOnly = 1 ]
{
}

}
