/// Class to start, monitor and control the Database Compaction utiltity running in the background.
/// The method run in the background is the FileCompact method of <CLASS>SYS.Database</CLASS>.
/// <p>
/// To start it
/// <pre>	set oref=##class(SYS.Database.BackgroundFileCompact).Start(Directory,TargetFree)</pre>
/// <p>
/// <METHOD>Start</METHOD> returns an oref to an object of this class that can be inspected and
/// reloaded to get status and progress updates.  See superclass <CLASS>%SYS.BackgroundTask</CLASS>
/// for detailed information on features of this object.
Class SYS.Database.BackgroundFileCompact Extends %SYS.BackgroundTask
{

/// Database directory on which to operate
Property Database As %SysPath;

/// Blocks scanned as part of compaction.  This includes blocks that have been relocated,
/// either explicity because they needed to be moved, or incidentally as part of the operation.
/// Also includes blocks searched as required to move a big string storage block.  The expected
/// value is highly dependent on the physical structure of the databases and is hard to predict;
/// it serves mostly as an indication of forward progress.
Property BlocksScanned As %Integer [ Calculated, SqlComputeCode = { set {*}={ProgressDetails} }, SqlComputed ];

Property BlockSize As %Integer [ Internal, Private ];

/// Disposition for cancel requests.
/// <p>
///  0 - not allowed<br>
///  1 - polls for cancel requests<br>
/// -1 - directly terminate the process
Parameter CANCELDISPOSITION = -1;

Parameter PAUSEDISPOSITION = -1;

Method Execute(dir, targfree) As %Status [ Internal, Private ]
{
}

Method OnStarting(dir, targfree) As %Status [ Internal, Private ]
{
}

Method GetProgress(ByRef current As %Integer, ByRef total As %Integer, ByRef details As %String, ByRef units As %String) As %Status [ Internal, Private ]
{
}

/// Optional method to override in subclasses.  Sets up output array with information
/// about how to display properties defined in this subclass.  The form of the output
/// array is
/// <br><br>
///  array(i)=$listbuild(propertyname,label,isprogressdetail)
/// <br><br>
/// where the following meanings apply
/// <li>i - A numeric index, starting at 1, and incrementing for each subclass property to display </li>
/// <li>propertyname - The name of the property to display </li>
/// <li>label - A (localized) string label to display for this property </li>
/// <li>qualifiers - A string of letter qualifiers that affect how the property will be displayed (see below) </li>
/// <p>
/// <b>qualifiers</b> supported
/// <li>"p" - Progress property; place this property with the standard progress
/// information.  Such properties typically have values derived from
/// <PROPERTY>ProgressDetails</PROPERTY>, which is populated by the subclass in
/// <METHOD>GetProgress</METHOD>.</li>
ClassMethod GetDisplayInfo(Output array) As %List [ Internal ]
{
}

}
