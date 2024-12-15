/// Journal record related API<p>
/// To retrieve a record, first open the journal file containing the record if it is not already open:
/// <Example>
/// Set jrnforef = ##class(%SYS.Journal.File).%OpenId(FilePath)
/// </Example>
/// where FilePath is the path of the journal file.
/// Then get the record by specifying its location (<parameter>Address</parameter>) in the journal file
/// <Example>
/// Set jrecoref = jrnforef.GetRecordAt(Address)
/// </Example>
/// or
/// <Example>
/// Set jrecoref = ##class(%SYS.Journal.Record).%OpenId(Address)
/// </Example>
/// Records are polymorphic -- for example, the reference returned above would be one to a
/// <class>SetKillRecord</class> object if the record is a SET or KILL.
Class %SYS.Journal.Record Extends %Persistent [ StorageStrategy = JournalRecordStorage, System = 4 ]
{

Parameter READONLY = 1;

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

/// Location of the record in the journal file
Property Address As %String [ ReadOnly ];

/// Type of the record in numeric form
Property Type As %Library.JournalRecordType [ ReadOnly ];

/// Type of the record in string form
Property TypeName As %String [ Calculated ];

/// Reference to previous record or NULLOREF if this is the first record in the file
Property Prev As %SYS.Journal.Record [ Calculated ];

/// Reference to next record or NULLOREF if this is the last record in the file
Property Next As %SYS.Journal.Record [ Calculated ];

/// Location of previous record or 0 if this is the first record in the file
Property PrevAddress As %Integer [ Calculated ];

/// Location of next record or 0 if this is the last record in the file
Property NextAddress As %Integer [ Calculated ];

/// Time stamp of the record (not necessarily the creation time of the record)
Property TimeStamp As %TimeStamp [ Calculated ];

/// Whether the record is part of a transaction
Property InTransaction As %Integer [ Calculated ];

/// Operating system process id for the process which created the journal record.
/// This is calculated by taking the jobid stored in the journal record and
/// looking up the corresponding process id in a translation table maintained by
/// the system. If the process id cannot be calculated, the jobid with the string
/// "(jid") appended is returned.
Property ProcessID As %Integer [ Calculated ];

/// Internal jobid stored with each journal record in the journal file
Property JobID As %Integer [ Calculated ];

/// 	Use RemoteSystemID if you're comparing records to ensure that two
/// 	identical process IDs refer to the same real process/transaction.
///
Property RemoteSystemID As %Integer [ Calculated ];

/// 	ECPSystemID is <property>RemoteSystemID</property> with the top
/// 	bits masked off. <br>
/// 	Use ECPSystemID if the only thing of interest is whether it came
/// 	from an ECP client, etc.
///
Property ECPSystemID As %Integer [ Calculated ];

ClassMethod %OnDetermineClass(OID As %ObjectIdentity, ByRef Class As %String) As %Status
{
}

/// Given an address in the currently open journal file, read the
/// jobid from the journal record and translate this to an operating
/// system process id using the jobid->pid translation table. Returns
/// the corresponding pid or "&lt;jobid&gt;(jid)" if the pid cannot be
/// determined.
ClassMethod PIDLookup(Offset As %String) As %String
{
}

Method %LoadData(Offset As %String, flag As %Boolean) As %Status [ Private ]
{
}

/// Provides an analysis of the activity for global records in a journal file.
/// Records are counted by type and the amount of activity for each global is
/// calculated as a percentage of the total for that record type.
/// <br><br>
/// The output is written to the current device.
/// <br><br>
/// Parameters are:
/// <br><br>
/// <b>File</b>  -  Journal file to count (by default the current journal file)
/// <br><br>
/// <b>Sort</b>  -  By default the counts for all types of global journal records
/// are kept individually. You may have the counts grouped as general SET or KILL
/// records by entering the 'Sort' parameter as 'GROUP'.
/// <br>
///
ClassMethod Count(File As %String, Sort As %String = "ALL") As %Status
{
}

Method TypeNameGet() As %String
{
}

Method PrevAddressGet() As %Integer [ CodeMode = expression ]
{
}

Method NextAddressGet() As %Integer [ CodeMode = expression ]
{
}

Method PrevGet() As %SYS.Journal.Record
{
}

Method NextGet() As %SYS.Journal.Record
{
}

/// Return the address of a valid record that is nearest to and >= (or <= if Before=1) the given offset; 0 if no such a record
ClassMethod GetAddressNear(Offset As %Integer = 0, Before As %Boolean = 0) As %Integer
{
}

/// Return the physical location of a record, given by Offset and Filename, in Offset and FileName.<br>
/// The virtual and physical locations of a record may differ due to a journal switch.
/// The API assumes a %SYS.Journal.System.Sync() has been issued to commit the journal record in question to disk
ClassMethod GetPhysicalLocation(ByRef Offset As %Integer, ByRef FileName As %String) As %Status
{
}

Method InTransactionGet() As %Integer
{
}

Method ProcessIDGet() As %Integer
{
}

Method JobIDGet() As %Integer
{
}

Method RemoteSystemIDGet() As %Integer
{
}

Method ECPSystemIDGet() As %Integer
{
}

Method TimeStampGet() As %TimeStamp
{
}

/// a place holder
Method Restore(Detail As %Integer) As %Status
{
}

Method Fetch(ByRef Row As %List, ByRef Columns As %String, Match As %List = "") As %Boolean [ Internal, PublicList = (col, match, Row, Columns) ]
{
}

/// Returns a list of journal records.<br>
/// Comparable (pseudo-)SQL statement:<pre>
///   SELECT Columns FROM FileName WHERE Offsets... AND Match(Column)...
/// </pre>
/// Parameters:<p><dl><dt>
/// FileName</dt><dd>
///   Full path of the journal file</dd><dt>
/// Columns</dt><dd>
///   (Optional) Names of the selected columns as either a comma-delimited string or an array with column names being the keys.<br>
///   If unspecified or given as "*", all available columns are returned.<br>
///   Note: Availability of a column depends on the type of a record and other circumstances. For example, the "OldValue" column applies to only <em>some</em> SET or KILL records (<class>SetKillRecord</class> or derived)</dd><dt>
/// Offsets</dt><dd>
///   (Optional) An array of the addresses of the selected records.<br>
///   Independently, the top node gives the offset to begin listing records with. When combined with the ReverseOrder parameter, this limits the records to those with Address >= Offsets (if ReverseOrder is 0 or not specified) or Address <= Offsets (if ReverseOrder is 1)</dd><dt>
/// ReverseOrder</dt><dd>
///   (Optional) If 1, list records in the reverse order of their addresses.</dd><dt>
/// Match</dt><dd>
///   (Optional) A LIST string to select records whose value in a certain column meets a certain criterion.<br>
///   The string consists of three elements:<ol><li>
///     Column name</li><li>
///     Operator (e.g., "[", "=", etc.)</li><li>
///     Value</li></ol>
///   representing the operation: [Column name] [Operator] [Value] (e.g., Address > 160000).
/// </dd></dl>
/// Examples:<p>
/// To retrieve all available info about all records in current journal file,<example>
/// s rs=##class(%ResultSet).%New("%SYS.Journal.Record:List")
/// s jrnf=##class(%SYS.Journal.System).GetCurrentFileName()
/// w rs.Execute(jrnf)
/// </example>To retrieve selected columns of the records located <em>before or at</em> file offset 160000 (i.e., Address &le; 160000),<example>
/// w rs.Execute(jrnf,"Address,Type,GlobalNode",160000,1)
/// </example>Note that while the columns "Address" and "Type" are available for all records, the "GlobalNode" column is available for SET or KILL records (of class type <class>SetKillRecord</class> or its derived classes) only.<p>
/// To retrieve all available columns of records involving the ^SYS global (but not its subnode),<example>
/// w rs.Execute(jrnf,,,,$lb("GlobalNode","=","SYS"))
/// </example>
ClassMethod ListExecute(ByRef qHandle As %Binary, FileName As %String, ByRef Columns As %String, ByRef Offsets As %Integer, ReverseOrder As %Boolean = 0, Match As %List = "") As %Status [ Internal ]
{
}

ClassMethod FetchRows(ByRef qHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef AtEnd As %Integer) As %Status
{
}

ClassMethod ListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

/// 	Utility classmethod for ZUGetAttr, duplicate of SetKillRecord class GlobalNodeGet method (not a class method)
///
ClassMethod ZUGlobalNodeGet(offset As %Integer) As %String [ Internal ]
{
}

/// 	Utility classmethod for ListFetch: iterate over journal records to find the next one satisfying the matching criteria
///
ClassMethod ZUFetch(ByRef qHandle As %Binary, offset As %Integer, ByRef Row As %List) As %Boolean [ Internal ]
{
}

ClassMethod ListClose(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

/// [For use in a journal restore filter or shadow filter (^ZJRNFILT) only] Given a comma-delimited string of jid (job id) and remsysid that is passed to the user-specified filter, return the real pid (if available) and ECP system id (if any).<br><ul><li>
/// 					jidsys = jid,remsysid </li><li>
/// 					ecpsysid = a real ECP system ID <li><li>
/// 					return: a real PID or "" </li></ul>
///
ClassMethod GetRealPIDSYSinFilter(jidsys As %String, ByRef ecpsysid As %Integer) As %String
{
}

}
