Class %IO.FileStream Extends (%IO.DeviceStream, %IO.IParts.CharacterSeekableIO) [ Inheritance = right, System = 2 ]
{

Property LastModified As %TimeStamp [ Calculated ];

/// Flag to control whether this file is deleted automatically when the
/// file object instance is killed or goes out of scope. The default is 0,
/// and the file is NOT automatically deleted.
Property IsTemp As %Boolean;

/// Flag to control whether the stream object should maintain the <property>charposmap</property>
/// map between character positions and external byte positions when the file is opened using a
/// multibyte character encoding. This flag is ignored when the character set only contains single-bye characters.
/// The flag is initialized to 0 when a file is not opened with the READ flag, but can always be modified
/// by the user after <method>Open</method>() has been called.
Property BuildCharPosMap As %Boolean [ InitialExpression = 1 ];

Parameter DEFTEMPFILEEXT As STRING = "iostream";

Method LastModifiedGet() As %TimeStamp
{
}

Parameter READ = "R";

Parameter WRITE = "W";

Parameter WRITEAPPEND = "A";

Parameter WRITENEWOVER = "N";

Parameter WRITENEWIFABSENT = "E";

Property %Mode As %String(TRUNCATE = 1) [ ReadOnly ];

Property %ReadLineMode As %Boolean [ ReadOnly ];

Property %RWMode As %Boolean [ Private ];

Parameter RWREADNODATA [ Final ] = 0;

Parameter RWREADNOTCHANGED [ Final ] = 1;

Parameter RWREADCHANGED [ Final ] = 2;

Parameter RWWRITE [ Final ] = 3;

/// Map of byte positions to character positions
Property charposmap [ MultiDimensional, Private ];

Method %OnNew(initvalue As %RawString) As %Status [ Private, ProcedureBlock = 1 ]
{
}

Method Open(pName As %String = "", pMode As %String = "R", ByRef pTimeout As %Numeric = 0, pCharEncoding As %String = "Native", Output pSC As %Status) As %Boolean
{
}

Method reopen(pReadLineMode As %Boolean, pForce As %Boolean, pLineTerminator As %String, ByRef pTimeout As %Numeric = 0, ByRef pSize As %Integer = 0) As %Boolean [ Private ]
{
}

/// Create a new, unused filename. By default, the returned filename will have no directory component
/// and will have the default file extension specified in <parameter>DEFTEMPFILEEXT</parameter>.
/// If <var>tExt</var> is specified, this will be used as the file extension. If <var>pUseTempDir</var> is true,
/// then the filename will include the current temporary directory for the namespace
/// in which the method is called. If <var>pDirectory</var> is specified, the supplied directory name
/// will be used irrespective of the value of <var>pUseTempDir</var>.
ClassMethod NewTempFilename(tExt As %String = "", pUseTempDir As %Boolean = 0, pDirectory As %String = "") As %String
{
}

Method Close(Output pSC As %Status) As %Boolean
{
}

Method Write(pData As %String = "", pFlush As %Boolean, Output pSC As %Status)
{
}

Method Read(pMaxReadLen As %Integer, ByRef pTimeout As %Numeric = -1, Output pSC As %Status) As %String
{
}

Method ReadLine(pMaxReadLen As %Integer, ByRef pTimeout As %Numeric = -1, Output pSC As %Status, ByRef pLineTerminator As %String = {..LineTerminator}) As %String
{
}

/// Ensure that any data already written to the stream buffer is sent to the stream.
/// <P>In addition a reopen of the file takes place.
/// <P>Note: The Flush method does not ensure that data actually gets flushed to disk. Using the traditional COS "W *-3" to a device ensures that this occurs.
Method Flush(Output pSC As %Status)
{
}

Method ExternalByteSizeGet() As %Integer [ CodeMode = expression ]
{
}

/// Return the current character size of the data stream.
Method SizeGet() As %Integer
{
}

Method ExternalByteSeek(pBytePos As %Integer, Output pSC As %Status) As %Boolean
{
}

Method Seek(pPosition As %Integer = 1, Output pSC As %Status) As %Boolean
{
}

Method ExternalByteTruncateAt(pBytePos As %Integer, Output pSC As %Status) As %Boolean
{
}

Method TruncateAt(pPosition As %Integer, Output pSC As %Status) As %Boolean
{
}

}
