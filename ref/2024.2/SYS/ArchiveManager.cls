/// Managing Archive
Class SYS.ArchiveManager Extends %RegisteredObject
{

ClassMethod ZFFlags(Verbose As %Boolean) As %String [ Internal ]
{
}

/// 	Put a file given by 'FilePath' on a given archive destination. <br>
/// Parameters:<br>
/// 	FilePath: the path of the source file <br>
/// 	ArchiveName: the name of the archive destination defined in CPF file <br>
/// 	ArchiveSpec (input/output): the specification of the archive destination, i.e., a comma-delimited string of the type and the location of the archive destination. <br>
/// 	Move: whether to remove the source file. Default is No. <br>
/// 	Verbose: whether to display output messages from the command. Default is No.
///
ClassMethod PutFile(FilePath As %SysPath, ArchiveName As %String, ByRef ArchiveSpec As %String, Move As %Boolean = 0, Verbose As %Boolean = 0) As %Status
{
}

/// 	Copy a file to 'FilePath' from a given archive source. <br>
/// Parameters:<br>
/// 	FilePath: the path of the destination file <br>
/// 	ArchiveSpec: the specification of the archive source, i.e., a comma-delimited string of the type and the location of the archive source. <br>
/// 	Move: whether to remove the file from the archive source. Default is No. <br>
/// 	Verbose: whether to display output messages from the command. Default is No.
///
ClassMethod GetFile(FilePath As %SysPath, ArchiveSpec As %String, Move As %Boolean = 0, Verbose As %Boolean = 0) As %Status
{
}

/// 	Delete a file from a given archive target. <br>
/// Parameters:<br>
/// 	FileName: the name of the file to delete (case sensitive)<br>
/// 	ArchiveSpec: the specification of the archive target where the file is located, i.e., a comma-delimited string of the type and the location of the archive target. <br>
/// 	Verbose: whether to display output messages from the command. Default is No.
///
ClassMethod DeleteFile(FileName As %SysPath, ArchiveSpec As %String, Verbose As %Boolean = 0) As %Status
{
}

/// Parse and store info from ^%SYS("JOURNAL","ARCHIVED","-") in an array of %List strings.<br>
/// QTI: the index # for $$$ISCQUERYTEMP
///
ClassMethod CollectNonMirrorFilesInfo(QTI As %Integer, ArchiveType As %String = "", Location As %String = "") As %Status [ Internal ]
{
}

/// Parse and store info from ^%SYS("JOURNAL","ARCHIVED",MirrorName) in an array of %List strings.<br>
/// QTI: the index # for $$$ISCQUERYTEMP
///
ClassMethod CollectMirrorFilesInfo(QTI As %Integer, MirrorName As %String, ArchiveType As %String = "", Location As %String = "") As %Status [ Internal ]
{
}

///  List archived files.<br>
///  <br>
///  Parameters:<br>
///  <b>FileType</b> - <br>
///  <var>""</var> - All record match<br>
///  <b>MirrorName</b> - Name of the mirror set or "" for non-mirrored journal file.<br>
/// <b>FilePath</b> - path of the file before archived<br>
///  <b>ArchiveType</b> - type of the archive target <br>
///  <var>s3</var> - AWS S3<br>
///  <var>rsync</var> - rsync (Unix) or robocopy (Windows)<br>
///  <b>Location</b> - where the archived file is, e.g., s3://myBucket (s3), host:/dir (rsync) or \\server\dir\ (robocopy) <br>
///
ClassMethod FileListExecute(ByRef qHandle As %Binary, FileType As %String = "", MirrorName As %String = "", ArchiveType As %String = "", Location As %String = "") As %Status
{
}

ClassMethod FileListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

ClassMethod FileListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListExecute ]
{
}

}
