/// This class implements SASchema which is loaded from an OS file
Class %Studio.SASchemaFile Extends %Studio.SASchema [ System = 4 ]
{

/// The filename is passed in as <var>pParameter</var>.<br>
/// <var>pChecksum</var> is set to the file's modified time.
ClassMethod OutputToStream(pStream As %Stream.Object, Output pChecksum As %String, pParameter As %String = "") As %Status
{
}

/// return true if the file has not been modified
ClassMethod IsUpToDate(pChecksum As %String, pParameter As %String) As %Boolean
{
}

ClassMethod getFilename(pParameter) As %String
{
}

}
