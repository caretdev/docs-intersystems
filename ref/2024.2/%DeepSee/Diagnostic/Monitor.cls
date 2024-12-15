Class %DeepSee.Diagnostic.Monitor
{

/// Fetch the list of all processes which have AppFrameInfo set. Current activity is returned in<br>
/// <var>pActivity</var>(ID) = appFrameInfo<br>
/// Optionally <var>pTag</var> may be supplied to limit the collection to appFrameInfo which contains the
/// requested tag.
ClassMethod %FetchActivity(Output pActivity, pTag As %String = "*") As %Status
{
}

/// Write current activity to the current device.  The <var>pTag</var> parameter can filter the export to
/// a collection of AppFrameInfo entries pushed to the stack with that identification tag at $LB(frameInfo,1). By default
/// this will collect all AppFrameInfo entries which use the "%BI" tag anywhere in the stack.
ClassMethod %PrintActivity(pTag As %String = "%BI")
{
}

/// Export current activity recorded in the AppFrameInfo to a file. The <var>pTag</var> parameter can filter the export to
/// a collection of AppFrameInfo entries pushed to the stack with that identification tag at $LB(frameInfo,1). By default
/// this will collect all AppFrameInfo entries which use the "%BI" tag anywhere in the stack.
ClassMethod %ExportActivityToFile(pFileName = "", pTag As %String = "%BI") As %Status
{
}

/// Conversion a single stack piece of appFrame data to a printable string.
ClassMethod %ConvertBIFrameToString(pFrameItem As %String, pIndent = 10) As %String
{
}

}
