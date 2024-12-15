/// <P> Transform COS source code to a parse tree
/// <P> Internal ISC code, not for customer use - these interfaces may change without warning
Class %Library.COSCallout Extends %RegisteredObject [ System = 4 ]
{

/// <P>The directory for CacheObjectScript.DLL.
/// <P>
/// <P>Defaults to the instance's "Bin" directory - change it if you want to debug a different version of the DLL.
Property BinDir As %String(TRUNCATE = 1);

/// <P> How we call the DLL
/// <P>
/// <P> Takes one of the following values :-
/// <P> 1 - use $ZF(-3)         ... handy for debugging the DLL because it doesn't stay loaded
/// <P> 2 - use $ZF(-4)/$ZF(-5) ... to cache the DLL handle
/// <P> 3 - use $ZF(-4)/$ZF(-6) ... the default - there's normally no reason to change it
/// <P>
/// <P>Initialised to 3
Property DLLCallMode As %Integer [ InitialExpression = 3 ];

/// <P> The cached DLLHandle (used only when DLLCallMode=2)
Property DLLHandle As %Integer [ InitialExpression = 0 ];

/// <P>Set to a result code string
/// <P>
/// <P>Mainly of use to Intersystems support.
Property DLLResultCode As %String(TRUNCATE = 1);

Method %OnClose() As %Status
{
}

/// <P> Convert the given COS source code to a parse tree
/// <P>
/// <UL>
///  <LI><P> SourceStream is a stream containing the source code
///  <LI><P> ErrorsStream is a stream to which any error messages are written
/// </UL>
/// <P>
/// <P> The return value is 1 on success, 0 on failure
/// <P>
/// <P> If 0 is returned the caller should see the DLLResultCode property
///     for information about failure.
/// <P>
/// <P> CacheObjectScript.DLL must be in the directory given by the BinDir property.
///     By default this points to the instance's "Bin" directory.
/// <P> <HR>
/// <P> In the example below SourceIn and ErrorsOut are streams.
///     SourceIn supplies the source code and ErrorsOut receives any error messages.
/// <P>
/// <EXAMPLE>
/// Set TT=##class(%Library.COSCallout).%New()
/// Set Ret=TT.Compile(SourceIn,ErrorsOut)
/// If 'Ret Write "Fatal error: ",TT.DLLResultCode,! ZTrap
/// Do Errors.Rewind()
/// If 'Errors.AtEnd {
///   //... show Errors
/// }
/// Else {
///   //... use tree
/// }
/// </EXAMPLE>
Method Compile(SourceStream As %RawString, ErrorsStream As %RawString, ByRef ColoringErrors As %Boolean) As %Boolean
{
}

/// <P>Helper function to return the InterSystems IRIS configuration name.
Method ConfigName() As %String [ CodeMode = expression, Private ]
{
}

/// <P>Helper function to return the InterSystems IRIS configuration path.
Method ConfigPath() As %String [ CodeMode = expression, Private ]
{
}

/// <P> Invoke the CacheObjectScript DLL function (DLLFunction), passing DLLArgs.
/// <P> Returns what the $ZF call into the DLL returns, or something in the same format :-
/// <P> $LISTBUILD(ZFOK, $LISTBUILD(Lang1, Lang2, ...), ColoringErrors, DLLResultCode)
Method InvokeDLL(DLLFunction As %Integer, DLLArgs) As %List [ Private ]
{
}

/// <P> Sets failed to 1 if the $ZF(-5,..) call fails, otherwise sets it to 0 and returns the DLL return code
Method ZF5(handle As %Integer, DLLFunction As %Integer, DLLArgs, ByRef failed As %Boolean) As %String [ Private ]
{
}

/// <P> Sets failed to 1 if the $ZF(-6,..) call fails, otherwise sets it to 0 and returns the DLL return code
Method ZF6(DLLPath As %String, DLLFunction As %Integer, DLLArgs, ByRef failed As %Boolean) As %String [ Private ]
{
}

/// <P> Return the path to the DLL
ClassMethod PathToDLL() As %String
{
}

/// <P> Set the default for the instance's "Bin" directory
Method SetDefaultBinDir() [ Private ]
{
}

}
