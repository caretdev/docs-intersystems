/// <p><b>For information on this class</b>, see
/// <a target="_top" href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25Stream.GlobalCharacter">Working with Streams</a>.</p>
/// Stream class that stores character data in global nodes.
Class %Stream.GlobalCharacter Extends TmpCharacter [ System = 2 ]
{

Parameter COMPRESS = 1;

Method %OnNew(initval As %String = "") As %Status [ Private ]
{
}

Method %LoadData(id As %String) As %Status [ Private ]
{
}

Method %SaveData(ByRef sid As %String) As %Status [ Private ]
{
}

ClassMethod %DeleteData(streamvalue As %String, concurrency As %Integer) As %Status [ Private ]
{
}

/// Setup the TempGbl location of where we will write the temp stream to
Method SetupTmpGbl() [ Private ]
{
}

Method CopyFromAndSave(source As %Stream.Object) As %Status
{
}

/// Return the size of the stream pointed to by soid
ClassMethod %ObjectSizeInternal(soid As %ObjectIdentity) As %Integer [ Private ]
{
}

ClassMethod %LOBPrefetchInternal(soid As %ObjectIdentity, prefetchsize As %Integer, ByRef data As %String) As %Integer [ Private ]
{
}

}
