/// The <class>%Routine</class> class provides a way to create and manipulate
/// routines stored within a database.
/// <p>The <class>%Routine</class> class provides a stream interface
/// (<i>see <class>%AbstractStream</class></i>) that allows you to read existing
/// routines as well as create new one programmatically.
/// <p><class>%Routine</class> includes methods to save and compile
/// modified routines.
/// <p>For example, the following code creates, saves, and compiles a
/// simple ObjectScript routine (note that lines of code start with a space
/// character):
/// <example>
/// Set routine = ##class(%Routine).%New("MyRoutine.MAC")
///
/// ; Write lines of code to the routine
/// Do routine.WriteLine("MyRoutine")
/// Do routine.WriteLine("Tag()")
/// Do routine.WriteLine(" Write ""This is my routine"",!")
/// Do routine.WriteLine(" Quit")
///
/// ; save the routine
/// Do routine.Save()
///
/// ; compile the routine
/// Do routine.Compile()
/// </example>
Class %Library.Routine Extends (%CharacterStream, %AbstractStream) [ Inheritance = right, System = 2 ]
{

/// The name of the routine.
Property RoutineName As %String;

/// The type of the routine.
Property RoutineType As %String;

Property RoutineVersion As %Integer;

/// True if this routine is generated from something else
Property Generated As %Boolean [ InitialExpression = 0 ];

/// For INT routines if this is compiled from a MAC then return true if the INT
/// is up to date with the MAC, but if the INT is different to the MAC, e.g. it was
/// modified and saved directly or the MAC was modified and saved but not compiled
/// then it will return false.<p>
/// For MAC routines it will be true if the generated pcode from compiling this MAC
/// is up to date and false if recompiling this MAC would generate different pcode, so
/// either the MAC has changed or the pcode has changed.
Property UpToDate As %Boolean [ Calculated ];

Method UpToDateGet() As %Boolean
{
}

Property StoreGlvn As %String [ Calculated, Private ];

Property TempNode As %String [ Private ];

/// The current node we are reading from.
Property NodeNo As %String [ InitialExpression = 0, Private ];

Property Buffer As %Binary [ MultiDimensional, Private ];

Property Position As %Integer [ InitialExpression = 2, Private ];

Property IOSize As %Integer [ InitialExpression = 0, Private ];

Property IOLines As %Integer [ InitialExpression = 0, Private ];

Property IOLangMode As %Integer [ InitialExpression = 0, Private ];

Property IsModified As %Boolean [ InitialExpression = 0 ];

Property TimeStamp As %TimeStamp;

/// Number of times this routine has been locked.
Property Locked As %Integer [ InitialExpression = 0 ];

/// Lock the current routine
Method Lock() As %Status
{
}

/// Unlock the current routine
Method Unlock() As %Status
{
}

/// Lock a particular routine <parameter>name</parameter>. If <parameter>lock</parameter> is true (the default)
/// then it locks the routine, and if false then it unlocks the routine. If a routine is derived from
/// a class then it will lock the class name in ^oddDEF to prevent another user from attempting to
/// edit the class at the same time this process is editing the routine. If IModeLock is True,
/// then it will unlock the routine with the #I flag so that the node will unlock even if in a transaction.
ClassMethod LockRoutine(name As %String, lock As %Boolean = 1, nsp As %String = {$namespace}, IModeLock As %Boolean = 0, timeout As %Integer = 0) As %Status
{
}

/// Split a routine name into its components; set the name,type etc.
/// <p>If <var>name</var> has no extension, then the default is <i>.MAC</i>.
Method ParseRoutineName(name As %String) As %Status [ Private ]
{
}

/// Check if we are allowed to save this routine in this namespace
ClassMethod CheckProtect(name As %String) As %Boolean
{
}

/// Return the complete routine name for this routine.
Method BuildRoutineName() As %String [ CodeMode = expression, Private ]
{
}

Method %OnNew(initval As %String = "") As %Status [ Private ]
{
}

Method IOInit() [ Private ]
{
}

Method Rewind() As %Status
{
}

Method Flush() As %Status
{
}

/// Return the current size of the data stream.
Method SizeGet() As %Integer [ CodeMode = expression ]
{
}

Method IOGetStreamId() As %String [ CodeMode = expression, Private ]
{
}

Method OpenStream(sid As %String) As %Status
{
}

Method SaveStream(supressbackup As %Boolean = 0, Output Refresh As %Boolean) As %Status
{
}

ClassMethod DeleteStream(sid As %ObjectIdentity) As %Status
{
}

Method RoutineNameSet(newvalue As %String) As %Status
{
}

Method Read(ByRef len As %Integer = 32000, ByRef sc As %Status) As %String
{
}

Method ReadLine(ByRef len As %Integer = 32000, ByRef sc As %Status, ByRef eol As %Boolean) As %String
{
}

Method Write(data As %RawString = "") As %Status
{
}

Method WriteLine(data As %String = "") As %Status
{
}

Method InitWriteData() As %Status [ Private ]
{
}

/// Reads the next node into Buffer.
/// <p>Returns 0 if there is no more data.
Method ReadIntoBuffer() As %Boolean [ Private ]
{
}

Method StoreGlvnGet() As %String [ Private ]
{
}

Method MoveToEnd() As %Status
{
}

Method Clear() As %Status
{
}

Method %OnClose() As %Status [ Private ]
{
}

/// The name (without extension) of the routine associated with this object.
/// <p>This is for backwards compatibility only.
Property Name As %String [ Calculated ];

Method NameGet() As %String [ CodeMode = expression ]
{
}

/// Return the namespace this routine is from
Property Namespace As %String [ Calculated ];

Method NamespaceGet() As %String [ CodeMode = expression ]
{
}

/// The language mode of this routine
Property LanguageMode As %Integer [ Calculated ];

Method LanguageModeGet() As %Integer [ CodeMode = expression ]
{
}

Method LanguageModeSet(languagemode As %Integer) As %Status
{
}

/// Compile this routine.
/// <p>For information on <var>qSpec</var>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=ObjectScript+qspec">System Flags and Qualifiers</a>.</p>
Method Compile(qspec As %String) As %Status
{
}

/// Get the on-disk timestamp for the routine.
Method GetCurrentTimeStamp() As %TimeStamp
{
}

/// Save this routine.
Method Save(supressbackup As %Boolean = 0) As %Status [ CodeMode = expression ]
{
}

/// Delete the routine <var>rtnname</var>. If the <var>rtnname</var> is not fully qualified we will resolve this into
/// a fully qualified name first and then proceed with the rest of the delete. For example if you specify 'test' and there
/// is a 'test.mac' it will resolve to this, if there was only a 'test.obj' it will resolve the name to this.
/// The parameter <var>flag</var> specifies how much to delete.
/// The options are:<ul>
/// <li>0 - Delete entire routine, for a MAC routine this will delete MAC, INT, OBJ. For an INT routine
/// it will delete INT and OBJ, for a INC routine it will only delete the INC, for a BAS routine it will
/// delete the BAS and the OBJ code.</li>
/// <li>1 - Delete just the named routine, for example for a MAC routine it will only delete the MAC
/// and it will leave the INT and OBJ if present.</li>
/// <li>2 - Delete all the source code but leave any OBJ code.</li></ul>
/// This returns a %Status code to show if it worked or not. If you pass a name like 'test.mac;*' it will
/// delete all backup versions of this routine. If the routine name which is passed does not
/// exists, the method will return success.
ClassMethod Delete(rtnname As %String, flag As %String = 0, supressbackup As %Boolean = 0, nsp As %String = {$namespace}) As %Status
{
}

/// This is an <b>instance</b> method which tests if this routine exists (that
/// is, it has been saved to disk).
Method RoutineExists() As %Boolean [ CodeMode = expression ]
{
}

/// This is a <b>class</b> method which tests if the routine <var>name</var> exists.
/// <p>If <var>name</var> consists of a routine name and an extension,
/// such as INT, MAC, etc. then it will check for this specific routine. If it
/// just contains the routine name it will check if either MAC, INT, or BAS exists.
/// <example>
/// Write ##class(%Routine).Exists("Test.MAC")
/// Write ##class(%Routine).Exists("Test")
/// </example>
ClassMethod Exists(name As %String) As %Boolean
{
}

/// Return the timestamp the routine with <var>name</var> was last updated.
ClassMethod GetDate(name As %String) As %TimeStamp
{
}

/// This function syntax checks INT source code.<br>
///   Source - source (INT) code;
///         either a single line stored in a variable, or
///         an array where: array(0)=#lines, array(1-n)=source<br>
///   Errors (byref) - Returned array of errors detected by compiler<br>
///   LanguageMode - language mode, 0-10 (optional, default 0)<br>
ClassMethod CheckSyntax(ByRef Source As %String, ByRef Errors As %String, LanguageMode As %Integer = 0) As %Status
{
}

/// This query provides a list of all routines that match the pattern
/// specified by <var>spec</var>.
/// <p><var>spec</var> may contain both * and ? as wildcards. It may also
/// consist of more than one, comma-delimited selections.
/// For example:<br>
/// <code>&quot;*.MAC&quot;</code><br>
/// <code>&quot;A*.MAC&quot;</code><br>
/// <code>&quot;A?.MAC&quot;</code><br>
/// <code>&quot;A*.MAC,B*.MAC&quot;</code><br>
/// <var>dir</var> specifies the direction to search in, 1 is forwards
/// and -1 is backwards.<br>
/// <var>type</var> is 1 to include OBJ files
/// in the search and the default, 0 will just include INT, MAC, INC, BAS.<br>
/// <var>nsp</var> is the namespace to list from. If omitted, the query returns the routines from the current
/// namespace. <var>nsp</var> can be either an explicit or an implied namespace.
ClassMethod RoutineListExecute(ByRef QHandle As %Binary, ByRef spec As %String(MAXLEN=512) = "", Dir As %Integer = 1, Type As %Integer = 0, Nsp As %String = {$namespace}, nolang As %Boolean = 0) As %Status [ Final ]
{
}

ClassMethod RoutineListClose(QHandle As %Binary) As %Status
{
}

/// <b>Fetch</b> returns the next row in the query.
ClassMethod RoutineListFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

/// <b>RoutineListFetchRows</b> returns the next <var>FetchCount</var> rows in the query.
ClassMethod RoutineListFetchRows(ByRef QHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status
{
}

/// This query provides a list of all routines that match the <var>Spec</var>
/// ordered by the <var>OrderBy</var>. The <var>Dir</var> specifies the direction to search in, 1 is
/// in assending order and -1 is in decending order.
/// <p><var>Spec</var> may contain both * and ? as wildcards. It may also
/// consist of more than one, comma-delimited selections.
/// For example:<br>
/// <code>&quot;*.MAC&quot;</code><br>
/// <code>&quot;A*.MAC&quot;</code><br>
/// <code>&quot;A?.MAC&quot;</code><br>
/// <code>&quot;A*.MAC,B*.MAC&quot;</code><p>
/// The <var>Type</var> is 1 to include OBJ files
/// in the search and the default, 0 will just include INT, MAC, INC, BAS.<p>
/// <var>OrderBy</var> is one of:<ul>
/// <li>Date - Date/Time the file was saved (the default)</li>
/// <li>Size - Size of the file</li>
/// <li>Type - Type of the file ie. INT, MAC, INC, BAS</li></ul>
/// If you wish to return the results in name order then use the RoutineList query as this is faster
/// as it does not need to build a full list first in order to sort it correctly.<br>
/// <var>nsp</var> is the namespace to list from. If omitted, the query returns the routines from the current
/// namespace. <var>nsp</var> can be either an explicit or an implied namespace.
ClassMethod RoutinesSortByFieldExecute(ByRef QHandle As %Binary, ByRef Spec As %String(MAXLEN=512) = "", Dir As %Integer = 1, Type As %Integer = 0, OrderBy As %String = "Date", Nsp As %String = {$namespace}) As %Status [ Final ]
{
}

ClassMethod RoutinesSortByFieldClose(QHandle As %Binary) As %Status
{
}

/// <b>Fetch</b> returns the next row in the query.
ClassMethod RoutinesSortByFieldFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = expression ]
{
}

/// <b>RoutineListFetchRows</b> returns the next <var>FetchCount</var> rows in the query.
ClassMethod RoutinesSortByFieldFetchRows(ByRef QHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status
{
}

Method LastModifiedGet() As %TimeStamp [ CodeMode = expression ]
{
}

ClassMethod FindClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = FindExecute ]
{
}

ClassMethod FindExecute(ByRef qHandle As %Binary, Namespace As %String, RoutineName As %String, FindWhat As %String = "", MatchCase As %Boolean = 1) As %Status [ Internal ]
{
}

ClassMethod FindFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = FindExecute ]
{
}

/// The query returns the routine that contains <var>FindWhat</var>, one line per row, with two columns,
/// Line and Match. Line is the line text. Match is 1 if Line contains <var>FindWhat</var>.
/// The entire routine is returned.
ClassMethod CompareClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = CompareExecute ]
{
}

ClassMethod CompareExecute(ByRef qHandle As %Binary, Nsp1 As %String, RouName1 As %String, Nsp2 As %String = "", RouName2 As %String) As %Status [ Internal ]
{
}

ClassMethod RoutineCompare(Nsp1 As %String = "", RouName1 As %String = "", Nsp2 As %String = "", RouName2 As %String = "", GloRef As %String) As %Status [ Internal ]
{
}

ClassMethod CompareFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = FindExecute ]
{
}

/// This query provides a list of all lines that differ between two given routines.<br>
/// <var>Nsp1</var> and <var>RouName1</var> specify the first routine.<br>
/// <var>Nsp2</var> and <var>RouName2</var> specify the second routine.<br>
/// <var>Nsp1</var> and <var>RouName2</var> can be either an explicit or an implied namespace.
Method LineTerminatorGet() As %String
{
}

/// Returns the major.minor version number of the ObjectScript compiler that produced the object code
/// for this routine.  Returns 0 if there is no object code for the routine.
Method GetObjectVersion() As %Numeric
{
}

ClassMethod normalizeName(ByRef rtn As %String, ByRef nm As %String, ByRef type As %String, obj As %Boolean = 1) As %Status [ Private ]
{
}

/// Return list of globals where routine and class information is stored.<br>
/// Returns Names="ROUTINE,rBACKUP,rINC,rINCSAVE,rINDEX,rMAC,rMACSAVE,rMAP,rOBJ,oddDEF"<br>
/// Here is some documentation on the format of the routine globals.<br><br>
/// ROUTINE - Native .INT COS code, generated from .MAC, or generated from classes.
/// When compiled generates .OBJ code.<br>
/// ROUTINE(Name,0)=timestamp when last saved<br>
/// ROUTINE(Name,0,0)=# lines in routine<br>
/// ROUTINE(Name,0,1...x) = Source Lines in routine<br>
/// ROUTINE(Name,0,"GENERATED")= 0/1 whether routine is generated or native<br>
/// ROUTINE(Name,0,"INC",IncludeFileName1)=Timestamp when last include file last saved<br>
/// ROUTINE(Name,0,"INC",IncludeFileName2)=Timestamp when last include file last saved<br>
/// ROUTINE(Name,0,"SIZE")=# bytes in routine<br>
/// ROUTINE(Name,0,"LANG")=language mode<br><br>
/// ROUTINE(Name,"MAC")=Timestamp of .MAC code when last saved if generated<br>
/// rBACKUP(Name,Type,version) - backup of ^ROUTINE, created by the command
/// Merge ^rBACKUP(rtn,type,nextverersion)=^ROUTINE(rtn) where type="INT/MVI/BAS"<br><br>
/// rINC - Native .INT or macro code, compiled into .MAC when included with #include directive<br>
/// rINC(Name,0)=timestamp when last saved<br>
/// rINC(Name,0,0)=# lines in include file<br>
/// rINC(Name,0,1...x) = Source Lines in include file<br>
/// rINC(Name,0,"SIZE")=# bytes in include file<br>
/// rINC("ZZ","P") - Meta data used for precompiling include files<br><br>
/// rINCSAVE - Backup of ^rINC, created by the command
/// Merge ^rINCSAVE(rtn,nextver)=^rINC(rtn,0)<br><br>
/// rINDEX - Index of .OBJ, .INT, and .MAC routines<br>
/// rINDEX(Name,"OBJ/MAC/INC")=$lb(Time compiled,Size)<br>
/// rINDEX(Name,"INT")=$lb(Time compiled,Size,Generated 0/1)<br><br>
/// rMAC - Native .MAC Macro code which when compiled generates .INT code<br>
/// rMAC(Name,0)=Timestamp when last saved<br>
/// rMAC(Name,0,0)=#lines in routine<br>
/// rMAC(Name,0,1...x) = Source Lines in routine<br>
/// rMAC(Name,0,"SIZE")=# bytes in routine<br><br>
/// rMACSAVE(Name,Type,version) - backup of ^rMAC, created by the command
/// Merge ^rMACSAVE(rtn,nextver)=^rMAC(rtn,0)<br><br>
/// rMAP - Debug map used by the debugger and for error trapping<br>
/// rMAP(Name,"INT","MAC",offsets)=$lb(debuginfo)<br>
/// rMAP(Name,"MAC","INT",offsets)=$lb(debuginfo)<br><br>
/// rOBJ - Compiled .INT code<br>
/// rOBJ(Name,"INT")=timestamp of .INT code when compiled<br>
/// rOBJ(Name,0...n)=Compiled object code<br><br>
/// oddDEF - Source code for classes<br>
/// oddDEF($zcvt(Name,"U"),....)=source code from class. Note that all of the other
/// odd* nodes are meta data describing the class, and can be recreated by compiling
/// the class. The rINDEXCLASS and rINDEXSQL nodes also get recreated when compiling
/// the class.<br><br>
ClassMethod GetRoutineGlobals(ByRef Names As %String) As %Status
{
}

/// Compile a list of routines in the current namespace.
/// Pass this a comma separated list of items, which can include wild card
/// characters e.g. 'test.mac,abc*.int' or pass in a subscripted array with the
/// routine name as the subscript. It will return an error %Status.
/// If you do not wish to use multicompile then pass in /multicompile=0
ClassMethod CompileList(rtns As %String, qspec As %String) As %Status
{
}

/// Compile all routines in a namespace.<br>
/// This method will compile all routines in the current namespace.<br>
/// <var>Flags</var> Bit string of options to method.<br>
/// Bit 0 - Suppress syntax error display.<br>
/// Bit 1 - Suppress output to principal device.<br>
/// <var>IO</var> Already open device to send the output to. For example, "c:\a.out" <br>
/// <var>Count</var> (by ref) Number of routines compiled.<br>
/// <var>Errors</var> (by ref) Number of routines with syntax errors.<br>
/// <var>MultiCompile</var> - If true then use multiple jobs to do the compile, if not specified use the default /multicompile qualifier setting<br>
/// <var>Journal</var> - If true then journal the compile, if false disable journaling for compile, if not specified use the default /journal qualifier setting<br>
/// <var>KeepSource</var> - If true (default) then keep INT code from compiling a MAC, if false then do not save INT code<br>
ClassMethod CompileAll(Flags As %String = 0, IO As %String = {$p}, ByRef Count As %Integer, ByRef Errors As %Integer, MultiCompile As %Integer, Journal As %Integer, KeepSource As %Boolean = 1) As %Status
{
}

/// Compile selected routines in a namespace.<br>
/// <var>Mask</var> Selection mask of which routines to compile. This mask is passed to
/// %Library.Routine.RoutineList() and must be in a format it understands.<br>
/// <var>Flags</var> Bit string of options to method.<br>
/// Bit 0 - Suppress syntax error display.<br>
/// Bit 1 - Suppress output to principal device.<br>
/// <var>IO</var> Already open device to send the output to. For example, "c:\a.out" <br>
/// <var>Count</var> (by ref) Number of routines compiled.<br>
/// <var>Errors</var> (by ref) Number of routines with syntax errors.<br>
/// <var>MultiCompile</var> - If true then use multiple jobs to do the compile, if not specified use the default /multicompile qualifier setting<br>
/// <var>Journal</var> - If true then journal the compile, if false disable journaling for compile, if not specified use the default /journal qualifier setting<br>
/// <var>KeepSource</var> - If true (default) then keep INT code from compiling a MAC, if false then do not save INT code<br>
ClassMethod CompileSelected(Mask As %String = "*.*", Flags As %String = 0, IO As %String = {$p}, ByRef Count As %Integer, ByRef Errors As %Integer, MultiCompile As %Integer, Journal As %Integer, KeepSource As %Boolean = 1) As %Status
{
}

/// Compile all routines in all namespace.<br>
/// This method will compile all routines in all namespaces. This will not compile
/// routines in SYSTEM defined namespaces.<br>
/// <var>Flags</var> Bit string of options to method.<br>
/// Bit 0 - Suppress syntax error display.<br>
/// Bit 1 - Suppress output to principal device.<br>
/// <var>IO</var> Already open device to send the output to. For example, "c:\a.out" <br>
/// <var>Count</var> (by ref) Number of routines compiled.<br>
/// <var>Errors</var> (by ref) Number of routines with syntax errors.<br>
/// <var>MultiCompile</var> - If true (default) then use multiple jobs to do the compile<br>
/// <var>Journal</var> - If true (default) then journal the compile, if false disable journaling for compile<br>
/// <var>KeepSource</var> - If true (default) then keep INT code from compiling a MAC, if false then do not save INT code<br>
ClassMethod CompileAllNamespaces(Flags As %String = 0, IO As %String = {$p}, ByRef Count As %Integer, ByRef Errors As %Integer, MultiCompile As %Integer = 1, Journal As %Integer = 1, KeepSource As %Boolean = 1) As %Status
{
}

ClassMethod %ExistsId(id As %String) As %Boolean [ CodeMode = expression ]
{
}

Method %IsModified() As %Integer
{
}

Method %ObjectModified() As %Integer
{
}

}
