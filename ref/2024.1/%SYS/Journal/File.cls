/// Journal file related API
Class %SYS.Journal.File Extends %Persistent [ StorageStrategy = JournalFileStorage, System = 4 ]
{

Parameter READONLY = 1;

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

/// Path of the journal file
Property Name As %SysPath [ ReadOnly ];

Property Chan As %Integer [ InitialExpression = -1, Internal, ReadOnly ];

/// The end of the last valid record in the journal file (applicable to open file only)
Property End As %Integer [ Calculated ];

/// Object reference to the first record in the journal file (applicable to open file only)
Property FirstRecord As %SYS.Journal.Record [ Calculated ];

/// Object reference to the last record in the journal file (applicable to open file only)
Property LastRecord As %SYS.Journal.Record [ Calculated ];

/// Object reference to the last marker record in the journal file (applicable to open file only)
Property LastMarker As %SYS.Journal.Marker [ Calculated ];

/// Cluster start time in time(0) format (i.e., # of seconds since the Epoch)
/// or 0 if not a cluster journal file
Property ClusterStartTime0 As %Integer [ Calculated ];

/// Cluster start time in %TimeStamp format or "" if not a cluster journal file
Property ClusterStartTime As %String [ Calculated ];

Method %LoadData(FileName As %String, flag As %Boolean) As %Status [ Private ]
{
}

/// To open a journal file for record retrieval
Method Open(FileName As %String) As %Status
{
}

Method %OnClose() As %Status [ Private ]
{
}

Method %OnNew() As %Status [ Private ]
{
}

/// To use an open journal file for record retrieval (necessary when you have multiple journal file instances
/// open at the same time and need to switch from one file to another).
Method Use() As %Integer
{
}

Method EndGet() As %Integer
{
}

/// TRUE if the given <parameter>FileName</parameter> is a journal file
ClassMethod IsValidJournal(FileName As %String) As %Status
{
}

Method FirstRecordGet() As %SYS.Journal.Record
{
}

Method LastRecordGet() As %SYS.Journal.Record
{
}

Method ClusterStartTime0Get() As %Integer
{
}

Method ClusterStartTimeGet() As %String
{
}

/// Return the object reference to the record at the given journal location (<parameter>Address</parameter>)
Method GetRecordAt(Address As %Integer) As %SYS.Journal.Record
{
}

/// Return the object reference to the record after the given journal location (<parameter>Address</parameter>)
Method GetRecordAfter(Address As %Integer) As %SYS.Journal.Record
{
}

/// Return the object reference to the record prior to the given journal location (<parameter>Address</parameter>)
Method GetRecordBefore(Address As %Integer) As %SYS.Journal.Record
{
}

Method LastMarkerGet() As %SYS.Journal.Record
{
}

/// Purpose: Get journal file prior to the given journal file <p>
/// InSession: whether to limit the search within a journal session (default=NO)
ClassMethod GetPrev(FileName As %String = "", ByRef PrevFileName As %String, InSession As %Boolean, MirOnly As %Boolean = 0, MirrorSetName As %String = "") As %Status
{
}

/// Purpose: Get journal file following the given journal file <p>
ClassMethod GetNext(FileName As %String, ByRef NextFileName As %String, MirOnly As %Boolean = 0, MirrorSetName As %String = "") As %Status
{
}

/// Purpose: Get max size of a journal file
ClassMethod GetMaxSize(FileName As %String) As %Integer
{
}

/// Get the GUID assigned to the given journal file.
///
ClassMethod GetGUID(FileName As %String) As %String [ CodeMode = expression ]
{
}

/// Get the GUID assigned to this system in the mirror configuration file. <br>
/// This is used to help people identify which system created the journal file.<br>
/// Since this comes from the config file, it's possible that this can change over time but its not supposed to.
ClassMethod GetSystemGUID(FileName As %String) As %String [ CodeMode = expression ]
{
}

ClassMethod GetMirrorGUID(FileName As %String) As %String [ CodeMode = expression ]
{
}

/// Purpose: Check integrity of the journal file(s) <br>
/// jrnlist can be either a file path or, if passed by reference, a number-indexed array of file paths, e.g.: <br>
/// jrnlist(1)=path1, jrnlist(2)=path2, etc. <br>
/// The file paths in the array should be in chronicle order, that is, path1 and
/// path2 are assumed to have been created consecutively in the example above.
/// If it is determined that the files in the given array do not meet that
/// criterion, a single value 0 is returned (for "Invalid Parameter") and the top
/// node of the array is set to the number index of the offending path. <br>
/// Detail: If 1, scan each given journal file forward to locate the last record and verify it is the last record to be expected.<br>
/// 	If 2, verify values stored in each record are retrievable.<br>
/// If SrcDirs is set to 1 and passed by reference, the database directories used in the
/// specified journal file(s) will be stored in SrcDirs array upon return.
ClassMethod CheckIntegrity(ByRef jrnlist As %String, Detail As %Integer = 0, ByRef SrcDirs As %String, quietly As %Integer = 1) As %Status
{
}

/// Purpose: Check integrity of a journal file <br>
ClassMethod CheckIntegrityOne(path As %String, scan As %Integer = 0, jrnend As %Integer, ByRef jrnsrcdir As %String, quietly As %Integer) As %Status [ Internal ]
{
}

/// 	Locate journal files given in JrnFileList in the directories given in LocDirList
///
ClassMethod Locate(ByRef LocatedFiles As %String, ByRef JrnFileList As %String, LocDirList As %String) As %Status [ Internal ]
{
}

/// 	Returns OK and a list of local journal files (as SelectedFiles)
/// 	between FirstFile and LastFile (inclusive). Error if either FirstFile
/// 	or LastFile is not found. <br>
/// 	FirstFile (and LastFile) can be a full path, a file name (yyyymmdd.nnn)
/// 	with or without a prefix or a GUID representing the file.<br>
/// 	If FirstFile="" or not specified, it defaults to the first file in journal log.<br>
/// 	If LastFile="" or not specified, it defaults to the last file in journal log.
///
ClassMethod SelectRange(ByRef SelectedFiles As %String, FirstFile As %String = "", LastFile As %String = "", JrnLogPath As %String = "") As %Status [ Internal ]
{
}

/// File can be a full path, a file name (yyyymmdd.nnn) or a GUID representing the file.<br>
/// Path is a full path in canonical form on the original platform.<br>
/// 	Returns <ul><li>
/// 			0: no match; </li><li>
/// 			1: File matches the full path; </li><li>
/// 			2: File matches the file name (including prefix); </li><li>
/// 			3: File matches the file name without prefix; </li><li>
/// 			4: File matches GUID.</li></ul>
///
ClassMethod Match(File As %String, Path As %String, GUID As %String) As %Status [ Internal ]
{
}

/// 	Given the full path of a journal file, extract its file name portion
///
ClassMethod ExtractFileName(Path As %SysPath) As %String [ Internal ]
{
}

/// Purpose: (virtually) restore the journal
ClassMethod Restore(FileName As %String, Detail As %Integer = 0) As %Status
{
}

/// Purpose: Regenerate the jobid->PID translation table based on records stored
/// in the specified journal file
ClassMethod RestorePIDList(FileName As %String) As %Status
{
}

/// Return the path of the oldest journal file on each node that is required
/// for cluster recovery, which includes rolling forward and back transactions.<br>
/// FileName = # of nodes where journal recovery is required <br>
/// FileName(csn) = the path of the oldest journal file on node <#csn> <br>
/// If SkipSelf = 1, skip the node where the method is called (local node is covered by RequiredForRecovery()
ClassMethod RequiredForClusterRecovery(ByRef FileName As %String, ByRef FileCount As %Integer, SkipSelf As %Boolean = 0) As %Status
{
}

/// Return the name of the oldest journal file required for crash recovery, which
/// includes rolling forward and backward transactions. <br>
/// FileName="" if journaling is disabled, meaning that none is required, as
/// transactions cannot be rolled forward or backward from a pre-disabling file
ClassMethod RequiredForRecovery(ByRef FileName As %String, ByRef FileCount As %Integer) As %Status
{
}

/// Return the path of the oldest journal file containing open transactions. <br>
/// FileName: the oldest file containing open transactions or current journal file
/// <br>FileCount: the file counter value assigned to the file
ClassMethod RequiredForRollback(ByRef FileName As %String, ByRef FileCount As %Integer) As %Status
{
}

/// Return the path of the last encrypted file no older than OldestFile if given
ClassMethod LastEncrypted(OldestFile As %String = "", csn As %Integer = -1) As %String
{
}

/// Purpose: Purge old journal files based on criteria given in number of days or backups, taking care not to purge files required for transaction rollbacks or crash recovery.<p>
/// Parameters:<ul><li>
/// NDaysOld: journal files must be at least this # of days old to be purged</li><li>
/// NBackupsOld: journal files must be older than this # of successive successful backups to be purged</li></ul>
/// If both parameters are specified, only one criterion has to be met to qualify a journal file for purging (subject to the restriction about rollback and crash recovery).<br>
/// Note: It is the completion date, rather than the creation date, of a file that must meet the date criterion if specified. Thus, a file may not be OK to purge even though the date in its name appears to meet the date criterion.
ClassMethod Purge(NDaysOld As %Integer, NBackupsOld As %Integer) As %Status
{
}

/// Purge <em>all</em> journal files except those required for transaction rollbacks or crash recovery.<br>Warning: Post-backup journal files are not necessarily preserved.
ClassMethod PurgeAll() As %Status
{
}

/// Purpose: Purge the journal file with the given name <p>
/// Warning: This method does NOT check for open transactions before deleting the journal file.<p>
/// FilePath: the full path of the journal file to purge <br>
/// PurgeTimeH: Time of purging in $H format <br>
/// LogOnly: if 1, skip purging and log the purged file only. Default = 0
ClassMethod PurgeOne(FilePath As %String, PurgeTimeH As %String, LogOnly As %Integer = 0) As %Status
{
}

/// Purpose: Archive old journal files based on criteria given in number of seconds or backups, taking care not to archive files required for transaction rollbacks or crash recovery.<p>
/// Parameters:<ul><li>
/// NSecondsOld: journal files must be at least this # of seconds old to be archived</li><li>
/// NBackupsOld: journal files must be older than this # of successive successful backups to be archived</li></ul>
/// If both parameters are specified, only one criterion has to be met to qualify a journal file for archiving (subject to the restriction about rollback and crash recovery).<br>
/// Note: It is the completion time, rather than the creation time, of a file that must meet the time criterion if specified. Thus, a file may not be OK to archive even though its timestamp appears to meet the time criterion.
ClassMethod Archive(NSecondsOld As %Integer, NBackupsOld As %Integer) As %Status
{
}

/// Archive <em>all</em> journal files except those required for transaction rollbacks or crash recovery.<br>Warning: Post-backup journal files are not necessarily preserved.
ClassMethod ArchiveAll() As %Status
{
}

/// Purpose: Archive the journal file with the given name <p>
/// Warning: This method does NOT check for open transactions before deleting the journal file.<p>
/// FilePath: the full path of the journal file to archive <br>
/// ArchiveTimeH: Time of archiving in $H format <br>
/// LogOnly: if 1, skip archiving and log the archived file only. Default = 0
ClassMethod ArchiveOne(FilePath As %String) As %Status
{
}

/// Translate the numeric reason for the creation of a new journal file to string form
ClassMethod TranslateReason(reason As %Integer = 0) As %String
{
}

/// Return the reason for the creation of the given journal file (<parameter>File</parameter>) in string form
ClassMethod GetReason(File As %SysPath) As %String [ CodeMode = expression ]
{
}

/// <br>FileCount: the file counter value assigned to the file
ClassMethod Summary(FilePath As %String, ByRef DataFields As %String) As %Status
{
}

/// Returns sfn's and paths/names of databases in a journal file
ClassMethod DatabaseListExecute(ByRef qHandle As %Binary, FilePath As %String) As %Status [ Internal ]
{
}

ClassMethod DatabaseListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod DatabaseListClose(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

/// Returns journal file names and file sizes in the reverse order of time (i.e., latest file first)<br>
/// The file size is the actual size on disk which for compressed files should be smaller than the amount of journal data in the file.
ClassMethod ByTimeReverseOrderExecute(ByRef qHandle As %Binary, FileName As %String = "") As %Status [ Internal ]
{
}

ClassMethod ByTimeReverseOrderFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod ByTimeReverseOrderClose(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

/// Returns journal file names and file sizes in the reverse order of time (i.e., latest file first) for the specified mirror <br>
/// The file size is the actual size on disk which for compressed files should be smaller than the amount of journal data in the file.
ClassMethod MirrorByTimeReverseOrderExecute(ByRef qHandle As %Binary, FileName As %String = "", MirrorSetName As %String = "") As %Status [ Internal ]
{
}

ClassMethod MirrorByTimeReverseOrderFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod MirrorByTimeReverseOrderClose(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

/// 	Returns paths of journal files (along with their mirror names if any) that are eligible for purging based on the default or given criteria.<br>
/// 	DaysToKeep: How many days of journal files to keep. Use default (current system setting) if left unspecified. If 0, none is purgeable; if <0, all files are purgeable except those required for transaction rollback and crash recovery.
ClassMethod PurgeableExecute(ByRef qHandle As %Binary, DaysToKeep As %Integer = "") As %Status [ Internal ]
{
}

ClassMethod PurgeableFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod PurgeableClose(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

/// Information on cluster journal files <br>
/// By default, files are listed in reverse order of time, unless TimeOrder = 1 <br>
/// If FileName is specified, files are listed until FileName is reached (depend on TimeOrder) <br>
/// If CSN is given, only files belong to the node are listed.
ClassMethod ClusterListExecute(ByRef qHandle As %Binary, FileName As %String = "", TimeOrder As %Boolean = 0, CSN As %Integer = -1) As %Status [ Internal, PublicList = (jrninfo, jrninfor) ]
{
}

ClassMethod ClusterListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod ClusterListClose(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

/// Returns addresses of records in a given journal file that match a given string
ClassMethod SearchExecute(ByRef qHandle As %Binary, String As %String, FileName As %String, Offset As %Integer, Backward As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod SearchFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod SearchClose(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

/// Compress a journal file<br>
/// <ul>
/// <li>engine is the name of one of the supported compression engines (eg. lz4, zstd or zlib)</li>
/// <li>chunksz is in MB (range=1-16) and specifies how much uncompressed journal data to pack into one compressed chunk. Larger chunks increase compression
/// efficiency but requires larger buffers and reading more data from disk to access a journal file record.</li>
/// </ul>
/// The engine and chunksz parameters use the default system values if omitted.<br><br>
/// If compression fails a partially created output file is deleted.<br>
/// The output file must not exist to start with or an error is returned.<br>
/// In order to compress an encrypted file the encryption key must be active and the output file will be encrypted.
/// <br><br>
/// <b>Caution:</b> Be careful with file names. If the intention is to create a compressed version of a journal file with the system's naming scheme
/// by appending a 'z' to the name, specify a temporary output file and then rename/move the resulting file if the operation is succesful to
/// the target name. It is best to avoid having incomplete files with a file name the system might look for. Also take care to ensure the output file has the proper filesystem level protection.
ClassMethod Compress(infile As %String, outfile As %String, enginename As %String = "", chunksz As %Integer = 0) As %Status
{
}

/// Decompress a journal file<br>
/// <ul>
/// <li>The output file must not exist or an error is returned</li>
/// <li>If decompression fails, the output file will be deleted</li>
/// <li>To decompress an encrypted file the encryption key must be active and the output file will be encrypted.</li>
/// </ul>
/// <b>Caution:</b> Be careful with file names and locations. If the intention is to create a uncompressed version of a journal file with the system's naming scheme
/// by removing the 'z' from the name it is best to specify a temporary file name and then rename/move the resulting file if the operation
/// is succesful to the desired target name. When opening a journal file the system first tries to open the uncompressed version. If it opens a file
/// which is being generated it may think that the file is smaller than it actually is (the size will be determined when it is opened) and
/// may return incorrect results. Also take care to ensure that the output file has the proper filesystem level protection.
ClassMethod Decompress(infile As %String, outfile As %String) As %Status
{
}

}
