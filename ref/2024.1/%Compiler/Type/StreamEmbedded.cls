/// Stream property class for streams that cannot be independent entities as instances of such stream
/// classes can only exist within a container object.
Class %Compiler.Type.StreamEmbedded Extends %Compiler.Type.Stream [ NoContext, System = 2 ]
{

Method NewObject(type As %RawString = "") As %ObjectHandle [ CodeMode = generator, ServerOnly = 1 ]
{
}

Method Set(newvalue As %RawString) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

ClassMethod SVAExists(pStream As %Binary = "") As %Boolean [ CodeMode = generator, ServerOnly = 1 ]
{
}

ClassMethod GetValueArray(pStream As %Binary = "", ByRef pValueArray As %Binary) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

}
