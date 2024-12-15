/// Class for storing changes to environment
Class %Studio.SourceControl.Change Extends %Persistent [ System = 4 ]
{

/// The <var>MANAGEDEXTENT</var> parameter can be set to 0 (zero) to cause the Extent Manager
/// to ignore this class. If set to 1 then the Extent Manager will register globals used by
/// the class and detect collisions. Unmanaged extents (MANAGEDEXTENT = 0) are not checked.
/// Currently, only classes using default storage (%Storage.Persistent) can be managed.
///
/// This is required since each Namespace will have it's own Change extent
Parameter MANAGEDEXTENT As INTEGER [ Constraint = "0,1", Flags = ENUM ] = 0;

/// This Parameter should be updated when synced from Perforce
Parameter SrcVer = "$Id: //iris/2024.3.0/databases/sys/cls/Studio/SourceControl/Change.xml#1 $";

/// Revision number of this class when compiled as part of the //custom_ccrs/_common/config/... branch.
/// This version will not be updated (by design) when the class is integrated to other branches.
/// This allows the user to tell what version of the Studio client tools are in use.
Parameter Version = 29;

/// Action for this change
Property Action As %String(VALUELIST = ",add,edit,predelete,delete,revert") [ Required ];

/// Returns the name of the backup file for this Item in the file system
Property BackupName As %String [ Calculated, SqlComputeCode = {S {*}=$S((({Tier2}))&&($D(^SYS("ChangeControlClass"))):$zobjclassmethod(^SYS("ChangeControlClass"),"BackupName",{InternalName}),1:$zobjclassmethod(##class(%Studio.SourceControl.Interface).SourceControlClassGet(),"BackupName",{InternalName})) }, SqlComputed ];

/// User who made this change, and for uncommitted changes this is the person who has it "checked out"
Property ChangedBy As %String;

/// Flag indicating whether or not this change has been committed to Perforce
Property Committed As %Boolean [ InitialExpression = 0, Required ];

/// Flag indicating whether or not this change was committed to Perforce via Source/Change control tools.
/// If ActivelyCommitted = 0 for a committed change, then it might have been either reverted or committed directly by a Perforce client and the
/// Perforce history should be checked to see whether or not it was committed
Property ActivelyCommitted As %Boolean [ InitialExpression = 0 ];

/// Time when this change was committed to Perforce (either via an ItemSet, the Studio CheckIn page or through a P4V)
/// <P> this value should be set in the form $zdt($H,3) (i.e. "0000-00-00 00:00:00" format)
Property CommittedTime As %TimeStamp [ InitialExpression = {$zdt("0,0",3)} ];

/// Display the CommittedTime field, showing "Uncommitted" for changes that have not yet been committed
Property CommittedTimeDisplay As %String [ Calculated, SqlComputeCode = {S {*}=$S({Committed}:{CommittedTime},1:"uncommitted") }, SqlComputed ];

/// When this change was first created, this CCR was associated with it for tracking purposes (optional field)
Property CCR As %String;

/// Returns the name of this Item in the file system
Property ExternalName As %String [ Calculated, SqlComputeCode = {S {*}=$S(({Tier2})&&($D(^SYS("ChangeControlClass"))):$zobjclassmethod(^SYS("ChangeControlClass"),"ExternalName",{InternalName}),1:$zobjclassmethod(##class(%Studio.SourceControl.Interface).SourceControlClassGet(),"ExtName",{InternalName})) }, SqlComputed ];

/// Name used within instance to refer to this changed item
Property InternalName As %String(MAXLEN = 200);

/// Location where this item is stored on disk
Property ItemFile As %String(MAXLEN = 500) [ Required ];

/// Human readable Name referring to this changed item.  This will default to the value if InternalName unless it is explicitly set
Property Name As %String(MAXLEN = 200);

/// Time of when the P4 command was issued to Perforce<BR/>
/// NOTE - a change can have a non-null P4Issued and still have Committed=0 because a 'p4 edit' will check it out but it is not committed until 'p4 submit'
Property P4Issued As %TimeStamp;

/// Utility by which this change was made
Property Source As %String(VALUELIST = ",studio,terminal,trakcare,healthshare,tier2") [ InitialExpression = "studio" ];

/// Determine if current change is sourced from a tier 2 change control environment
Property Tier2 As %Boolean [ Calculated, SqlComputeCode = {S {*}=$S((({Source}="trakcare")||({Source}="healthshare")||({Source}="tier2")):1,1:0)}, SqlComputed ];

/// Last time this change was saved locally
Property UpdatedTime As %TimeStamp [ InitialExpression = {$zdt($H,3)} ];

/// Returns Boolean value indicating whether or not an item is Uncommitted
ClassMethod IsUncommitted(Filename, ByRef ID) As %Boolean
{
}

/// Returns uncommited change object
ClassMethod OpenUncommitted(Filename) As %Studio.SourceControl.Change
{
}

/// Retrieves the details from the Uncommitted queue of an Uncommitted item
ClassMethod GetUncommitted(Filename, ByRef Action, ByRef InternalName, ByRef ChangedBy, ByRef Source, ByRef Updated, ByRef P4Issued, ByRef CCR, ByRef Name) As %Status
{
}

/// Sets the details for a new Uncommitted item into the Uncommitted queue
ClassMethod SetUncommitted(Filename, Action, InternalName, ChangedBy, Source, P4Issued As %Boolean, CCR, Name, EnforceSourcesPath = 1) As %Status
{
}

/// Update the details for an Uncommitted item in the Uncommitted queue
ClassMethod UpdateUncommitted(Filename, Action, InternalName, ChangedBy, Source, Updated, P4Issued, CCR, Name) As %Status
{
}

/// Removes one or more Uncommitted items from the Uncommitted queue and changes the exported file to Reaonly (except for reverts of Adds, or new CSP files within the Perforce root)
/// <P> Default assumed behavior is that the the change was not reverted, and that it was actively committed to Perforce
/// <P> If the method calling does not know whether it was reverted or committed to Perforce, then it should pass <var>Revert</var> = 0 and <var>ActiveCommit</var> = 0,
/// indicating that the change might have been reverted and the Perforce history should be checked for the definitive answer.
/// <P>The <var>Revert</var>, <var>ActiveCommit</var>, and <var>CommitCCR</var> arguments only impact the behavior if <code>^SYS("SourceControl","ChangeConfig","KeepHistory")=1</code>,
/// which means Change objects should have their Committed flag set to 1 and be saved for historical reference, rather than just deleting the Change objects
/// when RemoveUncommitted() is called.
/// <p> Arguments are as follows:
/// <ul>
/// <li><var>FileList</var> - the name of the file to revert, or an array subscripted by filenames (e.g. <code>FileList("C:\Perforce\custom_ccrs\us\ISCX\TESTSYS\cls\User\Test.xml")=""</code>)</li>
/// <li><var>Display</var> - boolean flag controlling whether to display the results to standard output (defaults to '1')</li>
/// <li><var>Revert</var> - boolean flag controlling whether to revert a checkout which would delete the change from the change history table (defaults to '0')</li>
/// <li><var>ActiveCommit</var> - used for historical tracking purposes for the %Studio_SourceControl.Change table</li>
/// <li><var>CommitCCR</var> - used for historical tracking purposes for the %Studio_SourceControl.Change table</li>
/// </ul>
ClassMethod RemoveUncommitted(FileList, Display = 1, Revert = 0, ActiveCommit = 1, CommitCCR) As %Status
{
}

/// Removes all Uncommitted items from the Uncommitted queue
ClassMethod RemoveAllUncommitted(Display = 1, IncludeRevert = 1) As %Status
{
}

/// Lists the Uncommitted items from the Uncommitted queue
/// <p>Only lists items with action of type 'revert' if the IncludeRevert flag is passed as true
ClassMethod ListUncommitted(ByRef UncommittedList = "", IncludeRevert = 0, RefreshUncommitted = 1) As %Status
{
}

/// Displays a list of Uncommitted items from the Uncommitted queue to the output device
/// <p>Only lists items with action of type 'revert' if the IncludeRevert flag is passed as true
ClassMethod DisplayUncommitted(ByRef UncommittedList, IncludeRevert = 0) As %Status
{
}

/// Goes through Uncommitted queue and removes any items of action 'edit' or 'add' which are ReadOnly or non-existent on the filesystem
ClassMethod RefreshUncommitted(Display = 1, IncludeRevert = 0) As %Status
{
}

/// This callback method is invoked when the current object is added to the SaveSet,
/// either because %Save() was invoked on this object or on an object that references this object.
/// %OnAddToSaveSet can modify the current object. It can also add other objects to the current
/// SaveSet by invoking %AddToSaveSet or remove objects by calling %RemoveFromSaveSet.
///
/// <P>If this method returns an error status then %Save() will fail and the transaction
/// will be rolled back.
Method %OnAddToSaveSet(depth As %Integer = 3, insert As %Integer = 0, callcount As %Integer = 0) As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// Handles all compile-time logic for this class
/// [Previously private]
ClassMethod OnToolsCompile() [ CodeMode = objectgenerator, Internal ]
{
}

/// Returns value the Major.Minor version for this instance, so it can be used in comparison code which makes sure certain features are used in appropriate versions
ClassMethod InstanceVersion() As %Numeric [ CodeMode = expression ]
{
}

/// Check indexes defined in this class build them if they have never been built.
/// Any errors are thrown as an exception.
ClassMethod BuildNewIndexes() [ CodeMode = objectgenerator, Internal ]
{
}

}
