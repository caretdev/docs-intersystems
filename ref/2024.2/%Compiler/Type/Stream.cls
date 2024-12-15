/// This is the property class for properties whose type class is a stream.
Class %Compiler.Type.Stream Extends %Compiler.Type.Object [ NoContext, System = 2 ]
{

/// This is the storage type of the stream - GLOBAL or OTHER.
Parameter STORAGE As STRING [ Constraint = ",GLOBAL,OTHER", Flags = ENUM ];

/// If STORAGE is "GLOBAL", this is the global node reference where the stream data is stored.
/// For file streams this is the directory where the files are stored
Parameter LOCATION;

/// XML element content "MIXED" for mixed="true" and "STRING" or "ESCAPE" for mixed="false".
/// If CONTENT="STRING" (default) XML special characters are put in a CDATA section during XML export.
/// If CONTENT="ESCAPE" XML special characters are escaped during XML export.
/// If CONTENT="ESCAPE-C14N" XML special characters are escaped during XML export using
/// the translate table, XMLC, specified for XML Canonicalizaton.
/// The main difference is that CR is escaped as &amp;#13;
Parameter CONTENT [ Constraint = "MIXED,STRING,ESCAPE,ESCAPE-C14N", Flags = ENUM ];

/// Controls the translate table used to escape content when CONTENT="MIXED" is specified.
Parameter ESCAPE [ Constraint = "HTML,XML", Flags = ENUM ] = "XML";

/// Encoding to be used for XML serialization of a binary stream.
Parameter ENCODING [ Constraint = "base64,hex", Flags = ENUM ] = "base64";

/// If MTOM is true, then the property that references this binary stream is available for optimization
/// when using SOAP MTOM (Message Transmission Optimization Mechanism).
/// The default for binary streams is true.
Parameter MTOM As BOOLEAN = 1;

/// returns an oref, performing swizzling if necessary it returns "" ($$$NULLOREF) if there is no oref and the id=""
/// If <var>noswizzle</var> is passed as true then this will just return the current value for the property, so if it
/// has been swizzled already then it will return the oref, if it has not been swizzled it will return "" ($$$NULLOREF).
Method GetSwizzled(noswizzle As %Boolean = 0) As %RegisteredObject [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// This method obtains the state/id of the referenced object if swizzling has not occurred, it simply returns the stored
/// state else it references the specified object force = an optional parameter, if its value is 1 then if the
/// referenced object is an ID object it must return its ID, which may force it to file itself. No code for this method if
/// the property is a datatype.
Method GetObject(force As %Integer = 0) As %ObjectIdentity [ CodeMode = generator, ServerOnly = 1 ]
{
}

Method NewObject(type As %RawString = "") As %ObjectHandle [ CodeMode = generator, ServerOnly = 1 ]
{
}

Method Set(newvalue As %RawString) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// This method is used when loading an object for a sharded class and getting the stream from the shard-local class
/// We need to perform a type of clone from the stream selected from SQL for the shard-local class and be able to use it in the sharded class
Method SetFromShardStream(newvalue As %RawString) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

ClassMethod Delete(streamvalue) As %Status [ CodeMode = generator, ServerOnly = 1 ]
{
}

ClassMethod Open(streamvalue) As %RegisteredObject [ CodeMode = generator, ServerOnly = 1 ]
{
}

/// &lt;Prop&gt;Oid takes the stored value of a stream reference and returns an externalized stream oid that may be passed to ##class(%Stream.Object).Open().
ClassMethod Oid(streamvalue, external = "") As %ObjectIdentity [ CodeMode = generator, Internal, ServerOnly = 1 ]
{
}

}
