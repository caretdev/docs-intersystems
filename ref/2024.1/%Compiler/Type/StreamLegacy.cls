Class %Compiler.Type.StreamLegacy Extends %Compiler.Type.Stream [ System = 2 ]
{

/// A logical value determines if classnames of referenced properties are stored.
/// 0 - store only the ID;
/// 1 - store the two element form of the OID
/// 2 - store the three element form of the OID (applies only to streams currently)
Parameter CLASSNAME As INTEGER [ Constraint = "0,1,2", Flags = ENUM ] = 1;

Method Set(newvalue As %RawString) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

}
