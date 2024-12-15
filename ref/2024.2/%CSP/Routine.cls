/// Subclass of <CLASS>%FileCharacterStream</CLASS> that is used to load, save, compile,
/// delete, etc. CSP files. To create one you pass it the URL of the CSP file you wish
/// to manipulate such as:
/// <EXAMPLE>
/// Set stream=##class(%CSP.Routine).%New("/csp/samples/inspector.csp")
/// Do stream.OutputToDevice()
/// </EXAMPLE>
Class %CSP.Routine Extends %FileCharacterStream [ System = 3 ]
{

/// Override of file extension from %FileCharacterStream.
Parameter FILEEXT = "csp";

/// True if this routine is generated from something else
Property Generated As %Boolean;

Property IsModified As %Boolean [ InitialExpression = 0 ];

Property UpToDate As %Boolean [ Calculated ];

Method UpToDateGet() As %Boolean
{
}

/// Override of %OnClose method from %FileCharacterStream
Method %OnClose() As %Status [ Internal, Private ]
{
}

/// Override of IOGetStreamId method from %FileCharacterStream
Method IOGetStreamId() As %String [ Internal, Private ]
{
}

/// Override of %OnNew method from %FileCharacterStream
Method %OnNew(url As %String = "") As %Status [ Internal, Private ]
{
}

/// Override of OpenStream method from %FileCharacterStream to open a %CSP.Routine.
Method OpenStream(url As %String) As %Status
{
}

/// Override of SaveStream method from %FileCharacterStream to save this stream
Method SaveStream(supressbackup As %Boolean = 1, Output Refresh As %Boolean) As %Status
{
}

/// If needed this will clear the gateway cache of this static url
ClassMethod ClearGatewayCache(url As %String, clear As %List = "") As %Status
{
}

/// Property holding the URL for this CSP application.
Property Url As %String;

/// Set method for Url property
Method UrlSet(url As %String) As %Status [ Internal ]
{
}

/// Readonly property holding the namespace for this CSP application.
Property Namespace As %String;

/// Set method for Namespace property to make it readonly
Method NamespaceSet(val As %String) As %Status [ Internal, Private ]
{
}

/// Link this stream to the file pointed to by this <var>url</var>.
Method LinkToUrl(url As %String = "") As %Status
{
}

/// Copy file.
ClassMethod CopyFile(oldn As %String, newn As %String) As %Boolean [ Internal ]
{
}

/// Compile this CSP page. This calls <METHOD>SaveStream</METHOD> to flush the stream
/// out to disk before calling compile.
Method Compile(qspec As %String = "") As %Status
{
}

/// Delete the file associated with this CSP url
ClassMethod Delete(url As %String) As %Status [ ProcedureBlock = 1 ]
{
}

/// Return true if the CSP file exists (not the class) and false otherwise.
ClassMethod Exists(url As %String) As %Boolean
{
}

/// Return the timestamp of this CSP/CSR file. If there is no file then return -1
ClassMethod GetDate(url As %String) As %TimeStamp
{
}

/// Get the timestamp for the routine.
Method GetCurrentTimeStamp() As %TimeStamp
{
}

/// Caclulated property that contains the current timestamp for the routine.
Property TimeStamp As %TimeStamp [ Calculated ];

/// Get method for TimeStamp property.
Method TimeStampGet() As %TimeStamp [ CodeMode = expression, Internal ]
{
}

/// Number of times this routines has been locked.
Property Locked As %Integer [ InitialExpression = 0 ];

/// Lock the current routine
Method Lock() As %Status
{
}

/// Unlock the current routine
Method Unlock() As %Status
{
}

/// Lock or unlock a particular routine <parameter>name</parameter>. If <parameter>lock</parameter>
/// is true then it will be locked else it will be unlocked.
ClassMethod LockRoutine(name As %String, lock As %Boolean = 1, checkfile As %Boolean = 1) As %Status
{
}

/// Override of GetReadOpenParameter from %FileCharacterStream
Method GetReadOpenParameter(filename As %String, mode As %Integer, ByRef pos As %Integer) As %String [ Internal, Private ]
{
}

Method GetWriteOpenParameter(filename As %String, mode As %Integer) As %String [ Private ]
{
}

Method Clear(permanent As %Boolean = 1) As %Status
{
}

}
