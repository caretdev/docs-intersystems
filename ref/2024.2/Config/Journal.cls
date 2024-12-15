/// This class allows you to modify and view the [Journal] section of the CPF file through
/// programatic APIs. While properties are usually modified through the System Management
/// portal, there may be some occasion where modifying them through the API's is best
/// for your system. In all the Config methods, if you do not specify the CPFFile parameter,
/// the currently active CPF file is used. If you wish to modify a CPF file which is not
/// the currently active one, then specify the CPFFile you wish to modify in the method call.<br>
/// The Flags parameter does not normally need to be specified; the defaults are usually
/// sufficient for most cases.<br>
/// You can use the provided API's (Get/Modify) to modify the properties by passing
/// in the correct parameters.<br>
/// <br>
/// NOTE: You cannot use object syntax to directly modify the [Journal] parameters. You MUST
/// use the API's found in this class.
/// <br>
/// <br>
/// EXAMPLE:<br>
/// <br>
/// <pre>
/// ; Use class methods to modify properties
/// %SYS>s Status=##Class(Config.Journal).Get(.Properties)
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// %SYS>zw Properties
/// Properties("AlternateDirectory")="C:\AppDB1\Mgr\Journal\"
/// Properties("ArchiveName")=""
/// Properties("BackupsBeforePurge")=2
/// Properties("CurrentDirectory")="C:\AppDB1\Mgr\Journal\"
/// Properties("CompressFiles")=1
/// Properties("DaysBeforePurge")=2
/// Properties("FileSizeLimit")=2048
/// Properties("FreezeOnError")=0
/// Properties("JournalFilePrefix")=""
/// Properties("JournalcspSession")=1
/// Properties("PurgeArchived")=0
/// %SYS>s Properties("FileSizeLimit")=1024
/// %SYS>s Status=##Class(Config.Journal).Modify(.Properties)
/// %SYS>i 'Status w !,"Error="_$SYSTEM.Status.GetErrorText(Status)
/// </pre>
Class Config.Journal Extends (%Persistent, Config.CommonSingleMethods, Config.CommonProperties, %SYSTEM.Help) [ Final, Inheritance = right, System = 4 ]
{

/// Setting this flag keeps the journal updates outside of a transaction
/// When %Save() is called in the API's.<br>
Parameter NOTRANSACTIONS = 1;

/// Alternate journal directory.<br>
Property AlternateDirectory As %SysPath;

Method AlternateDirectorySet(Directory As %SysPath) As %Status [ Internal ]
{
}

/// The destination for archiving journal files, given as the name of an archive target defined in the [Archives] section. <br>
Property ArchiveName As %String(MAXLEN = 256);

/// Number of backups before the journal files (or the archived copies) are automatically purged.<br>
Property BackupsBeforePurge As %Integer(MAXVAL = 10, MINVAL = 0) [ InitialExpression = 2 ];

/// Primary journal directory.<br>
Property CurrentDirectory As %SysPath;

Method CurrentDirectorySet(Directory As %SysPath) As %Status [ Internal ]
{
}

/// Whether to purge journal files as soon as they are copied to archive. <br>Note that purging never occur if files are needed by the system (for crash recovery, mirroring, etc.)
Property PurgeArchived As %Boolean [ InitialExpression = 0 ];

/// Number of days before the journal files are purged.<br>
Property DaysBeforePurge As %Integer(MAXVAL = 100, MINVAL = 0) [ InitialExpression = 2, Required ];

/// Maximum size of each journal file in MB.<br>
Property FileSizeLimit As %Integer(MAXVAL = 4079, MINVAL = 0) [ InitialExpression = 1024, Required ];

/// Freeze the system if there is an error writing to the journal.<br>
/// If this option is set to true (1), as soon as the error occurs all global activities
/// that are normally journaled are blocked, which causes other jobs to block.
/// The typical outcome is that the system goes into a hang state until the journaling problem is
/// resolved, and then resumes running. While InterSystems IRIS is hanging, the administrator can take
/// corrective measures, such as freeing up space on a disk that is full, switching the journal
/// to a new disk, etc. This option has the advantage that once the problem is fixed and
/// InterSystems IRIS resumes running, no journal information has been lost.
/// It has the disadvantage that the system is less available while the problem is being solved.<br>
/// If this option is set to false (0), when a journaling error occurs journaling is
/// entirely disabled, while the system continues running as normal.
/// The system sends a console message to alert the administrator, who can fix the problem and then
/// run ^JRNSWTCH at the console to restart journaling.
Property FreezeOnError As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];

/// %cspSession global will be mapped to the TEMP database and not journaled.<br>
Property JournalcspSession As Security.Datatype.BooleanYN [ InitialExpression = 0, Required ];

/// Prefixes journal file names with this string.<br>
/// May be used to distinguish journal files from different instances in the same directory.<br>
Property JournalFilePrefix As %String(MAXLEN = 64, MINLEN = 0);

/// Optional property CompressFiles when set indicates that journal files should be
/// compressed after they are created. Files are created in uncompressed form and a
/// compression job watches for new files to process. Compressed journal files have a 'z'
/// appended to the end of the file type (sequence number). Journal files are accessed by
/// their uncompressed filename and the system adds the 'z' if needed. Files are compressed
/// and then deleted so as not to cause problems with a file which is in use while it is being
/// compressed. If a file cannot be deleted because it is being used, it is added to a list to be retried later.
Property CompressFiles As Security.Datatype.BooleanYN [ InitialExpression = 1, Internal ];

ClassMethod IsJrnDirValid(Directory As %String, Prefix As %String) As %Status [ Internal ]
{
}

/// Validate the journal file prefix name.<br>
ClassMethod JournalFilePrefixIsValid(Val As %String) As %Status [ Internal ]
{
}

/// Load the parameters into memory and activate.<br>
/// Parameters:<br>
/// <b>Obj</b> = Handle to the object which caused the load. If "",
/// then load everything, only called from STU.<br>
/// <b>Flags</b> = Type of modification.<br>
/// 0 - Modify<br>
/// 1 - Create/Insert<br>
ClassMethod Load(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]
{
}

/// Load the parameters into ^CONFIG() as activate.<br>
/// Parameters:<br>
/// <b>Obj</b> = Handle to the object which caused the load. If "",
/// then load everything, only called from STU.<br>
/// If a delete operation, then Obj is the NAME of the item which was deleted
/// since the oject itself has already been deleted.<br>
/// <b>Flags</b> = Type of modification.<br>
/// 0 - Modify<br>
/// 1 - Create/Insert<br>
/// 2 - Delete<br>
ClassMethod MoveToActive(Obj As %ObjectHandle = "", Flags As %Integer = 1) As %Status [ Internal ]
{
}

ClassMethod Verify(Directory As %String, Prefix As %String) As %Status [ Internal ]
{
}

/// Called from %Save().<br>
Method %OnValidateObject() As %Status [ Internal ]
{
}

/// Find the longest mirror set name configured and return mirror prefix.
/// Return null if no mirror is configured.
ClassMethod GetMirrorPrefix() As %String [ Internal ]
{
}

/// TimeValue: in seconds<br>
/// Returned value: in seconds, minutes, hours or days, whichever is the largest unit that makes the returned value a whole number.<br>
/// ScaleFactor: Returned value * ScaleFactor = TimeValue
///
ClassMethod TranslateTime(TimeValue As %Integer, ByRef ScaleFactor As %Integer) As %Integer
{
}

}
