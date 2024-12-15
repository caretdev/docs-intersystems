/// Class to start, monitor and control the Database Defragmentation utiltity running in the background.
/// The method run in the background is the Defragment method of <CLASS>SYS.Database</CLASS>.
/// <p>
/// To start it
/// <pre>	set oref=##class(SYS.Database.BackgroundDefragment).Start(Directory)</pre>
/// See the FileCompact method of <CLASS>SYS.Database</CLASS> for description of the parameters above.
/// <p>
/// <METHOD>Start</METHOD> returns an oref to an object of this class that can be inspected and
/// reloaded to get status and progress updates.  See superclass <CLASS>%SYS.BackgroundTask</CLASS>
/// for detailed information on features of this object.
Class SYS.Database.BackgroundDefragment Extends %SYS.BackgroundTask
{

/// Database directory on which to operate
Property Database As %SysPath;

/// Disposition for cancel requests.
/// <p>
///  0 - not allowed<br>
///  1 - polls for cancel requests<br>
/// -1 - directly terminate the process
Parameter CANCELDISPOSITION = -1;

Method Execute(dir) As %Status [ Internal, Private ]
{
}

Method OnStarting(dir) As %Status [ Internal, Private ]
{
}

ClassMethod GetDisplayInfo(Output array) As %List [ Internal ]
{
}

}
