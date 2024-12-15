/// The DataMove API.<br>
/// <br>
/// Move globals from one database to another based on a namespace mapping change.<br><br>
/// See the chapter in the documentation "Using DataMove with InterSystems IRIS" for details and examples.
///
Class DataMove.API Extends %SYSTEM.Help [ Abstract, Final, Language = objectscript, System = 4 ]
{

Parameter DOMAIN = "%Utility";

/// Finishes the DataMove and activates the namespace mapping changes.<br>
/// <br>
/// This method stops the DataMove background jobs, finishes processing any journal files,
/// writes the mapping changes to the CPF, and activates the mapping changes. It momentarily sets switch 10 which freezes
/// all users on the system while the systems namespace mappings tables are updated.
/// If the flag $$$BitCheckActivate was set when the DataMove was initialized, the method will call a user-supplied
/// routine $$CheckActivate^ZDATAMOVE() to check the application status before continuing.
/// If $$CheckActivate^ZDATAMOVE() does not return 1, the
/// method will quit with an error status. The user can then call Activate() again at a later point in time.
/// For more information on switch 10, see  "Using Switches" in Specialized System Tools and Utilities.
/// Note: Activate() checks the State property of the DataMove to make sure that the initial copy is complete
/// and the journal apply is caught up before proceeding.<br>
/// Arguments:<br>
/// Name - Name of the DataMove.<br>
/// Display - 0/1 - determines if progress messages are written to the screen.<br>
/// Timeout - Number of seconds to wait for the Copy job to finish running an apply journals operation before proceeding.
/// If the minimum number of MB of journal data remaining to apply does not fall below the threshold (5MB) within this
/// time period the method will return an error status. If this occurs, the Activate() method can be called at a later time
/// when the system is less busy.<br>
/// Force - 0/1 - Force activation of the namespace map even if the minimum number of MB of journal data remaining to
/// apply does not fall below the threshold (5MB). When set, the Activate process will wait up until the Timeout value for
/// the minimum number of MB of journal data remaining to apply to fall below the threshold (5MB). If it does not fall below
/// the threshold by the end of the timeout period, Activate will set switch 10 to freeze the system, apply the
/// remaining journal, and activate the namespace map. <br>
/// <br>
/// <b>WARNING: When the Force flag is specified, and there is a lot of journal
/// data to still be applied, this can cause an extended outage of the system. Once started the only way to stop the activation
/// and unfreeze the system is to force down the system.
/// </b>
/// <br>
/// <br>
/// Example:<br>
/// <pre>
/// %SYS>s x=##Class(DataMove.Data).Activate("ABC1")
///
/// Preparing to Activate DataMove
/// Waiting for DataMove jobs to complete...
/// Stopping DataMove processes in preparation for activation
/// Locking Globals...
/// Freezing system...
/// Applying journals...
/// Applying journal: c:\iris\mgr\journal\20200924.021
/// Copying mapping changes to Config classes...
/// Writing mapping changes to CPF file...
/// Activating mapping changes...
/// Activation complete
/// </pre>
ClassMethod Activate(Name As %String, Display As %Boolean = 1, Timeout As %Integer = 120, Force As %Boolean = 0) As %Status
{
}

ClassMethod DataCheckGetInfo(Name As %String, ByRef Info As %String) As %Status [ Internal ]
{
}

ClassMethod DataCheckGetRangeInfo(Name As %String, SrcDB As %String, DstDB As %String, Range As %String, ByRef Info As %String) As %Status [ Internal ]
{
}

ClassMethod DataCheckExportRangeDiffs(Name As %String, SrcDBs As %String = "*", DstDBs As %String = "*", Ranges As %String = "*", FileName As %String, ByRef NumExported As %Integer) As %Status
{
}

ClassMethod DataCheckRestartAll(Name As %String) As %Status
{
}

ClassMethod DataCheckRestartRange(Name As %String, SrcDB As %String, DstDB As %String, Range As %String) As %Status
{
}

ClassMethod DataCheckStart(Name As %String) As %Status
{
}

ClassMethod DataCheckStop(Name As %String) As %Status
{
}

/// Deletes the DataMove.<br>
/// <br>
/// If the DataMove operation you want to delete has been started and then stopped,
/// you should first call the Rollback()
/// method to rollback any of the data which had been moved.<br>
/// Arguments:<br>
/// Name - Name of the DataMove.<br>
ClassMethod Delete(Name As %String) As %Status
{
}

/// Deletes the globals from the source directory that have been copied by the DataMove.<br>
/// <br>
/// Arguments:<br>
/// Name - Name of the DataMove.<br>
/// This method deletes all globals in the source databases that have been copied to the destination databases.
/// Several processes may be created to delete the source globals. <br>
ClassMethod DeleteSourceGlobals(Name As %String) As %Status
{
}

/// Export a DataMove to a file.<br>
/// <br>
/// This would typically be used by support to diagnose a DataMove problem reported by a customer where they could
/// Export the customers DataMove to a file, and then Import onto their own system for examination.<br>
ClassMethod Export(Names As %String, Filename As %String = "") As %Status [ Internal ]
{
}

/// Finishes the DataMove process.<br>
/// <br>
/// This method writes a success or failure message to the log file, closes the log file, and sets the State
/// property of the DataMove to $$$DMStateDone. It also copies the log file into the file DataMove.log which is a record
/// of all the DataMoves performed on the system.<br>
/// Arguments:<br>
/// Name - Name of the DataMove.<br>
ClassMethod Finish(Name As %String) As %Status
{
}

/// Forces a DataMove to stop when StopCopy() fails to stop all DataMove processes.<br>
/// <br>
/// Arguments:<br>
/// Name - Name of the DataMove.<br>
ClassMethod Force(Name As %String) As %Status
{
}

/// Creates a new DataMove based on map edits in the temporary storage area.<br>
/// <br>
/// Arguments:<br>
/// 	Name - Name of the DataMove to be created.<br>
/// Properties - Array of optional properties to be used to create the DataMove.<br>
/// 	Properties("LogFile") - optionally specifies a log file name, if other than the default. The default logfile name
/// 	is Name.log and is found in the MGR directory.<br>
/// 	Properties("Description") - optionally provides a description of the DataMove to be performed.<br>
/// 	Properties("Flags") optionally provides any flags describing the DataMove operation as follows:<br>
/// 	$$$BitNoSrcJournal - allow copying of non-journaled databases.<br>
/// 	$$$BitCheckActivate - call the user-supplied routine $$CheckActivate^ZDATAMOVE() to check the
/// 	application status before activating the mapping changes.<br>
/// 	Properties("MaxMBPerMin") - Maximum number of MB per minute the DataMove operation is allowed to move to
/// 	the destination database. Setting this to 0 allows the DataMove to run as fast as it can. If not passed,
/// 	it uses the system default which is 0.<br>
/// 	Properties("MaxMBCheckPerMin") - Maximum number of MB per minute the DataMove DataCheck operation is allowed to check.
/// 	Setting this to 0 allows the DataMove DataCheck to run as fast as it can. If not passed,
/// 	it uses the system default.<br>
/// Warnings - Array returned with conflicts that do not prevent the DataMove from being performed. The Warnings
/// array contains a list of mappings where the data being moved is also mapped from another namespace.
/// This array is subscripted by the name of the global or the global range.<br>
/// Errors - Array returned with conflicts that prevent the DataMove from being performed.<br>
/// The Errors array contains a list of mappings where a conflict prevents the data from being moved.
/// This array is subscripted by the name of the global or the global range.<br>
/// <br>
/// Example:<br>
/// <pre>
/// ; Include the .INC file to get the definitions for the DataMove macros
/// #include %syDataMove
/// Set Properties("Flags")= $$$BitCheckActivate
/// Set Status=##Class(DataMove.API).MapGlobalsGenerate("TEST" .Properties,.Warnings,.Errors)
ClassMethod Generate(Name As %String, ByRef Properties As %String, ByRef Warnings As %String, ByRef Errors As %String) As %Status
{
}

/// Imports a DataMoves definition which has been created via the Export method.<br>
/// <br>
/// This would typically be used by support to diagnose a DataMove problem reported by a customer where they could
/// import the customers DataMove onto their own system for examination.<br>
ClassMethod Import(Filename As %String) As %Status [ Internal ]
{
}

/// Returns current log level.<br>
ClassMethod GetLogLevel() As %Integer [ Internal ]
{
}

/// Returns the current properties of the DataMove.<br>
/// <br>
/// Arguments:<br>
/// 	Name - Name of the DataMove.<br>
/// 	Properties - Array of the DataMove properties as follows:<br>
/// 	Properties("ExpandedState") - Expanded external format of the state.<br>
/// 	Properties("JRNMBToApply") - Current # of MB of Journal file to process.<br>
/// 	Properties("MaxMBPerMin") - Maximum # of MB the DataMove is allowed to move per Minute.<br>
/// 	Properties("MBCopied") - Amount of MB copied.<br>
/// 	Properties("MBToCopy") - Approximate amount of MB to copy.<br>
/// 	Properties("State") - Current state of the move, see the table below.<br>
/// 	Properties("StateExternal") - External format of the State.<br>
/// 	Properties("Status") - %Status value of any errors which occur.<br>
/// 	Properties("Stop") - Stop state of the DataMove.<br>
/// 	$$$DMStopNone  - Stop not signaled.<br>
/// 	$$$DMStopNormal - Stop signaled by Activate().<br>
/// 	$$$DMStopShutdown - Stop signaled by normal system shutdown. DataMove will resume on system restart.<br>
/// 	$$$DMStopUser - Stop signaled by user StopCopy(). Copy can be restarted by StartCopy().<br>
/// 	$$$DMStopForce - Stop signaled by Force(). Copy can be restarted by StartCopy().<br>
/// 	$$$DMStopErrorRecoverable - Stop signaled by error. Copy can be restarted by StartCopy() Once the error is corrected.<br>
/// 	$$$DMStopErrorUnRecoverable - Stop signaled by unrecoverable error. This may be due to several different reasons
/// 	including journal errors. The only option here is to call Rollback() and then StartCopy() to restart the DataMove
/// 	or Delete() to delete the DataMove.<br>
/// 	<br>
/// 	Example: <br>
/// 	<pre>
/// %SYS>s x=##Class(DataMove.API).GetProperties("ABC1",.Properties)
///
/// %SYS>zwrite Properties
/// Properties("ExpandedState")="Copy/Crashed"
/// Properties("JRNMBToApply")=0
/// Properties("MaxMBCheckPerMin")=0
/// Properties("MaxMBPerMin")
/// Properties("MBChecked")=0
/// Properties("MBCopied")=17030.67
/// Properties("MBToCopy")=20034.44
/// Properties("State")=6
/// Properties("StateExternal")="Copy"
/// Properties("Status")=1
/// Properties("Stop")=0
/// </pre>
ClassMethod GetProperties(Name As %String, ByRef Properties As %String) As %Status
{
}

/// Returns current  Verify level.<br>
ClassMethod GetVerifyLevel() As %Integer [ Internal ]
{
}

/// Determines if a DataMove is running.<br>
/// <br>
/// Arguments:<br>
/// Name - Name of the DataMove.<br>
/// DMState - Current state of the DataMove. Values are one of the states from the state table.<br>
ClassMethod IsRunning(Name As %String, ByRef DMState As %Integer) As %Boolean
{
}

/// Determines if a DataCheck is running.<br>
/// <br>
/// Arguments:<br>
/// Name - Name of the DataMove.<br>
ClassMethod DataCheckIsRunning(Name As %String) As %Boolean
{
}

/// Creates a new global mapping for this namespace in the temporary storage area.<br>
/// You can call this method one or more times, depending on the number of mappings you plan to include in this DataMove.<br>
/// Arguments:<br>
/// Name - Name of the DataMove.<br>
/// Namespace - The name of the namespace on which you want to perform the DataMove.
/// GblName - Name of a global to be mapped to a specific database.<br>
/// Setting the Name argument to "A" specifies that this mapping affects the entire global ^A. Setting this
/// argument to "A(5):A(10)" specifies that this mapping affects the range of the global with subscripts ^A(5) up to,
/// but not including, ^A(10).<br>
/// Properties - Array of properties needed for this mapping, in particular, the name of the database used for this mapping.<br>
/// Setting the Properties argument to an array Properties where Properties("Database") is set to "USER2" specifies that
/// the global (or range of the global) is to be mapped to the database USER2.
/// <br>
/// <br>
/// Examples:
/// <br>
/// <pre>
/// Set Properties("Database")="DSTDB"
/// ;Move ^X(100) up to but not including ^X(200) to database DSTDB
/// Set Status = ##Class(DataMove.API).MapGlobalsCreate("ABC1","SALES","X(100):(200)",.Properties)
/// ;Move the entire ^INFO global to database DSTDB
/// Set Status = ##Class(DataMove.API).MapGlobalsCreate("ABC1","SALES","INFO",.Properties)
/// ;Move all Data from the first subscript in ^BILLING (including the node ^BILLING itself)
/// ;up to but not including ^BILLING(100) to database DSTDB
/// Set Status = ##Class(DataMove.API).MapGlobalsCreate ("ABC1","SALES","BILLING(BEGIN):(100)",.Properties)
/// ;Move the entire global ^PROSPECT from its currently mapped database to DSTDB
/// Set Status = ##Class(DataMove.API).MapGlobalsModify ("ABC1","SALES","PROSPECT",.Properties)
/// ;Move the entire global ^ORDERS from its currently mapped database
/// ;back to the default database for the namespace SALES
/// Set Status=##Class(DataMove.API).MapGlobalsDelete ("ABC1","SALES","ORDERS")
/// </pre>
ClassMethod MapGlobalsCreate(Name As %String, Namespace As %String, GblName As %String, ByRef Properties As %String) As %Status
{
}

/// Delete an existing global mapping for this namespace in the temporary storage area.<br>
/// <br>
/// Arguments:<br>
/// Name - Name of the DataMove.<br>
/// Namespace - The name of the namespace which you want to delete the mapping from<br>
/// Name - Name of the global mapping you wish to delete.
/// <br>
/// <br>
/// Examples:
/// <br>
/// <pre>
/// ;Move the entire global ^ORDERS from its currently mapped database
/// ;back to the default database for the namespace SALES
/// Set Status=##Class(DataMove.API).MapGlobalsDelete ("ABC1","SALES","ORDERS")
/// ;Move the global mapping ^REVENUE("AUGUST") from its currently mapped database
/// ;back to the default database for the namespace SALES
/// Set Status=##Class(DataMove.API).MapGlobalsDelete("ABC1","SALES","REVENUE(""AUGUST"")")
/// </pre>
ClassMethod MapGlobalsDelete(Name As %String, Namespace As %String, GblName As %String) As %Status
{
}

/// Initializes the temporary storage area for a new set of mapping edits.<br>
/// <br>
/// Arguments:<br>
/// Name - Name of the DataMove.<br>
/// Namespaces - Is a comma delimited list of namespaces on which you want to perform the DataMove.
/// This method must be called before any edits are made and is valid only for the specified namespaces.
/// <br>
/// <br>
/// CAUTION: Calling this method deletes any existing edits in the temporary storage area made by the DataMove API.
/// <br>
/// <br>
/// Example: <br>
/// <pre>
/// ;Initialize one namespace
/// Set Namespaces = "SALES"
/// Set Status = ##Class(DataMove.API).MapInitialize("ABC1",Namespaces)
/// If '$$$ISOK(Status) Write !,$SYSTEM.Status.GetErrorText(Status)
/// ;Initialize several namespaces
/// Set Namespaces = "SALES,MARKETING,INFO"
/// Set Status = ##Class(DataMove.API).MapInitialize("ABC1",Namespaces)
/// If '$$$ISOK(Status) Write !,$SYSTEM.Status.GetErrorText(Status)
/// </pre>
ClassMethod MapInitialize(Name As %String, Namespaces As %String) As %Status
{
}

/// Modifies a global mapping for this namespace in the temporary storage area.<br>
/// <br>
/// You can call this method one or more times, depending on the number of mappings you plan to include in this DataMove.<br>
/// Arguments:<br>
/// Name - Name of the DataMove.<br>
/// Namespace - The name of the namespace on which you want to perform the DataMove.
/// GblName - Name of a global to be mapped to a specific database.<br>
/// Setting the Name argument to "A" specifies that this mapping affects the entire global ^A. Setting this
/// argument to "A(5):A(10)" specifies that this mapping affects the range of the global with subscripts ^A(5) up to,
/// but not including, ^A(10).<br>
/// Properties - Array of properties needed for this mapping, in particular, the name of the database used for this mapping.<br>
/// Setting the Properties argument to an array Properties where Properties("Database") is set to "USER2" specifies that
/// the global (or range of the global) is to be mapped to the database USER2.
/// <br>
/// <br>
/// Examples:
/// <br>
/// <pre>
/// Set Properties("Database")="DSTDB"
/// ;Move the entire global ^PROSPECT from its currently mapped database to DSTDB
/// Set Status = ##Class(DataMove.API).MapGlobalsModify ("ABC1","SALES","PROSPECT",.Properties)
/// </pre>
ClassMethod MapGlobalsModify(Name As %String, Namespace As %String, GblName As %String, ByRef Properties As %String) As %Status
{
}

/// Modify an existing or running DataMove.<br>
/// <br>
/// Arguments: <br>
/// Name - Name of the DataMove.<br>
/// Properties - Array of properties to modify.<br>
/// 	Properties("MaxMBPerMin") - Maximum number of MB per minute the DataMove operation is allowed to move to
/// 	the destination database. Setting this to 0 allows the DataMove to run as fast as it can. This can be called
/// 	on a running DataMove to change the rate.<br>
///
/// 	Properties("MaxMBCheckPerMin") - Maximum number of MB per minute the DataMove DataCheck operation is allowed
/// 	to check. Setting this to 0 allows the DataMove DataCheck to run as fast as it can. This can be called
/// 	on a running DataMove to change the rate.<br>
ClassMethod Modify(Name As %String, ByRef Properties As %String) As %Status
{
}

/// Rolls back the mappings to what they were before the new mappings were activated.<br>
/// <br>
/// This will restore the systems mappings to the state before the DataMove was run. The DataMove must be in the
/// State $$$DMStateNSPActivateDone. An example of using this would be if you started to test the application
/// after the DataMove activates its mappings, and detected there was something wrong. After the mappings are restored
/// to their previous value, the State will be set to $$$DMStateReady. From here you can call
/// Rollback() (recommended), or StartCopy() and retry the activation. <br>
/// <b>
/// WARNING: If the mappings are rolled back, any data which was created while the new mappings were in effect will not be
/// able to be accessed.<br>
/// </b>
/// Arguments: <br>
/// Name - Name of the DataMove.<br>
ClassMethod RollbackMappings(Name As %String) As %Status
{
}

/// the DataMove to the $$$DMStateNotStarted State.<br>
/// <br>
/// This method deletes any globals that have been copied to destination databases by the DataMove copy job.
/// This method can be used to abort the DataMove or recover from an error in the copy process.
/// StopCopy() must be run before calling this method.
/// After doing the rollback, you can start over with StartCopy() or delete the DataMove with Delete().<br>
/// Arguments: <br>
/// Name - Name of the DataMove.<br>
ClassMethod Rollback(Name As %String) As %Status
{
}

/// Create a new DataMove which will copy the DataMove data back to its original location, and retore the old mappings.<br>
/// <br>
/// This will create a DataMove called Name-ROLLBACK which when run will move the data copied in the DataMove back to its
/// original source directories. The DataMove must be in the State $$$DMStateDeleteSrcGlobalsDone
/// (all the source globals have been deleted by the DeleteSourceGlobals()method.) After the method finishes, you can then
/// run StartCopy() and Activate() to move the data back to their original directories.
/// The original DataMove will have its State set to $$$DMStateRollbackCopy with a stop state set to "StopFatal" so it
/// can't be used again.<br>
/// Arguments: <br>
/// Name - Name of the DataMove which you want to rollback.<br>
/// Warnings - See Generate() for description of the Warnings array returned.<br>
/// Errors - See Generate() for description of the Errors array returned.<br>
ClassMethod RollbackCopy(Name As %String, ByRef Warnings As %String, ByRef Errors As %String) As %Status
{
}

/// Sets current log level.<br>
ClassMethod SetLogLevel(LogLevel As %Integer = 0) As %Status [ Internal ]
{
}

/// Sets current erify level.<br>
ClassMethod SetVerifyLevel(VerifyLevel As %Integer = 0) As %Status [ Internal ]
{
}

/// Validate the DataMove before starting the copy.<br>
/// <br>
/// Validating the DataMove involves looking at all of the specified mappings, checking the source and destination databases,
/// and making sure the destination globals do not already exist. Any errors are reported in the status.
/// Validate() is called as part of StartCopy(). You can use this method to validate the DataMove before you actually start
/// the copy with StartCopy(). <br>
/// Arguments: <br>
/// Name - Name of the DataMove.<br>
ClassMethod Validate(Name As %String) As %Status
{
}

/// Validate the size requirements of the DataMove.<br>
/// <br>
/// Validating sizes for a DataMove involves determining the amount of data to be copied and ensuring enough space
/// exists in the destination database. Any errors are reported in the status.
/// ValidateSizes() is called as part of StartCopy(). You can use this method to validate the DataMove size requirements
/// before you actually start the copy with StartCopy().<br>
/// Arguments: <br>
/// Name - Name of the DataMove.<br>
ClassMethod ValidateSizes(Name As %String) As %Status
{
}

/// Start (or restart) the DataMove.<br>
/// <br>
/// This method will start the DataMove, or restart the DataMove if it was previously stopped. As part of starting,
/// it calls the methods Validate() and ValidateSizes().
/// Arguments: <br>
/// Name - Name of the DataMove.<br>
ClassMethod StartCopy(Name As %String) As %Status
{
}

/// Stop the DataMove.<br>
/// <br>
/// This method stops the DataMove copy background jobs, allowing you to gracefully stop the copy after it is in process.
/// You can restart the DataMove with DataMove.Data.StartCopy(). If you wish to delete the DataMove after it is started,
/// you should call Rollback(), and then Delete().<br>
/// Arguments: <br>
/// Name - Name of the DataMove.<br>
ClassMethod StopCopy(Name As %String) As %Status
{
}

/// List the DataMoves defined on the system.<br>
ClassMethod ListDMsExecute(ByRef qHandle As %Binary, Names As %String = "*", Flags As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod ListDMsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListDMsExecute ]
{
}

ClassMethod ListDMsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListDMsExecute ]
{
}

/// List the DataMove processes currently running on the system.<br>
ClassMethod ListProcessesExecute(ByRef qHandle As %Binary, Name As %String) As %Status [ Internal, ProcedureBlock = 0 ]
{
}

ClassMethod ListProcessesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListProcessesExecute ]
{
}

ClassMethod ListProcessesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListProcessesExecute ]
{
}

/// List all of the ranges of a DataMove.<br>
ClassMethod ListRangesExecute(ByRef qHandle As %Binary, Name As %String, SrcDBs As %String = "*", DstDBs As %String = "*", Ranges As %String = "*", Flags As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod ListRangesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListRangesExecute ]
{
}

ClassMethod ListRangesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListRangesExecute ]
{
}

ClassMethod ListDataCheckRangesExecute(ByRef qHandle As %Binary, Name As %String, SrcDBs As %String = "*", DstDBs As %String = "*", Ranges As %String = "*") As %Status [ Internal ]
{
}

ClassMethod ListDataCheckRangesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListDataCheckRangesExecute ]
{
}

ClassMethod ListDataCheckRangesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListDataCheckRangesFetch ]
{
}

ClassMethod ListDataCheckDiffsExecute(ByRef qHandle As %Binary, Name As %String, SrcDBs As %String = "*", DstDBs As %String = "*", Ranges As %String = "*") As %Status [ Internal ]
{
}

ClassMethod ListDataCheckDiffsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListDataCheckDiffsExecute ]
{
}

ClassMethod ListDataCheckDiffsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListDataCheckDiffsExecute ]
{
}

}
