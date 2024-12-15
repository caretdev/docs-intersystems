Class %Library.Global [ Abstract, System = 4 ]
{

ClassMethod DoubleInnerQuotes(str As %String, ByRef ov As %Boolean) As %String [ Internal ]
{
}

ClassMethod Eval(x) As %String [ Internal, ProcedureBlock = 0 ]
{
}

/// Exports a list of globals <var>GlobalList</var> from a namespace <var>Nsp</var> to <var>FileName</var> using <var>OutputFormat</var> and <var>RecordFormat</var>.<br>
/// <br><var>GlobalList</var> is a comma delimited string or a local array,
/// containing the names of the globals
/// to export. A leading ^ and trailing type of .gbl on each global name are optional.
/// <br><br>
/// Block format (%GOF - type 7) cannot be used to export subscript mapped globals
/// or globals which are mapped to a database other than the default global database
/// of the namespace. If a mapped global is included in the <var>GlobalList</var>, it will be dropped
/// and a message that it well be skipped is displayed. Use ISM/ObjectScript format to export mapped globals.
/// <br><br>
/// <var>OutputFormat</var> has the following values:<br>
/// <li>1 - DTM format</li>
/// <li>3 - VAXDSM format</li>
/// <li>4 - DSM11 format</li>
/// <li>5 - ISM/ObjectScript format</li>
/// <li>6 - MSM format</li>
/// <li>7 - Block format (%GOF)</li><br>
/// <var>RecordFormat</var> has the following values:<br>
/// <li>V - Variable Length Records</li>
/// <li>S - Stream Data</li><br>
/// <var>Header</var> is the user supplied header to be written in the file. Avoid putting $C(13,10) or '~Format=' string in the header string. If it is not supplied or is a null string then the default header is:<br>
/// 'Export of nnn globals from Namespace AAA', the maximum length of the header string is 30000, if the passed header is longer than 30000 characters then it will be truncated.
/// <p>For information on <var>qSpec</var>, see
/// <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=ObjectScript+qspec">System Flags and Qualifiers</a>.</p>
ClassMethod Export(Nsp As %String = {$namespace}, ByRef GlobalList As %String, FileName As %String, OutputFormat As %Integer = 5, RecordFormat As %String = "V", qspec As %String = "d", Translation As %String = "<Device Default>", ByRef Skipped As %String, Header As %String = "") As %Status [ PublicList = (G, IOT, blkcnt, blocks, write, %UI) ]
{
}

ClassMethod GetFileFormat(FileName As %String, ByRef Format As %String, ByRef RecordFormat As %String, DefaultFormat As %String = "5", DefaultRecordFormat As %String = "V") As %Boolean [ Internal ]
{
}

/// Get the <var>Header</var> string from an exported <var>FileName</var> file.<br>
/// This method attempts to detect the file format from its header. If this fails, then the format parameters passed in are used.<br>
/// <var>Header</var> is returned header string in the exported file.<br>
/// <var>FileName</var> is the file name of the exported file.<br>
/// <var>InputFormat</var> has the following values:<br>
/// <li>1 - DTM format</li>
/// <li>3 - VAXDSM format</li>
/// <li>4 - DSM11 format</li>
/// <li>5 - ISM/ObjectScript format</li>
/// <li>6 - MSM format</li>
/// <li>7 - Block format (%GOF)</li><br>
/// <var>VariableLength</var> non-zero if record format is variable length. The default value is 1.
ClassMethod GetFileHeaderString(ByRef Header As %String, FileName As %String, InputFormat As %Integer = 5, VariableLength As %Integer = 1) As %Status
{
}

ClassMethod GetFileHeader(ByRef Header As %String, ByRef GblList As %List, FileName As %String, InputFormat As %Integer = 5, VariableLength As %Integer = 1) As %Status [ Internal ]
{
}

ClassMethod GetGlobalList(Header As %String) As %List [ Internal ]
{
}

///  Construct file Open parameters
///  bWrite = open file for write access
///  bVariable = read/write Variablelength/Stream record (True="V"\False="S")
///  sEncoding = character encoding for \k???\ syntax
///
///  Return parameters string
ClassMethod GetOpenParms(Write As %Boolean, Variable As %Boolean = 1, Encoding As %String = "", Format As %Integer = 5) As %String [ Internal ]
{
}

/// Imports a list of globals <var>GlobalList</var> from <var>FileName</var> into namespace <var>Nsp</var> assuming the file was written in <var>InputFormat</var> with record format of <var>VariableLength</var>.<br>
/// <br>
/// The Import method attempts to detect the file format from its header. If this fails, then the format parameters passed in are used.<br>
/// <br><var>GlobalList</var> is &quot*&quot to import all globals or it should contain
/// a comma delimited string containing the names of the specific globals
/// to import. A leading ^ and trailing type of .gbl around each name are optional.
/// <br><br><var>GlobalList</var> is ignored for non Block format (%GOF) - Type #7 - files.
/// <br><br><var>NewName</var> is used to specify a new name for the global being imported.
/// The input file must be type #7 (%GOF - Block format) and the file must contain only
/// a single global.
/// <br><br>
/// <var>InputFormat</var> has the following values:<br>
/// <li>1 - DTM format</li>
/// <li>3 - VAXDSM format</li>
/// <li>4 - DSM11 format</li>
/// <li>5 - ISM/ObjectScript format</li>
/// <li>6 - MSM format</li>
/// <li>7 - Block format (%GOF)</li><br>
/// <var>VariableLength</var> non-zero if record format is variable length. The default value is 1.
ClassMethod Import(Nsp As %String = {$namespace}, GlobalList As %String, FileName As %String, InputFormat As %Integer = 5, VariableLength As %Integer = 1, NewName As %String = "") As %Status [ PublicList = (RMSMAXLEN, blkcnt, blocks, endian, version, vol, write, %UI, %gifmsg, Vmode, bigendian, file, gbl, globalList, load, nspace, reads, return, type, var, zu93type, odd, rsub, glreads, rdata) ]
{
}

ClassMethod ListDump(list As %List, level As %Integer, ByRef ov As %Boolean, Flags As %Integer = 0) As %String [ Internal, ProcedureBlock = 0 ]
{
}

/// This method quotes gvns or values so they can be printed. The default behavior is to quote a
/// value. You must pass in gvn=1 to quote a gvn. In this case, the quoting is applied to the global
/// name and to each subscript.<br>
/// <br>
/// Numbers need no quoting and are returned unchanged.<br>
/// <br>
/// Strings of printable characters are returned enclosed in quotes. If the string contains a quote
/// character itself, the quotes are doubled to keep it a valid COS string.<br>
/// <br>
/// A string that is a valid $list is converted to a valid COS expression that evaluates to the
/// original string, for instance $lb(1,3.14,"test").<br>
/// <br>
/// A string that contains control characters is converted to a valid COS expression that evaluates to the
/// original string, for instance "test1"_$c(7)_"test2".<br>
/// <br>
/// A string that is a valid $bit string is converted to a COS expression
/// using $C() or $ZWC(). A comment is added indicating which bits are set.<br>
/// <br>
/// <var>Flags</var> - option<br>
/// Bit 0 - Format string<br>
/// Bit 1 - Highlight String<br>
/// Bit 2 - Write String to current device<br>
/// Bit 3 - Do not add a comment to $Bit strings and %Status values<br>
/// <br>
/// The <var>ov</var> argument is set to 1 if the formatted string has to be truncated
/// because it is too long for a local variable.
ClassMethod Quote(str As %String, gvn As %Boolean = 0, ByRef ov As %Boolean, Flags As %Integer = 1) As %String [ Internal ]
{
}

ClassMethod QuoteVector(str As %String, gvn As %Boolean = 0, ByRef ov As %Boolean, Flags As %Integer = 1) As %String [ Internal ]
{
}

ClassMethod UndoubleInnerQuotes(str As %String) As %String [ Internal ]
{
}

/// Undoes the effects of the Quote method. That is, given the gvn and value display strings,
/// Unquote returns a gvn and a value that can be used in a set command like Set @gvn=value.
///
/// The default behavior is to Unquote a value. To Unquote a gvn you must pass in gvn=1.
///
ClassMethod Unquote(str As %String, gvn As %Boolean = 0) As %String [ Internal ]
{
}

/// The query returns the nodes that contain <var>FindWhat</var>, one node per row, with
/// four columns, namely Name, Value, Name Format and Value Format.<br>
/// Use ##Class(%Library.Utility).Replace to replace <var>FindWhat</var> with <var>ReplaceWith</var>.<br>
/// NameFormat:
/// <li>1 - String format, this is the value of the subscript unaltered</li>
/// <li>2 - ObjectScript format, the value has been converted into the ObjectScript representation for easy viewing,
/// for example instead of showing the binary value a list is displayed as '$lb(1,"test")'. This format
/// is suitable as the argument of $name.</li><br>
/// ValueFormat:
/// <li>1 - String format, this is the value unaltered</li>
/// <li>2 - ObjectScript format, the value has been converted into the ObjectScript representation for easy viewing,
/// for example instead of showing the binary value a list is displayed as '$lb(1,"test")'.</li>
/// On output, Name Format and Value Format may assume a third value, namely 3, which means "Not editable".
/// Due to issues with the length of this data not all of it can be displayed so a portion is displayed.
ClassMethod FindExecute(ByRef qHandle As %Binary, Namespace As %String, StartNode As %String, FindWhat As %String = "", MatchCase As %Boolean = 1, NameFormat As %Integer = 1, ValueFormat As %Integer = 1) As %Status [ Internal ]
{
}

ClassMethod FindFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = FindExecute ]
{
}

ClassMethod FindClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = FindExecute ]
{
}

/// The query returns the nodes selected by <var>SearchMask</var>, one node per row, with
/// four columns, namely Name, Value, Name Format and Value Format.<br>
/// NameFormat:
/// <li>1 - String format, this is the value of the subscript unaltered</li>
/// <li>2 - ObjectScript format, the value has been converted into the ObjectScript representation for easy viewing,
/// for example instead of showing the binary value a list is displayed as '$lb(1,"test")'. This format
/// is suitable as the argument of $name.</li><br>
/// ValueFormat:
/// <li>1 - String format, this is the value unaltered</li>
/// <li>2 - ObjectScript format, the value has been converted into the ObjectScript representation for easy viewing,
/// for example instead of showing the binary value a list is displayed as '$lb(1,"test")'.</li>
/// On output, Name Format and Value Format may assume a third value, namely 3, which means "Not editable".
/// Due to issues with the length of this data not all of it can be displayed so a portion is displayed.<br>
/// GetPermissions: Note that returning permissions on an individual global will
/// affect performance of the query.
/// <li>0 - Return "" for permission (no performance penalty) </li>
/// <li>1 - Return permissions (READ,WRITE,USE) </li>
ClassMethod GetExecute(ByRef qHandle As %Binary, Namespace As %String, SearchMask As %String, LastNode As %String, NameFormat As %Integer = 1, ValueFormat As %Integer = 1, GetPermissions As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod GetFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetExecute ]
{
}

ClassMethod GetClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetExecute ]
{
}

}
