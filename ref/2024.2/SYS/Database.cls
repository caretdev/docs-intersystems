///  Manages Database Operations.<br>
///  <br>
///  To Create a new database with the system defaults do the following:<br>
///  <br>
///  Set db=##Class(SYS.Database).%New()<br>
///  Set db.Directory=Directory<br>
///  Set status=db.%Save()<br>
///  <br>
///  To modify an existing Database, do the following:
///  <br>
///  Set db=##Class(SYS.Database).%OpenId(Directory)<br>
///  //Set the property you want to modify:<br>
///  Set db.ExpansionSize=100<br>
///  Set status=db.%Save()<br>
///  <br>
///  Properties which can be set for database creation are:<br>
///  &nbsp&nbsp&nbsp Directory<br>
///  &nbsp&nbsp&nbsp BlockSize<br>
///  &nbsp&nbsp&nbsp EncryptedDB<br>
///  &nbsp&nbsp&nbsp EncryptionKeyID<br>
///  &nbsp&nbsp&nbsp Size<br>
///  &nbsp&nbsp&nbsp ExpansionSize<br>
///  &nbsp&nbsp&nbsp MaxSize<br>
///  &nbsp&nbsp&nbsp MirrorDBName<br>
///  &nbsp&nbsp&nbsp MirrorSetName<br>
///  &nbsp&nbsp&nbsp GlobalJournalState<br>
///  &nbsp&nbsp&nbsp NewGlobalCollation<br>
///  &nbsp&nbsp&nbsp NewGlobalIsKeep<br>
///  &nbsp&nbsp&nbsp NewGlobalGrowthBlock<br>
///  &nbsp&nbsp&nbsp NewGlobalPointerBlock<br>
///  &nbsp&nbsp&nbsp ClusterMountMode<br>
///  &nbsp&nbsp&nbsp ResourceName<br>
///  <br>
///  Properties which can be modified for an already created database are:<br>
///  &nbsp&nbsp&nbsp ReadOnly<br>
///  &nbsp&nbsp&nbsp Size<br>
///  &nbsp&nbsp&nbsp ExpansionSize<br>
///  &nbsp&nbsp&nbsp MaxSize<br>
///  &nbsp&nbsp&nbsp GlobalJournalState<br>
///  &nbsp&nbsp&nbsp NewGlobalCollation<br>
///  &nbsp&nbsp&nbsp NewGlobalIsKeep<br>
///  &nbsp&nbsp&nbsp NewGlobalGrowthBlock<br>
///  &nbsp&nbsp&nbsp NewGlobalPointerBlock<br>
///  &nbsp&nbsp&nbsp ClusterMountMode<br>
///  &nbsp&nbsp&nbsp ResourceName<br>
///  <br>
///  Read-only properties which are managed by the system and cannot be modified are:<br>
///  &nbsp&nbsp&nbsp Expanding<br>
///  &nbsp&nbsp&nbsp LastExpansionTime<br>
///  &nbsp&nbsp&nbsp Mounted<br>
///  &nbsp&nbsp&nbsp ReadOnlyMounted<br>
///  &nbsp&nbsp&nbsp ClusterMounted<br>
///  &nbsp&nbsp&nbsp Mirrored<br>
///  &nbsp&nbsp&nbsp MirrorNoWrite<br>
///  &nbsp&nbsp&nbsp MirrorActivationRequired<br>
///  &nbsp&nbsp&nbsp MirrorFailoverDB<br>
///  &nbsp&nbsp&nbsp InActiveMirror<br>
///  &nbsp&nbsp&nbsp MirrorObsolete<br>
///  <br>
/// The maximum value of the 'MaxSize' property depends on the block size of the database, as follows:<br>
///  &nbsp&nbsp&nbsp  17 TB  (16777080 MB) for 4K database.<br>
///  &nbsp&nbsp&nbsp  34 TB  (33553904 MB) for 8K database.<br>
///  &nbsp&nbsp&nbsp  67 TB  (67106832 MB) for 16K database.<br>
///  &nbsp&nbsp&nbsp 134 TB (134202016 MB) for 32K database.<br>
///  &nbsp&nbsp&nbsp 268 TB (268392960 MB) for 64K database.<br>
///  <br>
/// When 'MaxSize' or 'Size' peoperty is modified InterSystems IRIS instance internally adjusts the 'MaxSize' and 'Size' peoperties when:<br>
///  &nbsp&nbsp&nbsp 1) Setting 'MaxSize' which is over the maximum value then it is set with the maximum value.<br>
///  &nbsp&nbsp&nbsp 2) Setting 'MaxSize' which is less than 'Size' then it is set with the value of 'Size'.<br>
///  &nbsp&nbsp&nbsp 3) Setting 'Size' which is greater than 'MaxSize' then the 'Size' is increased to the value of 'MaxSize'.<br>
///  <br>
Class SYS.Database Extends (%Persistent, %SYSTEM.Help) [ Final, Inheritance = right, StorageStrategy = DBStorage, System = 4 ]
{

///  Default Localization Domain
Parameter DOMAIN = "%Utility";

///  1 for old version 2KB block size database format, 2 for current format
Property BlockFormat As %Integer [ InitialExpression = 2, Internal ];

///  Current number of blocks
Property Blocks As %Integer [ InitialExpression = 0, Internal, ReadOnly ];

///  Block size in bytes of the database. <br>
///  Either 2048, 4096, 8192, 16384, 32768, or 65536
Property BlockSize As %Integer(VALUELIST = ",2048,4096,8192,16384,32768,65536") [ InitialExpression = {$$$8k} ];

///  Number of blocks per map
Property BlocksPerMap As %Integer [ InitialExpression = 0, Internal, ReadOnly ];

///  Database is currently cluster mounted
Property ClusterMounted As %Boolean [ InitialExpression = 0, ReadOnly ];

///  Database is configured to be mounted in cluster mode<br>
///  If this property is set then this database has to be mounted explicitly.
Property ClusterMountMode As %Boolean [ InitialExpression = 0 ];

Property CurrentMaps As %Integer [ Internal, ReadOnly ];

///  Directory containing the database
Property Directory As %SysPath;

///  Block where Global directory starts.<br>
///  3 for >2k pages<br>
///  2 or other for 2k pages. New 2k db's can only be 2.
Property DirectoryBlock As %Integer [ InitialExpression = 3, Internal, ReadOnly ];

///  Database is encrypted
Property EncryptedDB As Security.Datatype.BooleanYN [ InitialExpression = 0 ];

///  Database encryption key ID
Property EncryptionKeyID As %String(MAXLEN = 64, MINLEN = 1);

///  Database is expanding.
Property Expanding As %Boolean [ InitialExpression = 0, ReadOnly ];

///  Size in MB to Expand by. <br>
///  0 - Use system defaults (recommended)
Property ExpansionSize As %Integer(MINVAL = 0) [ InitialExpression = 0 ];

///  0 - Database is not marked as full
///  <br>
///  1 - Database is marked as full
Property Full As %Boolean [ InitialExpression = 0, Internal ];

///  Last time database expanded, converted to local time.
Property LastExpansionTime As %String [ InitialExpression = 0, ReadOnly ];

///  Null if not mounted, else the directory containing the last volume.
Property LastVolumeDirectory As %SysPath [ Internal, ReadOnly ];

///  Zero if not mounted, else the size of the last volume in MB
Property LastVolumeSize As %Integer [ Internal, ReadOnly ];

///  Maximum size in MB, 0=unlimited (recommended).
Property MaxSize As %Integer(MINVAL = 0) [ InitialExpression = 0 ];

///  Database is marked as mirrored
Property Mirrored As %Boolean [ InitialExpression = 0, ReadOnly ];

///  Mirror set name of this mirrored database.
Property MirrorSetName As %String;

///  Database name identified in mirror set
Property MirrorDBName As %String;

///  Database has a status of mirrored-no-write which means it is mounted
///  read-only so it cannot be written to.
Property MirrorNoWrite As %Boolean [ InitialExpression = 0, ReadOnly ];

///  Database has a status of activation-required which means it is mounted
///  but there is a problem or it needs to be activated before use.
Property MirrorActivationRequired As %Boolean [ InitialExpression = 0, ReadOnly ];

///  Mirror Database is obsolete due to the database's GUID mismatched with
///  GUID in mirror journal file directory block during dejournaling.
Property MirrorObsolete As %Boolean [ InitialExpression = 0, ReadOnly ];

///  Mirrored Database is on failover members
Property MirrorFailoverDB As %Boolean [ InitialExpression = 0, ReadOnly ];

///  Mirrored Database is created by %New instead of 'Added' to existing DB.
Property MirrorDBCreatedNew As %Boolean [ InitialExpression = 0, ReadOnly ];

///  Mirrored Database is running for CatchupDB.
Property MirrorDBCatchup As %Boolean [ InitialExpression = 0, ReadOnly ];

///  Mirrored Database is paused for dejournaling.
Property MirrorDBPaused As %Boolean [ InitialExpression = 0, ReadOnly ];

///  Database has a status of InActiveMirror which means either we're
///  the primary and the db is read/write and available for use or we're
///  an active backup and the db is being replayed to by the mirror
///  dejournal jobs to keep it updated with changes occurring on the primary.
Property InActiveMirror As %Boolean [ InitialExpression = 0, ReadOnly ];

///  Database is mounted.
Property Mounted As %Boolean [ InitialExpression = 0, ReadOnly ];

///  Default collation for new globals.
Property NewGlobalCollation As %Library.Collate [ InitialExpression = {##Class(%Library.Collate).GetSystemDefaultNumber()} ];

///  Default growth block for new globals.
Property NewGlobalGrowthBlock As %Integer(MINVAL = 50) [ InitialExpression = 50 ];

///  Default Keep value for New globals.
Property NewGlobalIsKeep As Security.Datatype.BooleanYN [ InitialExpression = 0 ];

///  If expansion creates a new volume as described in
///  <PROPERTY>VolumeSize</PROPERTY>), it will be created in this directory.
///  Defaults to <PROPERTY>Directory</PROPERTY> (the same directory as IRIS.DAT)
///  and if this property is null on creation, it will be set to
///  <PROPERTY>Directory</PROPERTY>.  If set to a different directory and that
///  directory is not already in the <PROPERTY>VolumeDirectoryList</PROPERTY>,
///  it will be added on save.
Property NewVolumeDirectory As %SysPath;

///  If 0, expansion of this database will never create a new volume.
///  If non-zero, when the current last volume expands past this size in MB,
///  a new database volume will be created instead.
Property NewVolumeThreshold As %Integer(MINVAL = 0) [ InitialExpression = 0 ];

///  Number of DB configured to this DB diretcory. Only used by Cluster platforms.
Property NumberOfConfigDB As %Integer [ InitialExpression = 0, Internal, ReadOnly ];

///  Run CatchupDB when this mirrored DB is created.
Property RunCatchupDBOnCreate As %Boolean [ InitialExpression = 1 ];

///  Read-Only reason code
Property ROReasonCode As %Integer [ InitialExpression = 0, ReadOnly ];

///  Read-Only reason text.
Property ROReasonText As %String [ ReadOnly ];

///  Journal setting for database.
///  <br>
///  2 - No<br>
///  3 - Yes<br>
Property GlobalJournalState As %Library.JournalState;

///  Block where the index pointer starts.
Property NewGlobalPointerBlock As %Integer(MINVAL = 6) [ InitialExpression = 16 ];

///  Database attribute in label says Read Only.
Property ReadOnly As Security.Datatype.BooleanYN [ InitialExpression = 0 ];

///  Database is mounted for read only
Property ReadOnlyMounted As %Boolean [ InitialExpression = 0, ReadOnly ];

///  0 - Do not reinitialize an existing database.
///  <br>
///  1 - Reinitialize an existing db
Property Reinitialize As %Boolean [ InitialExpression = 0, Internal ];

///  0 - This is not recreating a mirrored DB.
///  1 - Recreating a mirrored DB.
Property ReCreate As %Boolean [ InitialExpression = 0, Internal ];

///  Requesting Size of the DB, though the DB might be created with smaller size.
Property RequestSize As %Integer [ InitialExpression = 0, Internal ];

///  Only used for Merge command property validation.
Property Resource As %String [ Internal, Transient ];

///  Resource name for the database.
Property ResourceName As %String [ InitialExpression = {$$$DBDEFAULTResourceName} ];

///  System File number.
Property SFN As %Integer [ Internal, ReadOnly ];

///  Size in MB.
Property Size As %Integer(MINVAL = 1) [ InitialExpression = 1 ];

///  Database is created but not formatted.
Property Skeleton As %Boolean [ InitialExpression = 0, Internal, ReadOnly ];

///  0 - Force allocation of unused blocks.
///  <br>
///  1 - Do not force allocation of unused blocks (used by temp database)
Property SparseDB As %Boolean [ InitialExpression = 0, Internal ];

///  Number of additional volume files beyond the IRIS.DAT file that comprise
///  this database.  0 if the database is not multi-volume (just an IRIS.DAT)
Property MultiVolume As %Integer [ InitialExpression = 0, ReadOnly ];

///  Block number of the Volume Information Block; 0 if not multi-volume enabled
Property VolumeInfoBlock As %Integer [ InitialExpression = 0, Internal, ReadOnly ];

///  List of additional directories (beyond <PROPERTY>Directory</PROPERTY>)
///  where volumes of this database may be located.
Property VolumeDirectoryList As %List [ ReadOnly ];

///  Disable journaling for Database.
Method DisableJournaling() As %Status
{
}

///  Enable journaling for Database.
Method EnableJournaling(val As %Integer) As %Status
{
}

Method ReadOnlySet(val As %Integer) As %Status [ Internal ]
{
}

Method %OnValidateObject() As %Status [ Internal ]
{
}

///  Overrides the default %LoadData method.
Method %LoadData(id As %String, flag As %Boolean) As %Status [ Internal, Private ]
{
}

///  Overrides the default %SaveData method.
Method %SaveData(id As %String) As %Status [ Internal, Private ]
{
}

/// Return the status of the database.<br>
///  Parameters:<br>
///  Internal - True(default): return plan text of the status. False: return text with current language setting (for displaying).<br>
///  <br>
/// Possible returned texts:<br>
/// Unmounted<br>
/// Dismounted<br>
/// Expanding<br>
/// ClusterMounted/R<br>
/// ClusterMounted/RW<br>
/// Mounted/R<br>
/// Mounted/RW<br>
Method GetStatus(Internal As %Boolean = 1) As %String
{
}

ClassMethod AuditJournalStateChange(db As SYS.Database) As %Status
{
}

///  Prompt for block size.
ClassMethod BlockSizePrompt(Prompt, Obj) [ Internal ]
{
}

///  This checks to see if this configuration allows creating block sizes other than the default, which is 8k.
ClassMethod CheckBlockSizeAllowed(Size As %String) As %Boolean
{
}

///  This checks to see if this configuration can enable a certain block size.<br>
///  valid sizes are:<br>
///  4096,8192,16384,32768,65536<br>
ClassMethod CheckBlockSizeAvailable(Size As %String) As %Boolean [ Internal ]
{
}

Method CheckIntegrity() As %Status
{
}

///  Scans a database for any wide characters.<br>
///  This method is useful if you have a database mounted on a 16 bit system,
///  and you wish to move that database to an 8 bit system. Scanning the
///  database before you move it for wide characters (16 bit characters) will allow you to
///  fix the global references so you can avoid <WIDECHAR> errors after you move the database
///  to the 8 bit system.<br>
///  Parameters:<br>
///  Directory - Database directory to check for wide characters<br>
///  Global - Mask of globals to check, "*"=default.<br>
///  Valid masks are as follows:
///  <br>
///  ABC* - All globals starting with ABC<br>
///  A:D - All globals between A and D<br>
///  A:D,Y* - All globals between A and D, and all globals starting with Y<br>
///  A:D,'C* - All globals between A and D, except those starting with C
///  Return Values:<br>
///  Globals (byref) - Array of global nodes which contain wide characters.<br>
///  Note: The maximum number of nodes returned is 5,000 so <STORE> errors can be avoided.
ClassMethod CheckForWideCharacters(Directory As %String, Mask As %String = "*", ByRef GlobalNodes) As %Status
{
}

///  For all databases selected, if the database has multiple volumes and is
///  mounted in a state that is writeable by the system, triggers an internal
///  update to the metadata in each volume used to validate consistency upon
///  mounting.  If, due to operator error or another problem, volume files of a
///  database are incorrectly copied/restored from a point in time before such
///  a metadata update, while others volumes are from a point after it, then
///  mounting the database will fail in order to prevent the application from
///  running on an inconsistent/damaged/degraded multi-volume database.  The
///  checkpoint is separate for each database and the consistency check is only
///  for consistency of volumes comprising a multi-volume database, not for
///  cross-database consistency.
///  <p>
///  Internally, this is done by generating a nonce that is unique for each
///  database and storing it in the volume information block for each volume.
///  <p>
///  This method may be called periodically and by functions that prepare
///  databases for being copied externally, such as backup, dismount and
///  shutdown.
///  <p>
///  On return, the metadata is not updated on disk, but will be
///  written in the next database write cycle (which, in the case of backup,
///  dismount and shutdown, will be forced in as part of the caller).
///  Returns an error status and logs the error to messages.log if unexpected
///  errors occurred on any of the databases.  Databases that cannot be updated
///  because they are not mounted in a state that's writeable by the system
///  are not treated as error.
///  <p>
///  Parameters:
///  <li>dblist - "*" for all currently mounted databases OR
///               $list of database directories, implicitly mounting if needed.
///
ClassMethod CheckpointVolumes(dblist As %String = "*") As %Status [ Internal ]
{
}

///  Prompt for changing explicit mounting attribute
ClassMethod ClusterMountModePrompt(Prompt, Obj) [ Internal ]
{
}

///  Compact all or selected globals in a database.<br>
///  When GloSel does not exist ($D(GloSel)=0) all globals in the database will be compacted.
///  Otherwise the array of GloSel contains the globals to be compacted.<br>
///  <br>
///  If a global that was selected for compaction is deleted before that global is processed,
///  the global is ignored as if it had not been specified. If detailed progress information is
///  being displayed (global names and compaction level), the global name will be displayed
///  on a blank line, without any compaction details.<br><br>
///  Parameters:<br>
///  <ul>
///  <li><parameter>PercentFull</parameter> Target percentage full for the blocks at the data level. Defaults to 90% if omitted.<br>
///  <li><parameter>MbProcessed</parameter> (by reference) returns how many MB of data was processed<br>
///  <li><parameter>MbCompressed</parameter> (by reference) returns how many MB the data processed occupies at the end of the operation<br>
///  <li><parameter>Display</parameter> True(1) or False(0) as to whether the method should display status output on a per-global
///  basis as it executes. Defaults to False. If True, then <parameter>Device</parameter> controls where the output is displayed. If <parameter>Device</parameter>
///  is omitted, output is written to the current device.<br>
///  <li><parameter>Device</parameter> When <parameter>Display</parameter> is true, this is where the output is displayed. This must already be open although
///  it does not have to be the current I/O device. If omitted and <parameter>Display</parameter> is true, output is written to the
///  current device.<br>
///  <li><parameter>GloSel</parameter> (by reference) If present this is an array passed by reference where the subscripts are the
/// names of the globals to be processed. If omitted, all globals are processed.<br>
/// </ul>
///  <br>
Method Compact(PercentFull As %Integer = 90, ByRef MbProcessed As %Integer, ByRef MbCompressed As %Integer, Display As %Boolean, Device As %String, ByRef GloSel As %String) As %Status
{
}

///  Compact all globals in a database.<br><br>
///  Parameters:
///  <ul>
///  <li><parameter>Directory</parameter> Directory specification of the database to compact.
///  <li><parameter>PercentFull</parameter> Target percentage full for the blocks at the data level. Defaults to 90% if omitted.<br>
///  <li><parameter>MbProcessed</parameter> (by reference) returns how many MB of data was processed<br>
///  <li><parameter>MbCompressed</parameter> (by reference) returns how many MB the data processed occupies at the end of the operation<br>
///  <li><parameter>Display</parameter> True(1) or False(0) as to whether the method should display status output on a per-global
///  basis as it executes. Defaults to False. If True, then <parameter>Device</parameter> controls where the output is displayed. If <parameter>Device</parameter>
///  is omitted, output is written to the current device.<br>
///  <li><parameter>Device</parameter> When <parameter>Display</parameter> is true, this is where the output is displayed. This must already be open although
///  it does not have to be the current I/O device. If omitted and <parameter>Display</parameter> is true, output is written to the
///  current device.<br>
/// </ul>
ClassMethod CompactDatabase(Directory As %String, PercentFull As %Integer = 90, ByRef MbProcessed As %Integer, ByRef MbCompressed As %Integer, Display As %Boolean = 0, Device As %String) As %Status
{
}

///  Copy a database to another directory.<br>
///  This method will copy a source database to a newly created destination database,
///  and optionally replace the source database with the destination database
///  after the copy completes. The main
///  use of this method is to change the blocksize of a database. The destination
///  database which is created will be created with its pages fully packed, all free
///  space removed, and blocks re-ordered. Globals which were created with old ISM collation
///  values of 0-4 will be created with collation 5 (Standard) when they are copied.
///  Globals which have old ISM collations of 128 and 129 will be created with a
///  collation of 133. <br><br>
///  Mirrored databases can be copied however the resulting copy will not be
///  mirrored.<br><br>
///  NOTE: This method is only for use with a local database, it does not work across ECP or
///  on cluster mounted databases. If the database is a cluster mounted database, it must
///  be mounted privately before using this method on it.<br><br>
///  Parameters:<br>
///  SrcDir - Source database directory to copy. This must be a valid database which is
///  mounted on the system. During the copy operation, the Source database will be
///  set to read only.<br>
///  DstDir - New destination database directory to be created. This must be a valid
///  directory specification
///  for the system. If the directory does not exist, it will be created. If DstDir is not
///  specified, then a directory named "cvt" will be created under the source directory. The
///  device where the destination directory specified must have enough free space on it
///  to accommodate the copy. If the destination database already exists, the method will
///  return a failure.<br>
///  BlockSize - If the block size is specified, the newly created database will be created
///  with this size of database blocks. If the block size is not specified, the new database
///  will be created with the same block size of the source database. If the source database is
///  a 2KB database, the destination database will be created with the system default size.
///  The block size specified must be a valid database block size allowed by the system as specified
///  in the Config.Startup.AllowedBlockSizes property, and must have global buffers allocated for
///  that size or larger in the Config.config class.<br>
///  Msg (by ref) - Array of success and error messages returned by the method.<br>
///  Flags - Bit string specifying the following options (Default = 0):<br>
///  Bit 0 - Display progress messages.<br>
///  Bit 1 - Do not set the source directory to read only.<br>
///  Bit 2 - If the destination database already exists, do not generate an error.<br>
///  Bit 3 - Unused.<br>
///  Bit 4 - Replace the source database with the destination database after the copy completes.
///  If the source database is cluster mounted or mirrored, this option is not allowed.<br>
///  WARNING: If you are replacing the source database with the destination database, you MUST
///  make a backup of your source database before running this method.<br>
///  Bit 5 - Set switch 10 (freeze reads and write on the system) for the duration of the copy.
///  Setting this bit will allow the source database to be copied and replaced by the
///  destination database while avoiding having any processes trying to write to the database
///  error with a protect error.<br>
///  Bit 6 - Write the global sets to the journal file. If the Source database is set to not be
///  journaled, then the sets will not be journaled even if this bit is set.<br>
///  Bit 7 - If the original database is encrypted, do not encrypt the copy.<br>
///  Bit 8 - Create the destination database and all the copied globals with the passed in collation.<br>
///  Collation - The destination database is created with this collation if bit 8 is set in the
///  Flags parameter. All globals which are copied here will be created with this collation. The
///  globals collation in the source database will be ignored. The ^COLLATE routine will give a list
///  of the available collations on the system. The collation must be loaded and active on the
///  system to use this parameter. Note that the system globals such as the routine and
///  objects globals will contain to be set to collation 5 (Standard.)
///  <br><br>
///  Examples:<br>
///  Make a copy of the prod database into the test directory.<br>
///  s x=##Class(SYS.Database).Copy("c:\prod\","c:\test\")<br><br>
///  Make a copy of the prod database into the prod\cvt directory with a block size of 16384.
///  Messages and errors are returned in the Msg array.<br>
///  s x=##Class(SYS.Database).Copy("c:\prod\",,16384,.Msg)<br><br>
///  Make a copy of the prod database into the prod\cvt directory with a block size of 16384.
///  After the database is copied, delete the prod database and replace it with
///  the prod\cvt database. Success and error messages are displayed to the screen.<br>
///  s x=##Class(SYS.Database).Copy("c:\prod\",,16384,.Msg,1+16)<br><br>
///  Make a copy of the prod database into the prod\cvt directory with a block size of 16384.
///  Write all the global sets into the journal.<br>
///  s x=##Class(SYS.Database).Copy("c:\prod\","c:\test\,16384,.Msg,64)<br><br>
///  Combine 2 different databases into one test database.<br>
///  s x=##Class(SYS.Database).Copy("c:\prod\","c:\test\,,.Msg,4)<br>
///  s x=##Class(SYS.Database).Copy("c:\prod1\","c:\test\,,.Msg,4)<br><br>
///  Copy the source to the destination, change the blocksize to 32768, then replace
///  the source with the destination. Processes on the system will be frozen while
///  the copy runs. This is useful if you want to do this and not have any processes
///  which write to the database error with a protect error.<br>
///  s x=##Class(SYS.Database).Copy("c:\prod\","c:\test\,32768,.Msg,16+32)<br><br>
///  Change the system database to use an 8192 block size. Freeze the system while
///  the database is copied. This is useful to convert the system database while
///  the system is up and running.<br>
///  s x=##Class(SYS.Database).Copy($zu(12),,8192,.Msg,16+32)<br><br>
///  Change the collation of all the globals to Danish.<br>
///  s x=##Class(SYS.Database).Copy("c:\prod\","c:\test\",8192,.Msg,256,15)<br><br>
ClassMethod Copy(SrcDir As %String, DstDir As %String = "", BlockSize As %Integer = 0, ByRef Msg As %String, Flags As %Integer = 0, Collation As %Integer = 5) As %Status
{
}

///  Compact all globals in a database, using a background job.
ClassMethod JobCompactDatabase(Directory As %String, PercentFull As %Integer = 90, ByRef LogFile As %String) As %Status
{
}

///  Background routine for compacting a database.
ClassMethod JobCompact(Directory As %String, PercentFull As %Integer = 90, LogFile As %String) As %Status
{
}

///  Check the state of a background database compaction.<br>
///  State = 0-(in progress), 1-(finished), 2-(no compaction logged)
ClassMethod DBCompactStatus(Directory As %String, ByRef State As %Integer, ByRef LogFile As %String) As %Status
{
}

ClassMethod CreateOne(ByRef Properties As %String) As %Status [ Internal ]
{
}

/// Create a database using a Properties() array.<br>
/// If the directory does not exist, it will first create it.<br>
/// if the directory and database already exists, it will return success.<br>
ClassMethod Create(Directory As %String, ByRef Properties As %String) As %Status [ Internal ]
{
}

///  Create a database. This assumes the Directory has been created. The Directory can be a relative or absolute path. The Size is in MB. Only the Directory is required.
ClassMethod CreateDatabase(Directory As %String, Size As %Integer = 1, BlockSize As %Integer = {$$$DefaultDatabaseBlockSize}, EncryptedDB As %Boolean = 0, Resource As %String = {$$$DBDEFAULTResourceName}, GlobalJournalState As %Integer, MirrorDBName As %String = "", MirrorSetName As %String = "", RunCatchupDB As %Boolean = 1, MaxSize = 0, ExpansionSize = 0, NewGlobalIsKeep = 0, NewGlobalCollation = {##Class(%Library.Collate).GetSystemDefaultNumber()}, NewVolumeThreshold = 0) As %Status
{
}

///  Create all the necessary system globals in a database.
ClassMethod CreateDefaultGlobals(Directory As %String) As %Status [ Internal ]
{
}

///  Set the default system globals in a database to have the correct
///  Standard collation.<br>
///  Bit 0 - If not set, only diagnose errors and do not modify the database
///  Bit 1 - Do not set switch 10 during the operation
///  Bit 2 - Do not print message array to principal device
ClassMethod FixDefaultGlobalCollation(Directory As %String, Flags As %Integer = 0, ByRef Messages As %String) As %Status
{
}

///  Create a global in a directory with the default unicode collation.<br>
ClassMethod CreateGlobal(Directory As %String, Name As %String) As %Status [ Internal ]
{
}

///  Delete a database.
Method Delete() As %Status
{
}

///  Delete a database.
ClassMethod DeleteDatabase(Directory As %String) As %Status
{
}

ClassMethod DeleteOne(ByRef Properties As %String) As %Status [ Internal ]
{
}

///  Overrides the directory set method
Method DirectorySet(Arg As %String) As %Status [ Internal ]
{
}

///  Dismount a database.
Method Dismount() As %Status
{
}

///  Dismount a database.
ClassMethod DismountDatabase(Directory As %String) As %Status
{
}

/// This method encrypts a database using the default key for encrypting new databases.
/// The database must be dismounted, and the default database encryption key must be activated.
/// If the database is already encrypted, it will be re-encrypted.<br>
/// <br>
/// Input parameters:<br>
/// Directory - the database's directory path (either absolute or relative to the installation directory)<br>
/// <br>
/// Return value:  Return status.
ClassMethod EncryptDatabase(Directory As %String) As %Status
{
}

/// This method decrypts a database.  The database must be dismounted,
/// and the database encryption key that was used to encrypt the database must be activated.<br>
/// <br>
/// Input parameters:<br>
/// Directory - the database's directory path (either absolute or relative to the installation directory)<br>
/// <br>
/// Return value:  Return status.
ClassMethod DecryptDatabase(Directory As %String) As %Status
{
}

///  Prompt for changing encrypted database attribute
ClassMethod EncryptedDBPrompt(Prompt, Obj) [ Internal ]
{
}

ClassMethod ExpansionSizeIsValid(Value, BlockSize = 0) As %Status [ Internal ]
{
}

///  Prompt for expansion size.
ClassMethod ExpansionSizePrompt(Prompt, Obj) [ Internal ]
{
}

Method FindMapBlock(map, bigval) As %Integer [ Internal ]
{
}

///  Return number of MB of free space in a database.
ClassMethod GetDatabaseFreeSpace(Directory As %String, ByRef FreeSpace As %Float) As %Status
{
}

///  Prompt for a directory.
ClassMethod GetDirectory(Prompt, Value, Obj, Min, Max, Help, Flag, Timeout) As %Integer
{
}

///  Return number of MB of free space in a database, and the number of FreeBlocks
ClassMethod GetFreeSpace(Directory As %String, ByRef FreeSpace As %Float, ByRef FreeBlocks As %Integer) As %Status
{
}

///  This runs an integrity check on all or selected databases.
///  For selected databases pass a list of directory names.
ClassMethod IntegrityCheck(Dirnames As %String) As %String
{
}

///  Load field info for editing.
ClassMethod LoadFields(Field, Obj, Old) [ Internal ]
{
}

ClassMethod NewVolumeThresholdPrompt(Prompt, Obj) As %Integer [ Internal ]
{
}

ClassMethod MaxSizeIsValid(Value) As %Status [ Internal ]
{
}

///  prompt for max size.
ClassMethod MaxSizePrompt(Prompt, Obj) [ Internal ]
{
}

///  Modifies parameters of a database.
ClassMethod ModifyDatabase(Directory As %String, Size As %Integer, Resource As %String, GlobalJournalState As %Integer) As %Status
{
}

ClassMethod Modify(Directory As %String, ByRef Properties As %String) As %Status [ Internal ]
{
}

ClassMethod ModifyOne(ByRef Properties As %String) As %Status [ Internal ]
{
}

///  Writes a new <PROPERTY>VolumeDirectoryList</PROPERTY> to a dismounted
///  multi-volume database.
///  <p>
///  This method is to be used when the directories used to store volumes
///  of the database have changed in order to allow the database to be mounted,
///  such as when a copy of the database volumes are restored to a different
///  directory structure (perhaps on a different system).  This method can
///  also be used when volumes of the databases are consolidated from
///  multiple directories back into a smaller number of directories, to remove
///  the unneeded directories from the list.  Note: the primary database
///  directory (the directory containing the IRIS.DAT) is never needed in the
///  VolumeDirectoryList, as that directory is implictly included in the search
///  for volumes.
///  <p>
///  Parameters:
///  <li>Directory - primary database directory (location of the IRIS.DAT)<br>
///  <li>VolDirs - the new value of <PROPERTY>VolumeDirectoryList</PROPERTY> to write<br>
///  <li>NewVolDirNum - the number corresponding to the list element in the VolDirs
///  parameter that is to be the new <PROPERTY>NewVolumeDirectory</PROPERTY>, or
///  0 for the primary directory
///  <p>
///  The database must be dismounted and must have been configured for multiple
///  volumes in the past (e.g. it has multiple volumes or has a non-null
///  VolumeDirectoryList).  Otherwise and error is returned
///  <p>
///  The directories in the VolDirs parameter must have no duplicates and must
///  be different than the primary database directory or an error is returned.
///  If any directory in the list already contains an iris.dbdir file indicating
///  the primary volume directory for volumes in that directory, then it must
///  match the primary volume directory or its an error.  A new iris.dbdir
///  file will be written to each directory that doesn't have one.
ClassMethod ModifyVolumeDirectoryList(Directory As %String, VolDirs As %List, NewVolDirNum As %Integer = 0) As %Status
{
}

///  Manages claiming a directory for use as an additional
///  volume directory for a given database.  This is done via the iris.dbdir
///  file, which users may also control externally when moving / copying /
///  restoring multi-volume databases.
///  <p>
///  Parameters:<br>
///  <li>Directory - primary database directory (location of the IRIS.DAT)<br>
///  <li>VolDir - the additional volume directory to act on
///  <li>Mode - see below
///  <li>EnforceNoVol - True(default): enforce that 'VolDir' must not already
///  contain any volumes, and if it does it's an error. False: no enforcement
///  is done. This parameter is ignored when 'Mode' is 3.
///  <li>Already - set to true upon returning $$$OK if and only if the
///  volume directory was found to have been claimed for this database already.
///  <p>
///  'Mode' parameter is one of:
///  <li>0 - Check: returns $$$OK if the volume directory is already claimed as
///  for this database; else error.
///  <li>1 - IsAvailable?: returns $$$OK if the volume directory is already
///  claimed for this database or is unclaimed; else error.
///  <li>2 - Claim: claims the directory if unclaimed and returns $$$OK on
///  success or if it was already claimed for this database; else error.
///  <li>3 - Disclaim: removes the claim and returns $$$OK on success or if the
///  directory was unclaimed; else error.
ClassMethod UseVolumeDirectory(Directory As %String, VolDir As %String, Mode As %Integer = 0, EnforceNoVol As %Boolean = 1, Output Already As %Boolean) As %Status [ Internal ]
{
}

///  Mount a database
///  <br><br>
///  Uses Readonly, ClusterMountMode and Mirrored properties
///  <br><br>
///  Input Parameters:
///  <ul>
///  <li><parameter>readonly</parameter> defaults to 0 (not readonly). When True causes
///  the database which would normally be mounted read-write to be mounted read-only.
///  Normally a database is only mounted read-only if is not writeable (due to protection
///  or filesystem issues) or if the internal database read-only property is set.
///  <li><parameter>cluster</parameter> defaults to 0 (private mount). This is ignored on
///  non-cluster members. On a cluster member setting this to 1 causes the database to be
///  mounted for clustered (shared) access. If the system is not a cluster member,
///  this will cause the system to try to join the cluster.
///  <li><parameter>mirrorcatchup</parameter> defaults to 1 (start catchup). This parameter is ignored
///  if the system is not a mirror member or if the database being mounted is not a
///  mirrored database. When set to 1 database catchup is started when a mirrored database
///  is successfully mounted. If the current system is an async member which has stopped
///  dejournaling, catchup will run up to the point that dejournaling was stopped (for example, the
///  database will be made "as current" as the other mirrored databases). Otherwise catchup
///  will apply as much journal data as possible and try to link the database into the
///  active dejournaling system. When set to 0 catchup is not started after the mount
///  and must be started manually later. When mounting several mirrored databases it is
///  best to not start catchup as part of the mount but rather start catchup for all the
///  databases using the ^MIRROR utility after they have all been mounted. This is much
///  more efficient as catchup will make a single pass through the journal files to cover
///  all the databases rather than running though the journal files for each database.
///  </ul>
///  <br>
Method Mount(readonly As %Boolean = 0, cluster As %Boolean = 0, mirrorcatchup As %Boolean = 1) As %Status
{
}

///  Mount a database.
ClassMethod MountDatabase(Directory As %String, readonly As %Boolean = 0, cluster As %Boolean = 0, mirrorcatchup As %Boolean = 1) As %Status
{
}

///  Rearranges global blocks within the database specified by <Parameter>Directory</Parameter> so that all of the data blocks for a given global
///  are in consecutive sequence and packed to at least 70% full. The operation does not place big string blocks or pointer blocks from a global
///  in sequence, but it does locate them in a contiguous area.
///  <p>
///  Defragment requires enough free space at the end of the database file to temporarily store all data blocks.
///  If there is insufficient free space at the end, the database will expand as necessary.
///  The amount of free space required is equal to the space in use plus 20MB working space.
///  You may be able to create
///  additional free space at the end by first running <Method>FileCompact</Method>. Following the defragmentation
///  you can return unused space at the end of the database file with <Method>ReturnUnusedSpace</Method>.
///  <p>
///  This method is not available on VMS
ClassMethod Defragment(Directory As %String) As %Status
{
}

/// Helper method to evaluate the viability of defragmenting a database.
/// Returns an error status if the database is not elligible or the user doesn't have
/// enough privilege.
/// <p>
/// Upon success, output variables contain database size statistics related to defragmentation.
/// The UI should check 'overmax'; if true, there probably isn't enough expansion space
/// available for defragmentation to succeed.  In either case, 'expreq' indicates the amount
/// by which defragmentation is expected to need to expand the database.
/// If (freespace-endfree) is a substantial number of MB, then a <METHOD>FileCompact</METHOD>
/// call could make more free space available at the end for defragmentation to use, thus
/// reducing or eliminating the expansion requirement.
/// <p>
/// Output parameters:
///  <li>dbobj - SYS.Database oref
///  <li>datasize - MB of space used </li>
///  <li>endfree - MB of space free at the end of the database </li>
///  <li>freespace - total free space in the database </li>
///  <li>expreq - the approximate (worst case) amount of expansion that defragment will cause </li>
///  <li>overmax - the amount by which 'expreq' exceeds the available expansion space </li>
///
ClassMethod DefragmentCheck(Directory, Output dbobj, Output datasize, Output endfree, Output freespace, Output expreq, Output overmax) As %Status [ Internal ]
{
}

///  Moves free space distributed throughout the database file to its end. You can then return the free space
///  to the file system using <Method>ReturnUnusedSpace</Method>.
///  <p>
///  FileCompact starts at the end of the database file, moving in-use blocks into free space at the beginning. It stops
///  when there is no more free space available, or there is at least <Parameter>TargetFree</Parameter> MB of free space
///  at the end of the file. Specifying 0 for <Parameter>TargetFree</Parameter> reports the amount of free space located
///  at the end of the file without moving any blocks.
///  <p>
///  This method is not available on VMS
///  <p>
///  Input Parameters:
///  <li><parameter>Directory</parameter> - the database directory</li>
///  <li><parameter>TargetFree</parameter> - the desired amount of free space (in MB) at the end of the database.</li>
///  <p>
///  Output Parameters:
///  <li><parameter>ActualFree</parameter> - returns the total amount of space (in MB) at the end of the database
///         which can be returned by truncation. The amount of space available for data storage may be slightly smaller as
///         there are internal control structures which can be freed by trunction but are required if the
///         space is used for data storage.</li>
ClassMethod FileCompact(Directory As %String, TargetFree As %Integer = 0, ByRef ActualFree As %Integer) As %Status
{
}

///  Expands a database into a new volume in a specified directory.
///  This may be used to expand the database into another storage device with
///  more space, preventing further expansion of the current last volume
///  in the storage device where it resides.  It can also be used to create
///  a new volume in the same directory to limit individual file sizes (though
///  the <PROPERTY>NewVolumeThreshold</PROPERTY> can be used to perform
///  that function automatically).
///  <p>
///  The directory where the new volume is created must be specified in the
///  'NewVolDir' parameter.  The directory may be the same directory as the
///  IRIS.DAT file, another directory that already contains volumes of this
///  database, or a different directory.  If the directory doesn't exist, it
///  will be created.  This directory will also be set as the
///  <PROPERTY>NewVolumeDirectory</PROPERTY> and it will therefore be used
///  for any further volumes created automatically due to the
///  <PROPERTY>NewVolumeThreshold</PROPERTY>.
///  <p>
///  The 'InitialSize' parameter specifies the initial size of the volume
///  in MB.  If <PROPERTY>NewVolumeThreshold</PROPERTY> is non-zero, it is
///  taken as an upper bound to InitialSize.
ClassMethod NewVolume(Directory As %String, NewVolDir As %String, InitialSize As %Integer) As %Status
{
}

/// Returns $$$OK if there's room in the volume directory list to store
/// a volume direcotry, or if it's already used by this database. This is a
/// helper used to screen a volume directory prior to taking action.
/// NormalizedNewVolDir must have already been normalized by the caller.
Method CheckVolumeDirectoryMax(NormalizedNewVolDir As %String) As %Status [ Internal ]
{
}

///  Free blocks at the end of the database file are returned to the physical filesystem, and
///  the file is shortened.
///  <p>
///  <parameter>TargetSize</parameter> is the desired size in MB of the resulting file.  Specify 0 to return all available freespace at the
///  end of the file.  On success, <parameter>ReturnSize</parameter> is set to the new file size in MB.
///  <p>
///  Fails and returns error status if a conflicting database operation is in progress in the same database.
///  Conflicting operations include expansion, backup, defragmentation, compaction and ReturnUnusedSpace.
///  <p>
///  Note: Since freespace is not returned all at once when a global is killed, but rather done in the
///  background, there may be a delay following the kill before the space is available to be returned.
///  <p>
///  This method is not available on VMS
ClassMethod ReturnUnusedSpace(Directory As %String, TargetSize As %Integer = 0, ByRef ReturnSize As %Integer) As %Status
{
}

///  prompt for default collation.
ClassMethod NewGlobalCollationPrompt(Prompt, Obj) [ Internal ]
{
}

///  Prompt to preserver global attributes on deletion.
ClassMethod NewGlobalIsKeepPrompt(Prompt, Obj) [ Internal ]
{
}

Method GlobalJournalStateGet() As %JournalState [ CodeMode = expression ]
{
}

///  prompt for global journal state.
ClassMethod GlobalJournalStatePrompt(Prompt, Obj)
{
}

///  prompt for mirror database name
ClassMethod MirrorDBNamePrompt(Prompt, Obj) [ Internal ]
{
}

///  prompt for mirror set name
ClassMethod MirrorSetNamePrompt(Prompt, Obj) [ Internal ]
{
}

///  Prompt for new global's pointer block.
ClassMethod NewGlobalPointerBlockPrompt(Prompt, Obj) [ Internal ]
{
}

///  Prompt for new global's pointer block.
ClassMethod NewGlobalGrowthBlockPrompt(Prompt, Obj) [ Internal ]
{
}

///  Packages the errors from $zu(27)
ClassMethod PackZU27Error(rc As %String) As %Status [ Internal ]
{
}

///  Prompt for changing read only attribute
ClassMethod ReadOnlyPrompt(Prompt, Obj) [ Internal ]
{
}

///  prompt for database resource name
ClassMethod ResourceNamePrompt(Prompt, Obj) [ Internal ]
{
}

///  This class method starts a job that checks the integrity of globals in one or more databases.<br>
/// <br>
///  The parameters are:<br>
/// <br>
///   <li><parameter>Filename</parameter> - File to store results in</li>
///   <li><parameter>dirlist</parameter>  - Optional $list of directories that contain databases to check,
///             by default all databases are checked.</li>
///   <li><parameter>gbllist</parameter>  - Optional $list of globals to check,if specified then dirlist must contain a single database.</li>
///   <li><parameter>StopAfterAnyError</parameter> - set true to stop on error.</li>
ClassMethod SilentIntegrityCheck(Filename As %String, dirlist As %String, gbllist As %String = "", StopAfterAnyError As %Boolean = 0) As %Status
{
}

///  Prompt for database size.
ClassMethod SizePrompt(Prompt, Obj) [ Internal ]
{
}

///  This displays the contents of a file containing the output from a previous call to
///  ##class(SYS.Database).SilentIntegrityCheck(filename) on the current device
ClassMethod ViewIntegrityLog(Filename As %String) As %Status
{
}

///  Provides detail of all local databases (mounted or dismounted) in the systems SFN table.
///  <br><br>
///  Parameters:<br>
///  Mask="*" or $lb(directory1,directory2,...)<br>
///  Notes:<br>
///  Databases which are never mounted are not returned by this query. For example, if the databases in Config.Databases were not mounted at startup, they won't be returned in this query.<br>
///  The Status field is the mount status of the database, and how it is mounted, e.g. "Mounted/RW"<br>
ClassMethod DetailExecute(ByRef qHandle As %Binary, Mask As %String = "*", Unused As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod DetailFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod DetailClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = DetailExecute ]
{
}

///  Provides a freespace list of all local databases mounted in this configuration.
///  <br><br>
///  Note that calculating the free space may take a while.<br>
///  Parameters:<br>
///  Mask="*" or $lb(directory1,directory2,...)<br>
///  For the FreeSpace Report, You can also enter the following in order to select by database name:<br>
///  <var>"String,String1"</var> - Any name matching one of these elements<br>
///  <var>"String*"</var> - Any Name starting with "String"<br>
///  <var>"String,String1*,String2"</var> - Any Name matching one of these elements, or starting with "String1"<br>
///  Notes:
///  Databases which are not mounted are not returned by this query.<br>
ClassMethod FreeSpaceExecute(ByRef qHandle As %Binary, Mask As %String = "*", Unused As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod FreeSpaceFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod FreeSpaceClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = FreeSpaceExecute ]
{
}

///  This runs an integrity check of all local databases mounted in this configuration.<br><br>
///  <br><br>
///  Note that calculating the integrity may take a while.<br>
///  Parameters:<br>
///  Mask="*" or $lb(directory1,directory2,...)<br>
///  Filename - Filename to write Integrity output to<br>
///  Notes:
///  Databases which are not mounted are not returned by this query.<br>
ClassMethod IntegrityExecute(ByRef qHandle As %Binary, Mask As %String, Filename As %String) As %Status [ Internal ]
{
}

ClassMethod IntegrityFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = IntegrityExecute ]
{
}

ClassMethod IntegrityClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = IntegrityExecute ]
{
}

///  Provides a list of all local databases (mounted or dismounted) in the systems SFN table.
///  <br><br>
///  Parameters:<br>
///  Mask="*" or $lb(directory1,directory2,...)<br>
///  Notes:<br>
///  The Status field is the mount status of the database, and how it is mounted, e.g. "Mounted/RW"<br>
///  Databases which are never mounted are not returned by this query. For example, if the databases in Config.Databases were not mounted at startup, they won't be returned in this query.<br>
///  Common routine for database queries.
///  <br><br>
///  Parameters:<br>
///  Mask="*" or $lb(directory names)<br>
///  Flag - Internal use only<br>
///  Flag=0 - Return List columns <Default><br>
///  Flag=1 - Return FreeSpace columns (this may take a while to execute)<br>
///  Flag=2 - Return Detail columns<br>
///  Flag=3 - Return Integrity columns (this may take a while to execute)<br>
///  Flag=4 - Return Compact columns<br>
///  Filename - Used for Integrity Query only
ClassMethod ListExecute(ByRef qHandle As %Binary, Mask As %String = "*", Unused As %Boolean = 0, Flag As %Integer = 0, Filename As %String) As %Status [ Internal ]
{
}

ClassMethod ListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod ListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

Parameter DEFAULTCONCURRENCY = 0;

///  Returns a list of all remote databases for the passed server mounted on this configuration.
///  <br><br>
ClassMethod RemoteDatabaseListExecute(ByRef qHandle As %Binary, Server As %String = "") As %Status [ Internal ]
{
}

ClassMethod RemoteDatabaseListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = RemoteDatabaseListExecute ]
{
}

ClassMethod RemoteDatabaseListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = RemoteDatabaseListExecute ]
{
}

ClassMethod RemoteDatabaseListSMPExecute(ByRef qHandle As %Binary, RemoteServer As %String, HowToLoad As %Integer = 1) As %Status [ Internal ]
{
}

ClassMethod RemoteDatabaseListSMPFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = RemoteDatabaseListSMPExecute ]
{
}

ClassMethod RemoteDatabaseListSMPClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = RemoteDatabaseListSMPExecute ]
{
}

///  Returns a list of globals on the passed server and directory.
///  <br><br>
ClassMethod RemoteGlobalListExecute(ByRef qHandle As %Binary, Server As %String = "", Dir As %String = "") As %Status [ Internal ]
{
}

ClassMethod RemoteGlobalListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = RemoteDatabaseListExecute ]
{
}

ClassMethod RemoteGlobalListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = RemoteDatabaseListExecute ]
{
}

///  Used for formatting database and global sizes in MB, GB, or TB
ClassMethod FormatSizes(val As %Float, RoundDown As %Integer = 0) As %Float
{
}

///  This is a quick query for list of databases.<br><br>
///  Mask="*" or $lb(directory1,directory2,...)<br>
///  Returns SFN, directory, Read Only status, Resource Name, Block size and Collation.<br>
ClassMethod CompactLocalListExecute(ByRef qHandle As %Binary, Mask As %String = "*") As %Status [ Internal ]
{
}

ClassMethod CompactLocalListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = CompactLocalListExecute ]
{
}

ClassMethod CompactLocalListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = CompactLocalListExecute ]
{
}

/// Returns information about each volume that comprise a particular database.
/// If the database is mounted in a normal state, information is returned from
/// memory; otherwise it is fetched from disk.
/// <p>
/// Parameters:<br>
/// Directory - database directory<br>
/// ByVolDir - 0/1:  If 1 and <PROPERTY>VolumeDirectoryList</PROPERTY> is not
/// null then the results will ordered by VolumeDirectory (starting with the
/// primary directory), and any directory that has no volumes will be returned
/// in a row with File="*None*" (for display purposes) and VolumeNumber=-1.  If
/// 0 then rows are returned in volume order, and any empty VolumeDirectory is
/// ignored.
/// <p>
/// Each row returned contains:<br>
/// <li>VolumeNumber - 0 for IRIS.DAT, 1..n for additional volumes,
/// or -1 when File is "*None*" (see below)
/// <li>VolumeDirectory - Either <PROPERTY>Directory</PROPERTY>, one of the
/// directories in the <PROPERTY>VolumeDirectoryList</PROPERTY>, or "*Unknown*"
/// if a volume is missing and its location is uncertain (see below).
/// <li>File - File name for the volume or a special value beginning with "*"
/// as described below
/// <li>Size - Size of volume in MB
/// <li>VolumeDirectoryTotalSize - Size in MB of all volumes in the
/// VolumeDirectory
/// <li>DiskFree - Free space on disk containing the volume in MB; -1 on error.
/// <p>
/// <u>Special Flags</u>
/// <p>
/// File="*None*" and VolumeNumber=-1 indicates a row being returned
/// where VolumeDirectory is a directory in the
/// <PROPERTY>VolumeDirectoryList</PROPERTY> that contains no volumes.
/// <p>
/// File contains "*Missing*" followed by the file name if the volume wasn't
/// found.  In that case, VolumeDirectory="*Unknown*" if there are more than
/// one directory where it could be found (because
/// <PROPERTY>VolumeDirectoryList</PROPERTY> is non-null).
/// <p>
/// File contains "*Conflict*" followed by the file name if the file appears
/// in more than one directory.
/// Build up array of the following form
/// <p>
/// qHandle("d",voldir#) = $lb(voldir,totalsizeinMB,numvols,diskfreespaceinMB)  <br>
/// qHandle("d",voldir#,vol#) = ""  <br>
/// qHandle("v",vol#,voldir#) = $lb(sizeinMB,flag)  <br>
/// <p>
///
/// <u>Exceptional cases:</u>
///
/// <li>If the volume couldn't be found (when returning info from disk)
/// sizeinMB will be 0, flag will be "m" for missing, and voldir#
/// will be 0 if there are no additional directories, or 1 beyond the
/// last, with voldir="*Unknown*" if the directory is unknown.
///
/// <li>If a volume is found in more than one directory (when returning info
/// from disk), flag will be "c" to indicate the conflict, the volume
/// will appear under multiple "v" and "d" array nodes.
ClassMethod VolumeFilesGetArray(ByRef qHandle As %Binary, Directory As %SysPath, ByRef ExFlags As %String) As %Status [ Internal ]
{
}

ClassMethod VolumeFilesExecute(ByRef qHandle As %Binary, Directory As %SysPath, ByVolDir As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod VolumeFilesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PublicList = qHandle ]
{
}

ClassMethod VolumeFilesClose(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

ClassMethod CanDatabaseBeMirrored(Directory As %String) As %Boolean [ Internal ]
{
}

///  Check whether the database directory path is configured as a system database (the DB name as IRISSYS, IRISLIB, IRISLOCALDATA, IRISTEMP, IRISAUDIT, IRISMETRICS).
ClassMethod IsSystemDB(Directory As %String) As %Boolean
{
}

///  This method will clear the MirrorFailoverDB flag in this mirrored DB.
ClassMethod ClearMirrorFailoverDB(Directory As %String) As %Status
{
}

///  This method takes the return string from $ZU(49) and populates the
///  various class parameters with the values. This method only processes
///  zu(49) parameters which come from the characteristics of the database,
///  not its current state. For instance, the sfn is set to SFN_UNDEF, the
///  cluster mount mode is not processed, the mirror state is not considered.
///  This is because depending on who calls this method, we may or may not want
///  that information (yet) so we leave it to the caller to deal with.
Method ParseZU49Info(x As %String, setupMirrorFields As %Boolean) As %Status [ Internal ]
{
}

/// Copy the contents of the non-mirror database at "srcDir" into a new database "destDir".
/// If "mirrorDBname" is provided, the instance is mirrored, and this member is the primary
/// when this method is invoked, the new database will be added to the mirror prior to the
/// copy, ensuring that the contents will be replicated on the backup member if it joins the
/// mirror before journals are flushed.
ClassMethod Clone(srcDir As %String, destDir As %String, mirrorDBname As %String = "") As %Status [ Internal ]
{
}

}
