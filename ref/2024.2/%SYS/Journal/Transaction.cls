Class %SYS.Journal.Transaction Extends %Persistent [ StorageStrategy = JournalFileStorage, System = 4 ]
{

Parameter READONLY = 1;

Property File As %SYS.Journal.File;

Property ProcessID As %Integer;

Property TStart As %SYS.Journal.Record;

Property TStartAddress As %Integer;

Property TerminationType As %String;

Property Records As list Of %SYS.Journal.Record;

Method %LoadData(id As %String) As %Status [ Private, ProcedureBlock = 1 ]
{
}

Method RetrieveSelectedValues(ctpRefs As %Integer, ctpValues As %Integer) As %Status
{
}

/// Returns the virtual location of the TSTART of current transaction,
/// in the form of JournalFileName,JournalFileOffset,JournalFileCount.<br>
/// Note that the TSTART may be physically located in the next file after
/// journal switches.
ClassMethod GetVirtualLocation() As %String
{
}

/// Returns the job number of successive processes with open transactions.<br>
ClassMethod GetOpenTx(Job As %Integer, ByRef TxInfo As %String) As %Status
{
}

/// Returns the timestamp on the txstart record at journal file index and journal file offset.<br>
ClassMethod GetTxJrnTime(tjrncnt As %Integer, tjrnoff As %Integer, ByRef timestamp As %Integer) As %Status
{
}

/// Returns the number of bytes from starting journal file offset to current journal file offset.<br>
ClassMethod GetTxJrnSize(tjrncnt As %Integer, tjrnoff As %Integer, ByRef tjrnbytes As %Integer) As %Status
{
}

/// Query to get transaction metrics<p>
/// SizeMin: limit transactions listed to those whose size exceeds this value.<p>
/// JobNum: job number in pidtab<p>
/// Pid: job process id<p>
/// JournalBytes: number of bytes from starting journal file offset to current journal file offset.<p>
/// JournalFile: full path name of starting journal file.<p>
/// JournalRef: starting journal file refcount.<p>
/// StartOffset: byte offset of TStart record in starting journal file.<p>
/// StartTime: timestamp of the TStart record in $Horolog format
ClassMethod ListExecute(ByRef qHandle As %Binary, SizeMin As %Integer) As %Status [ Internal ]
{
}

ClassMethod ListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod ListClose(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

}
