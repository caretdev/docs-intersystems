/// This class is used internally by InterSystems. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.<p>
Class %Studio.SourceControl.ISC Extends %Studio.SourceControl.Base [ System = 4 ]
{

/// This Parameter should be updated when synced from Perforce
Parameter SrcVer = "$Id: //iris/2024.3.0/databases/sys/cls/Studio/SourceControl/ISC.xml#1 $";

/// Revision number of this class when compiled as part of the //custom_ccrs/_common/config/... branch.
/// This version will not be updated (by design) when the class is integrated to other branches.
/// This allows the user to tell what version of the Studio client tools are in use.
Parameter Version = 210;

XData Menu
{
}

/// Display connection information in the Output display
Method Login(Name As %String, Password As %String) As %Status
{
}

Method OutputInfo()
{
}

/// Called before the item is saved to the database. It is passed
/// a reference to the current temporary storage of this item so that it
/// can be modified before the save completes. If you quit with an error
/// value then it will abort the save.
Method OnBeforeSave(InternalName As %String, Location As %String = "", Object As %RegisteredObject = {$$$NULLOREF}) As %Status
{
}

Method OnBeforeLoad(InternalName As %String, display As %Boolean = 1) As %Status
{
}

ClassMethod Load(InternalName As %String, display As %Boolean = 1) As %Status
{
}

Method OnBeforeTimestamp(InternalName As %String)
{
}

Method OnAfterSave(InternalName As %String, Object As %RegisteredObject) As %Status
{
}

Method OnAfterCompile(InternalName As %String) As %Status
{
}

ClassMethod ExportCSPFile(InternalName As %String) As %Status
{
}

ClassMethod ImportCSPFile(InternalName As %String) As %Status
{
}

/// Return information about this entity.
/// <p>
/// This method checks the current status of the item, seeing whether or not it is in source control (based on an exported
/// copy of the item on disk), and if it is in source control, whether it is currently checked out (based on whether the file
/// is Readonly or not).
/// <p>
/// If the file is checked out, this method will check to find the value of
/// $USERNAME for whomever performed <method>CheckOut</method>.  If the current $USERNAME does not match, then the user
/// will not be permitted to edit the file as it has been checked out by another user.
Method GetStatus(InternalName As %String, ByRef IsInSourceControl As %Boolean, ByRef Editable As %Boolean, ByRef IsCheckedOut As %Boolean, ByRef UserCheckedOut As %String) As %Status
{
}

Method IsInSourceControl(InternalName As %String) As %Boolean [ CodeMode = expression ]
{
}

Method ExternalName(InternalName As %String) As %String [ CodeMode = expression ]
{
}

/// Check this routine/class/csp file into source control.
Method CheckIn(InternalName As %String, Description As %String) As %Status
{
}

/// ** DEPRECATED - Use more secure <method>SecureRunCmd</method> instead<p>
/// Run a shell command and report any error message, return <var>output</var> with
/// lines as subscripts of the array if <var>stream</var> is false (the default) but if
/// <var>stream</var> is true then we will return the output as a stream to be read by the caller.
ClassMethod RunCmd(cmd As %String, ByRef output As %String, display As %Boolean = 1, stream As %Boolean = 0) As %Status [ Deprecated ]
{
}

/// Run a command and report any error message, return <var>output</var> with
/// lines as subscripts of the array if <var>stream</var> is false (the default) but if
/// <var>stream</var> is true then we will return the output as a stream to be read by the caller.
/// Passed the executable name in <var>cmd</var> and the list of arguments as an integer subscripted
/// local array passed in by reference in <var>args</var>.
ClassMethod SecureRunCmd(cmd As %String, ByRef args, ByRef output As %String, display As %Boolean = 1, stream As %Boolean = 0, input As %String = "") As %Status
{
}

/// Check this routine/class/csp file out of source control.<br/>
/// Following successful checkout, the copy of the file on disk is loaded into the Namespace, unless <var>Load</var> is false.
Method CheckOut(InternalName As %String, Description As %String, Load As %Boolean = 1) As %Status
{
}

Method UndoCheckout(InternalName As %String) As %Status
{
}

/// Compiles <var>InternalName</var> if it still exists.
/// Will skip up-to-date files.
Method Compile(InternalName As %String) As %Status
{
}

Method GetLatest(InternalName As %String) As %Status
{
}

/// Wrapper around %File:SetReadOnly to return a %Status
ClassMethod SetFileReadOnly(pFile As %String) As %Status
{
}

/// Wrapper around %File:SetWriteable to return a %Status
ClassMethod SetFileWriteable(pFile As %String) As %Status
{
}

/// Update the ^Sources information with the file dates after a build
ClassMethod UpdateSources() As %Status
{
}

/// Job off a background job to update the sources information.
/// It returns -1 if it could not start the job or the $job number if successful.
ClassMethod JobUpdateSources() As %String [ ProcedureBlock = 0 ]
{
}

/// Called to add this item to source control
Method AddToSourceControl(InternalName As %String, Description As %String = "") As %Status
{
}

/// Called to delete this item from source control
Method RemoveFromSourceControl(InternalName As %String, Description As %String = "") As %Status
{
}

/// Return filename of this item
ClassMethod ExtName(InternalName As %String) As %String
{
}

/// Return filename of backup file of this item.
/// <p>
/// At the time of <method>CheckOut</method>, a local backup of the item in its existing state is written to the
/// file system with a .bak extension.  This file will be used on Disconnected systems to restore to the previous
/// state when <method>UndoCheckout</method> is called.  It can also be used for diffs from the original file state.
ClassMethod BackupName(InternalName As %String) As %String
{
}

/// Return the name of this item without the prefix to be added by ExtName
ClassMethod Name(InternalName As %String) As %String
{
}

/// Takes a filename within the local Perforce workspace and returns a best guess as to the InternalName.
/// If the file exists then the method will attempt to open it to find the item name.  If it does not exist (or if it can't open it) then it will try to
/// determine the item name based on the location in directory tree and the structure of the mappings in ^Sources.<p>
/// If no item in the database can be found to map to the external filename, then if it is a CCR enabled namespace it will return the path
/// translated into the /itemsetsourcelink(_*) import/export format. <p>
/// Unless <var>IgnorePercent</var> argument is set to 0, any %-items will return "".<p>
/// Unless <var>IgnoreNonexistent</var> argument is set to 0, if the item isn't found in the database, then "" will be returned.<p>
/// Known Limitations (if the physical file doesn't exist):
/// <ul>
/// <li>Due to this historical act of stripping '%' from the beginning of package names, if there exists both a %-item and a non-%-item which map to the same
/// location, then "" will be returned as the result is indeterminate without having access to the source file.</li>
/// <li>The method currently will not find matches for multi-tier mappings in ^Sources (e.g. <code>^Sources("HL7","*")="schema/hl7/"</code>,
/// other than multi-tier mappings under /CSP/</li>
/// </ul>
ClassMethod InternalNameFromExtName(ExtName, IgnorePercent = 1, IgnoreNonexistent = 1) As %String
{
}

/// Disconnect from Perforce depot.
/// <p>Values for 'Level' parameter are:
/// <ul>
/// <li> 1: Instance is Disconnected but could connect at a future time (default) </li>
/// <li> 2: Instance is Permanently Disconnected (no plans of ever connecting to Perforce) </li>
/// </ul>
ClassMethod Disconnect(Level As %Integer = 1) As %Status
{
}

/// Reconnect to the Perforce depot and mark all edited as edited.
ClassMethod Reconnect() As %Status
{
}

Method UserAction(Type As %Integer, Name As %String, InternalName As %String, SelectedText As %String, ByRef Action As %String, ByRef Target As %String, ByRef Msg As %String, ByRef Reload As %Boolean) As %Status
{
}

Method AfterUserAction(Type As %Integer, Name As %String, InternalName As %String, Answer As %Integer, Msg As %String = "", ByRef Reload As %Boolean) As %Status
{
}

Method OnMenuItem(MenuName As %String, InternalName As %String, SelectedText As %String, ByRef Enabled As %Boolean, ByRef DisplayName As %String) As %Status
{
}

/// ** DEPRECATED - Use the more secure <method>SecureP4Cmd</method>.
/// Passed a 'p4' command, it runs it with '-ztag' and returns the parsed output
ClassMethod P4Cmd(cmd As %String, Output output As %String) As %Status [ Deprecated ]
{
}

/// Passed a 'p4' by reference list of arguments in <var>args</var>, it runs 'p4' with '-ztag' and returns the parsed output
ClassMethod SecureP4Cmd(ByRef args, Output output As %String) As %Status
{
}

/// This method will accept a Perforce password and will attempt to generate a Perforce ticket tied to this server for use within the hooks.
/// In the process it will validate a ticket which may already be set, and if it is valid it will keep that ticket.
ClassMethod GeneratePerforceTicket(p4pass As %String = "", ByRef p4ticket As %String) As %Status
{
}

/// Validate a ticket and return the amount of time remaining for that ticket.
/// If the ticket is not valid it will clear it from the credential store since it is of no use.
ClassMethod ValidatePerforceTicket(ByRef timeRemaining As %String) As %Status
{
}

/// Stores a Perforce ticket for future use by the current user
ClassMethod StorePerforceTicket(ticket As %String = "") As %Boolean
{
}

/// Clears out a stored Perforce ticket which may be stored for the current user
ClassMethod ClearPerforceTicket() As %Boolean
{
}

/// Add the specified items to source control
ClassMethod AddItemsToSourceControl(ByRef items) As %Status
{
}

/// Add the specified classes to source control
ClassMethod AddClassesToSourceControl(classes As %String) As %Status
{
}

/// Add the specified package(s) to source control
ClassMethod AddPackagesToSourceControl(packages As %String) As %Status
{
}

/// Returns value that shows whether or not this instance is "Disconnected" from Perforce.
/// <p>Return values are:
/// <ul>
/// <li> 0: Instance is Connected</li>
/// <li> 1: Instance is Disconnected but could connect at a future time</li>
/// <li> 2: Instance is Permanently Disconnected (no plans of ever connecting to Perforce) </li>
/// </ul>
ClassMethod Disconnected() As %Integer [ CodeMode = expression ]
{
}

/// Returns value that shows whether or not this instance is "Locked".
/// <p>Return values are:
/// <ul>
/// <li> "": Instance has never been Locked or Unlocked (default)</li>
/// <li> 0: Instance is Unlocked</li>
/// <li> 1: Instance is Locked</li>
/// <li> 2: Instance is AdminLocked</li>
/// </ul>
/// <p>When the instance is Locked or AdminLocked, no changes can be made via Studio.  It is possible to change from Locked to NotLocked via different UIs.
/// When an instance is AdminLocked it should only be possible to unlock it via the <method>Unlock</method> method.
ClassMethod Locked() As %String [ CodeMode = expression ]
{
}

/// Lock the source control hooks for this instance.
/// <p>The default setting will be "Locked".  Passing a '1' for the Admin parameter will set the instance to AdminLocked.
/// <p>See <method>Locked</method> for more details.
ClassMethod Lock(Admin As %Boolean = 0) As %Status
{
}

/// Unlock the source control hooks for this instance.
ClassMethod Unlock() As %Status
{
}

/// Accessor method for accessing Perforce Credentials for current $USERNAME; returns false if no credentials were available.
/// <ul>
/// <li>If there is a user-specific set of credentials defined for the current $USERNAME, these credentials will be returned</li>
/// <li>If a SharedWorkspace has been defined but there are no credentials for the current $USERSAME, then $USERNAME is returned as p4user assuming it's not a shipped username
/// <li>If a SharedWorkspace has been defined, then it will be returned in the p4workspace parameter; otherwise the workspace for the credential set will be returned</li>
/// <li>If credentials exist for this specific $USERNAME, then p4passwd is returned from the the current studio process (the password stored in credentials is ignored)</li>
/// <li>If there is no data at all in ^%SYS("SourceControl","Credentials"), then the method returns 'true', assuming the Environment variables are used to store the credentials</li>
/// </ul>
ClassMethod GetCredentials(ByRef p4user As %String, ByRef p4passwd As %String, ByRef p4workspace As %String, ByRef p4dir As %String, ByRef p4port As %String) As %Boolean
{
}

/// Accessor method for setting Perforce Credentials, returns false if credentials could not be set.
/// <ul>
/// <li>If p4user is passed as a string, then it (along with the other arguments) will be the default for this instance</li>
/// <li>If p4user is of the form $LB(cacheUser, p4user), then p4user only be used when $USERNAME=cacheUser, and all other arguments will be ignored.
///   The workspace details should be set via SetSharedWorkspace(), and the user will be prompted for the p4passwd value at runtime</li>
/// <li>If p4user is "" , then the default credentials will be cleared</li>
/// <li>If p4user is of the form $LB(cacheUser,""), then the perforce username for cacheUser will be cleared</li>
/// </ul>
ClassMethod SetCredentials(p4user As %String = "", p4passwd As %String = "", p4workspace As %String = "", p4dir As %String = "", p4port As %String = "") As %Boolean
{
}

/// Method returns true if there are default perforce credentials defined, and false otherwise.<p>
/// NOTE - if there is no credentials data stored at all, the the assumption is made that this is a
/// single-user system that relies on environment variables for Perforce access, and 'true' will be returned
/// so that the user will not be prompted for credentials or told that none are defined.  Credentials
/// must be stored entirely in environment variables, or entirely in the DB for a given instance.
ClassMethod DefaultCredentialsDefined() As %Boolean [ CodeMode = expression ]
{
}

/// Accessor method to get the Perforce Shared Workspace if it is defined; if it is not defined, the method returns false.
/// If this method returns false, then the assumption should be made that this is a single-developer instance (not shared by multiple developers).
/// <P>The method will check for the existence of a namespace-specific workspace, and will use that if it exists.  If a namespace
/// specific workspace is not defined, then it will look for an instance-wide Shared Workspace.
/// <P>This also allows a user to retrieve the stored alternate workspace directory root (-d flag in P4)
ClassMethod GetSharedWorkspace(ByRef p4workspace As %String, ByRef p4directory As %String) As %Boolean
{
}

/// Accessor method for setting Perforce Shared Workspace; returns false if credentials could not be set.
/// <P>If the <var>namespace</var> argument is not passed, then the values will be set for the entire instance.
/// If it is passed, then the workspace and alternate workspaace directory root will be used just for that specified workspace.
/// <P>This also allows a user to set the alternate workspace directory root (-d flag in P4).
/// <P><Strong>Important Note:</Strong> Passing <var>p4workspace</var> as "" will clear out all of the shared worspace settings, and will merge them
/// into <code>^%SYS("SourceControl","PriorSharedWorkspace")</code> for future reference.
ClassMethod SetSharedWorkspace(p4workspace As %String = "", p4directory As %String = "", namespace As %String = "") As %Boolean
{
}

/// Indicates whether or not this instance is configured to accomodate multiple concurrent developers<br/>
/// It is considered a Shared development instance if one of the following is true:</br>
/// <UL>
/// <LI>This is a Connected instance and there is a Shared Workspace defined for this instance or namespace</LI>
/// <LI>This is a Permanently Disconnected Namespace (Permantently Disconnected means it is outside the InterSystems network and we always assume Shared)</LI>
/// </UL>
ClassMethod IsSharedDevInstance() As %Boolean [ CodeMode = expression ]
{
}

/// Disconnect this document from source control
ClassMethod DisconnectItem(InternalName As %String) As %Status
{
}

/// Reconnect this document from source control
ClassMethod ReconnectItem(InternalName As %String) As %Status
{
}

ClassMethod IsGenerated(InternalName As %String) As %String
{
}

/// Return true if this item is mapped from a database other than the default routine database.
/// Also return the source database in <var>sourcedb</var>.
/// <p>NOTE: This is available as %RoutineMgr::IsMapped() in 2013.1 and later; it is included in this class to support the source hooks working on earlier versions.
ClassMethod IsMapped(name As %String, ByRef sourcedb As %String)
{
}

/// Returns 1 if InternalName is excluded from source control
ClassMethod IsExcluded(InternalName As %String) As %Boolean
{
}

/// This method exports all Classes, Routines, Include files, CSP Application files, and Projects files from a namespace into a file structure that can then be added to Source Control.<P>
/// This should be run from the terminal, and the user will be prompted as to whether they want to export to the current ^Sources location or an alternate location (alternate is recommended).<P>
/// The method will then iterate through all Classes, Routines, Include files, CSP Application files and Projects and will export them to ^Sources based on the mappings in the ^Sources global.<P>
/// NOTE - this does not export "Generated" classes. <p>
/// Passing <var>classesOnly</var> as '1' will export only the baseline of the classes.  This is useful for exporting all updated XML after changing to a new class compiler version.<p>
/// Pass <var>interactive</var> as 0 in order to call this programmatically.<p>
/// Pass <var>targetDirectory</var> to specify the directory for export (NOTE - this cannot equal ^Sources for TrakCare exports).<p>
/// Pass boolean <var>changeToReadOnly</var> to control whether the files should be changed to read-only after export (defaults to true).<p>
/// Pass boolean <var>includeMapped</var> to control whether items mapped from other databases should be included in the export (defaults to true).
/// The default value for this argument will be the inverse of the source hooks LockMapped setting for this namespace (so if nothing is set, then Mapped will be included by default). <p>
ClassMethod BaselineExport(classesOnly As %Boolean = 0, interactive = 1, targetDirectory = {$get(^Sources)}, changeToReadonly As %Boolean = 1, includeMapped As %Boolean = {'$get(^SYS("SourceControl","Misc","LockMapped"))}) As %Status
{
}

ClassMethod IsSchemaStandard(pName As %String = "") As %Boolean [ Internal ]
{
}

/// Export the contents of a CSP directory
Method BaselineCSPDir(dir As %String, appDir As %String, app As %String, ToReadOnly As %Boolean = 0, useEnsembleExclusionlist As %Boolean = 0)
{
}

/// Exports a specific item.<br/>
/// If <var>ToReadOnly</var> is true, then the files will be manually changed to ReadOnly afterwards (for use when exporting from LIVE and leaving items uneditable afterwards).<br/>
/// If <var>CheckOut</var> is true, then the Source Control CheckOut/AddToSourceControl logic is used.<br/>
/// If <var>includeMapped</var> is true, then items mapped from other DBs will be exported, otherwise they will be skipped.
/// The default value for this argument will be the inverse of the source hooks LockMapped setting for this namespace (so if nothing is set, then Mapped will be included by default).
Method BaselineExportItem(InternalName As %String, ToReadOnly As %Boolean = 0, CheckOut As %Boolean = 0, includeMapped As %Boolean = {'$get(^SYS("SourceControl","Misc","LockMapped"))}) As %Status
{
}

/// Earlier versions of Ensemble physically copied files into newly created csp applications; these need to be enumerated so they can be skipped by BaselineExport()
Method BaselineExportEnsembleExclude() As %String [ CodeMode = expression ]
{
}

/// The initial implementation of DS II did not include source control hooks in the UI, so it is necessary
/// to do check-out / export DSII classes and Folder Items just prior to submitting the changes to Perforce.<br/>
/// DSCheckpointExport() will check for the last time that DSCheckpointExport() was run, and will check out and export
/// all changes DS II items since that timestamp.  This should work for both Connected and Disconnected instances.</br>
/// If <var>ListOnly</var> is true, then a list will be displayed but nothing will actually be checked out.<br/>
/// If <var>AddNew</var> is true, then all items which are not yet on disk in the local workspace will be marked for 'add'
/// and exported, otherwise, only those already on disk will be exported.<br/>
/// If <var>ExportAll</var> is true, then the timestamp from the previous export will be ignored and all DeepSee work
/// that is in Source Control will be checked out.<br/>
/// If <var>Interactive</var> is true, then the user will be prompted for their Perforce password if it is a Connected instance.<br/>
ClassMethod DSCheckpointExport(ListOnly As %Boolean = 0, AddNew As %Boolean = 1, ExportAll As %Boolean = 0, Interactive As %Boolean = 1) As %Status
{
}

/// Export System Default Settings and Add to Source Control or Check Out
ClassMethod ExportDefaults(productionName As %String, ByRef filename) As %Status
{
}

/// Readonly method which will show files marked for User Readonly as readonly even if process is running as root
ClassMethod ReadOnly(filename) As %Boolean
{
}

ClassMethod GetHistoryLink(InternalName) As %String
{
}

/// <p>Takes a Source directory and reconciles it with a Target directory which is under source control:</p>
/// <ul>
/// <li>Files in Source which do not exist in Target will be copied into the Target and AddToSourceControl() will be called </li>
/// <li>Files in Source which exist as Writeable in Target will be skipped</li>
/// <li>Files in Source which exist as ReadWrite in Target will call Checkout() and then copied from Source to Target</li>
/// <li>After all processing, files in Target which are Readonly will call RemoveFromSourceControl()</li>
/// </ul>
/// <p>This will only run if the Namespace is in Permanently Disconnected Mode; for Connected clients, use the p4 reconcile feature in p4V
/// <p>If <variable>IgnoreExtension</variable> is set then anything with that extension is excluded from reconciliation (e.g. .bak files
/// left over from former local check-outs which didn't get cleaned up for some reason)
/// <p>If the <variable>CCR</variable> is set then that value is set in the CCR column of the %Studio.SourceControl.Change table for this uncommitted change
ClassMethod DisconnectedReconcile(SourceDir As %String = "", TargetDir As %String = "", IgnoreExtension As %String = "bak", CCR As %String = "", Initialize As %Boolean = 0) As %Status
{
}

/// Utility Method to walk directory tree and find all files; returned array is keyed by the file minus the top directory and has a value of the full file
ClassMethod DirectoryInventory(TopDir As %String = "", ByRef Files, CurrentDir As %String = "") As %Status
{
}

/// Handles all compile-time logic for this class
ClassMethod OnToolsCompile() [ CodeMode = objectgenerator, Internal ]
{
}

/// Returns true if this namespace is a TrakCare namespace (note - this will also catch a HealthShare VIEWERLIB, but we shouldn't be changing any data in there anyway)
ClassMethod IsTrakCare() As %Boolean [ CodeMode = expression ]
{
}

/// Returns the Major.Minor version for this instance, so it can be used in comparison code which makes sure certain features are used in appropriate versions.
ClassMethod InstanceVersion() As %Numeric [ CodeMode = expression ]
{
}

/// Deprecated, do not use; use ..InstanceVersion() instead
ClassMethod Version() As %Numeric [ CodeMode = call, Deprecated, Internal ]
{
}

/// Called if compilation of the class has modified the storage (or another part of the class)
/// so we need to write out the new version and if the file is not already checked out we need
/// to check it out automatically.
Method OnAfterStorage(InternalName As %String, Location As %String = "") As %Status
{
}

ClassMethod CheckIndexes()
{
}

}
