/// This class implements a framework for providing administrators with status and control
/// of long-running tasks/utilities/operations that set to run in the background.  These
/// are typically (but not necessarily) tasks that are started interactively, but run in
/// the background because they may run for a long time (e.g. some database management
/// utilities).  Note that this framework is separate from the "Task Manager" frameword
/// which can be used to schedule activity.
/// <p>
/// There are subclasses for each type of operation that uses this infrastructure and
/// objects of those subclasses represent instances that are running or have run since
/// the system started up.
/// <p>
/// To use this framework for progress and control of a background task, you simply
/// open or query objects the objects through this class or the relevant subclass.
/// The properties represent a snapshot of the state and progress of the task.
/// You can periodically check for changes by rerunning the query or reloading the object
/// via standard object interfaces <METHOD>%OpenId</METHOD> and <METHOD>%Reload</METHOD>.
/// <p>
/// <PROPERTY>RunningState</PROPERTY> contains information about whether the task is
/// running or not (as of the time the object was last loaded or queried).
/// Progress information may be available via <PROPERTY>ProgressCurrent</PROPERTY>,
/// <PROPERTY>ProgressTotal</PROPERTY> and <PROPERTY>ProgressUnits</PROPERTY>.  When complete,
/// the %Status is available in <PROPERY>FinalStatus</PROPERTY>.  Subclasses may expose
/// other properties that are germain to that particular type of operation.
/// <p>
/// <METHOD>Pause</METHOD>, <METHOD>Resume</METHOD>, and <METHOD>Cancel</METHOD> are enabled
/// for some subclasses
/// <p>
/// Users should not modify properties or save these objects.
/// <p>
/// To start a job running the task in the background, you can use class method
/// <METHOD>Start</METHOD> in the desired subclass.  The arguments are unique to each
/// subclass.  <METHOD>Start</METHOD> returns an oref to use for monitor and control.
Class %SYS.BackgroundTask Extends %Persistent [ Abstract ]
{

/// Start time of run
Property StartTime As %TimeStamp [ ReadOnly ];

/// A text string to display as the type of background task as defined by its subclass.
Property DisplayType As %String [ Calculated, SqlComputeCode = { set {*} = $list($classmethod({Class},"GetDisplayInfo"),1) }, SqlComputed ];

/// The subclass name of the task; accessible via SQL where oref.%ClassName(1) is not be available.
Property Class As %String [ Calculated, SqlComputeCode = { new mstc if ##class(%SYS.BackgroundTask).%OnDetermineClass($$$oidCompose({ID},"%SYS.BackgroundTask"),.mstc) set {*}=mstc }, SqlComputed ];

/// Namespace in which the task is run.
Property Namespace As %String [ ReadOnly ];

/// Status code when finished
Property FinalStatus As %Status [ ReadOnly ];

/// PID of job performing the work, available once the "Running" state has been entered.
Property PID As %String [ ReadOnly ];

/// Request to the running task.  1 is request to pause. 2 is request to cancel.
Property Request As %Integer [ Calculated, SqlComputeCode = { set {*}=+$listget({ExternalState},2) }, SqlComputed ];

/// Information about whether the task is running or not.
/// Values are constants, defined for convenience in %syBackgroundTask.inc
/// <li>"Starting" ($$$BGTaskStarting) - Object has been created but has not started working yet.
/// <li>"Running" ($$$BGTaskRunning) - Task is running
/// <li>"Done"  ($$$BGTaskDone) - Task has completed successfully
/// <li>"Error"  ($$$BGTaskError) - Task has returned an error - see <PROPERTY>FinalStatus</PROPERTY>
/// <li>"Paused" ($$$BGTaskPaused) - Task has been pasued
/// <li>"Cancelled" ($$$BGTaskCancelled) - Task has been cancelled
/// <li>"Exited" ($$$BGTaskExited) - Task exited unexpectedly and did not complete normally
Property RunningState As %String [ Calculated, SqlComputeCode = { set {*}=$listget({ExternalState},1) }, SqlComputed ];

/// The current amount of progress made.  To be interpreted, along with <PROPERTY>ProgressTotal</PROPERTY>
/// and <PROPERTY>ProgressUnits</PROPERTY> as follows:
/// <li>non-zero total and non-null units: current and total values are to be displayed with the unit string.
/// <li>non-zero total and null units: current / total is to be displayed as a percentage.
/// <li>zero total, non-zero current, and non-null units: current is displayed with the unit string (without reference to the total).
/// <li>otherwise numeric progress not available.
Property ProgressCurrent As %Numeric [ Calculated, SqlComputeCode = { set {*}=+$listget({ExternalState},3) }, SqlComputed ];

/// The total amount of progress that must be made to complete.  This value may
/// change while running as more accurate estimates become available.
/// See <PROPERTY>ProgressCurrent</PROPERTY> for more detail.
Property ProgressTotal As %Numeric [ Calculated, SqlComputeCode = { set {*}=+$listget({ExternalState},4) }, SqlComputed ];

/// The units in which progress is measured.  Used to display progress to the
/// user.  Null is allowed, treating progress as dimensionless.
/// See <PROPERTY>ProgressCurrent</PROPERTY> for more details.
Property ProgressUnits As %String [ Calculated, SqlComputeCode = { set {*}=$listget({ExternalState},5) }, SqlComputed ];

/// Internal progress details returned from subclasses in <METHOD>GetProgress</METHOD>.
/// Subclasses may expose calculated properties derived from this value.
Property ProgressDetails As %String [ Calculated, Internal, SqlComputeCode = { set {*}=$listget({ExternalState},6) }, SqlComputed ];

/// True if the <PROPERTY>RunningState</PROPERTY> is one that will not progress
/// any further.  Used by monitoring interfaces to determine whether monitoring
/// should continue.
Property HasEnded As %Boolean [ Calculated, SqlComputeCode = { s {*}=$case({RunningState},$$$BGTaskDone:1,$$$BGTaskError:1,$$$BGTaskCancelled:1,$$$BGTaskExited:1,:0) }, SqlComputed ];

/// True if pause is allowed for this task and the state (as of load time)
/// is such that it can be paused.  Used by user interface code to determine
/// whether to enable a "pause" control.
Property PauseIsAvailable As %Integer [ Calculated, SqlComputeCode = { s {*}=$select('..#PAUSEDISPOSITION:0,{Request}:0,{RunningState}'=$$$BGTaskRunning:0,1:1) }, SqlComputed ];

/// True if cancel is allowed for this task and the state (as of load time)
/// is such that it can be paused.  Used by user interface code to determine
/// whether to enable a "cancel" control.
Property CancelIsAvailable As %Integer [ Calculated, SqlComputeCode = { s {*}=$select('..#CANCELDISPOSITION:0,{Request}=$$$BGTaskReqCancel:0,{RunningState}=$$$BGTaskRunning:1,{RunningState}=$$$BGTaskPaused:1,1:0) }, SqlComputed ];

/// True if pause is allowed and the utility is paused.  Used by user
/// interface code to determine whether to enable a "resume" control.
Property ResumeIsAvailable As %Integer [ Calculated, SqlComputeCode = { s {*}=$select('..#PAUSEDISPOSITION:0,{Request}'=$$$BGTaskReqPause:0,{RunningState}=$$$BGTaskRunning:1,{RunningState}=$$$BGTaskPaused:1,1:0) }, SqlComputed ];

/// Index used to access shared memory structure
Property MemIdx As %Integer [ Internal, Private, Required ];

/// Version used to access shared memory structure
Property Version As %Integer [ Internal, Private, Required ];

/// Job number of process with the memory reservation
Property JobNum As %Integer [ Internal, Private ];

/// JobID of process with the memory reservation
Property JobID As %Integer [ Internal, Private ];

/// $LISTBUILD string containing any information used to derive the state of this object that
/// does not come from the storage of the object itself.  Such state information is loaded into
/// this transient property once each time the object is loaded or queried.  The exposed
/// properties for such state information are Calculated and derive their values from this property.
Property ExternalState As %List [ Internal, Private, SqlComputeCode = { new rst,o set {*}={ExternalStateStored},rst=$listget({ExternalStateStored},1) if (rst=$$$BGTaskStarting)||(rst=$$$BGTaskRunning) { set o=##class(%SYS.BackgroundTask).%OpenId({ID}) set:o {*}=o.GetExternalState({ExternalStateStored}) } }, SqlComputed, Transient ];

/// Last value of <PROPERTY>ExternalState</PROPERTY>, stored with the object
Property ExternalStateStored As %String(MAXLEN = 30000) [ Internal, Private ];

/// Starts this task in the background and returns on oref for monitoring and control.
/// Returns null on error, with error status available in %objlasterror.
/// The meaning of the arguments are specific to each subclass.
ClassMethod Start(args...) As %ObjectHandle [ Final ]
{
}

/// Creates the object and saves it marked as in "Starting" state.
/// The caller can then call <METHOD>Run</METHOD> directly or pass the
/// object id to another (background) process to open and then call <METHOD>Run</METHOD>.
/// In the latter case, see documentation for <METHOD>WaitForRunning</METHOD>
/// for important information about coordinating with the other process.
/// <p>
/// Returns null on error, with error status available in %objlasterror.
ClassMethod Register(args...) As %ObjectHandle [ Final, Internal ]
{
}

/// Marks the task as "Running", executes the code in this process
/// and saves the return status as <PROPERTY>FinalStatus</PROPERTY>.   If this
/// method is called from a process other than the one that created the object
/// and the creating process gave up waiting before this method was called
/// (e.g. it closed the object, or timed out in <METHOD>WaitForRunning</METHOD>),
/// then this method returns an error, $$BGTaskNotRunnable.
/// <p>
/// The arguments passed to this method must be identical to those passed to
/// <METHOD>Register</METHOD>.
Method Run(args...) As %Status [ Final, Internal ]
{
}

/// To be used when the job calling <METHOD>Register</METHOD> will rely on a different
/// main job (typically, but not necessarily, a child) to perform the work.  After passing
/// the object ID to another job, call this method to wait for that job to call
/// <METHOD>Run</METHOD>.  If this method times out, the object is deleted.
/// <p>
/// The caller can use the return value to positively report success or failure of
/// starting the task to the user.  Upon success, the job that runs the task has control
/// and status can be tracked through this object.  The object is reloaded as part of this
/// method to reflect that latest state.  Upon return status code $$$BGTaskStartTimeout,
/// the utility object is deleted, the main job is sure to not be running this task, and
/// the caller should close this object.
/// <p>
/// Note that calling this method is not strictly required.  The main job can begin
/// running before this method is called.  If the process creating the object
/// does not call this method however, it must ensure that it keeps the object open long
/// enough for the main job to start and call <METHOD>Run</METHOD>.  If the caller
/// closes the object beforehand, it will be automatically cleaned and if the main job
/// eventually calls <METHOD>Run</METHOD>, it will get an error.
Method WaitForRunning(timeout As %Integer = 10) As %Status [ Final, Internal ]
{
}

/// Request cancellation.
Method Cancel() As %Status [ Final ]
{
}

/// Request pause.
Method Pause() As %Status [ Final ]
{
}

/// Request to resume from pause.
Method Resume() As %Status [ Final ]
{
}

/// Subclasses must override this method.  This method is called by the process
/// calling <METHOD>Run</METHOD> to perform the real work.  The return from this
/// method is recorded as <PROPERTY>FinalStatus</PROPERTY>.
/// <p>
/// <b>Overview: Running your code via the %SYS.BackgroundTask framework</b>
/// <p>
/// This class provides infrastructure to run your long-running tasks in the background,
/// with status, progress and administrative control available to the operator.  You
/// create a subclass that specifies certain behaviors, including the rules by which it
/// will display progress and respond to pause and cancel requests.
/// <p>
/// Progress can be reported by periodically posting updates using
/// $system.BGUtil.PostProgress().  Progress can alternatively be calculated (perhaps
/// via a pre-existing mechanism) by overriding the <METHOD>GetProgress</METHOD> callback.
/// You can even use a combination of the two: posting updates with $system.BGUtil.PostProgress()
/// and futher refining them for presentation in the callback.
/// If no progress is reported by any of these mechanisms, the progress field will simply be
/// omitted from the status display.
/// <p>
/// You choose whether to enable the pause and/or cancel control.  You can allow
/// pause and cancel actions to directly suspend or terminate the job, or you can
/// choose to poll for Pause and Cancel request codes as return values from
/// $system.BGUtil.PostProgress and/or $system.BGUtil.CheckRequest calls.
/// <p>
/// You may define properties in the subclass to expose more details, such as the
/// arguments passed by the user or additional progress-related details.  This is
/// discussed further below.
/// <p>
/// <b>More info on using $system.BGUTil methods</b>
/// <p>
/// During execution of the your code, you can call $system methods of the
/// <CLASS>%SYSTEM.BGUtil</CLASS>, namely PostProgress() and CheckRequest().
/// If your subclass is defined to poll for pause and/or cancel, PostProgress()
/// does so.  To poll without posting progress you can call CheckRequest().
/// If your code neither posts progress nor polls for pause/cancel requests
/// then these methods are not needed.
/// <p>
/// These classmethods are lightweight, and operate in shared memory that is
/// automatically associated with the process that called <METHOD>Run</METHOD>.
/// They do not modify any globals or this object.  Calling them does not require
/// an oref and if called in a process that has not called <METHOD>Run</METHOD>,
/// these $system functions do nothing.  This design means they can be placed into
/// subroutines which are only sometimes called within the context of your
/// background task subclass, and in low-level subroutines where it may be
/// impractical to pass an oref all the way down the stack.
/// <p>
/// <b>Detailed Guide</b>
/// <p>
/// The paradigm described above is designed for maximum flexibility with existing
/// code.  Simple status information like <PROPERTY>RunningState</PROPERTY>,
/// <PROPERTY>FinalStatus</PROPERTY>, and others are reported to users without
/// any changes; you simply create a subclass with an <METHOD>Execute</METHOD>
/// method that wraps an existing API.  Cancel and pause can optionally be offered
/// for basic single-processed routines via direct suspend/resjob.  If your code has
/// existing progress reporting facilities, they can be adapted into the
/// <METHOD>GetProgress</METHOD> callback.  Otherwise, if desired, you can enhance
/// existing code to periodically post progress updates via $system.BGUtil.PostProgress(),
/// and they will automatically be seen via this infrastructure (without any need
/// to implement GetProgress()).
/// <p>
/// The following steps can be used as a guide
/// <p>
/// 1. Define a subclass of this class, named after the utility/operation/API it implements.
/// <p>
/// 2. Optionally, override <PARAMETER>PAUSEDISPOSITION</PARAMETER> and
/// <PARAMETER>CANCELDISPOSITION</PARAMETER> to allow pause and/or cancel requests.
/// <p>
/// 3. Provide an implementation of <METHOD>Execute</METHOD> (which may just call a
/// pre-existing API).  If desired, update that lower-level code to post progress with
/// $system.BGUtil.PostProgress().
/// (See <CLASS>%SYSTEM.BGUtil</CLASS> for further reference).
/// <p>
/// 4. Optionally, define any additional properties you wish to maintain and report to the
/// operator as part of the status display.  Define those properties in the subclass and
/// override <METHOD>GetDisplayInfo</METHOD> to include them in the display.  Your property
/// may be relatively static, or may reflect an additional detail about progress.
/// An example of a static property is a "Dataabase" property that set to the
/// database path passed as argument.  The value should be set in
/// <METHOD>OnStarting</METHOD> based on the arguments passed. </li>
/// For an example of a progress-related property imagine a "CurrentFile" property that
/// contains the file name in a task that processes multiple files.
/// <p>
/// To ensure that progress-related properties behave properly create them as follows.
/// First, see <METHOD>GetProgress</METHOD> documentation, and include the necessary
/// information in <PROPERTY>ProgressDetails</PROPERTY> (in the CurrentFile example,
/// that means retrieving the filename and returning it as part of the 'detail' output argument).
/// Then, define property CurrentFile as "Calculated,SQLComputed", adding the compute code to
/// derive its value from <PROPERTY>ProgressDetails</PROPERTY>.  Finally, override
/// <METHOD>GetDisplayInfo</METHOD> to include CurentFile in the progress display.
/// <p>
/// 5. Optionally, override <METHOD>OnStarting</METHOD> to do any argument validation you
/// desire.  Errors returned here are presented to the user immediately in <METHOD>Start</METHOD>.
Method Execute(args) As %Status [ Abstract, Internal, Private ]
{
}

/// Optional method to override in subclasses.  Called in the process that starts the
/// background task to validate arguments and set any static properties.  After this
/// method returns, the object will be saved and visible to operators for the first time
/// with <PROPERTY>RunningState</PROPERTY> set to "Starting".  Failure returned from
/// this method causes <METHOD>Start</METHOD> to fail.
Method OnStarting(args) As %Status [ Internal, Private ]
{
}

/// Optional method to override in subclasses.  Called in the main process that will execute
/// the task code.  When this method returns, the object is saved with
/// <PROPERTY>RunningState</PROPERTY> set to "Running" and then <METHOD>Execute</METHOD>
/// will be called.  This method exists for subclasses to save any static properties
/// which require information from the main process.
/// At the time that this method runs, <METHOD>Start</METHOD> has already returned success.
/// You should only return errors from this method in exceptional cases.  Errors returned
/// will be recorded as the <PROPERTY>FinalStatus</PROPERTY> of this object.
Method OnRunning(args) As %Status [ Internal, Private ]
{
}

/// Optional method to override in subclasses to compute progress or to refine progress
/// metrics posted to shared memory.  On entry, pass-by-reference parameters <i>current</i>,
/// <i>total</i> and <i>details</i> have the values last posted to memory (if any calls to
/// $system.BGUtil.PostProgress() were made).  Subclasses may modify their
/// values (perhaps based on their input values, or by retrieving progress information via
/// an external mechanism).  Subclasses may also assign a value to <i>units</i>.  The values
/// on output become values of the namesake properties <PROPERTY>ProgressTotal</PROPERTY>,
/// <PROPERTY>ProgressCurrent</PROPERTY>, <PROPERTY>ProgressUnits</PROPERTY>, and
/// <PROPERTY>ProgressDetails</PROPERTY>.
/// <p>
/// Note that on input, <i>details</i> is an integer fetched from memory, but subclasses may
/// transform it into any string on output (<PROPERTY>ProgressDetails</PROPERTY> is a %String).
/// <PROPERTY>ProgressDetails</PROPERTY> is not displayed by default; it is a property from
/// which other calculated properties can derive their values.  By putting the code to retrieve
/// that progress information here, rather than directly in the compute code for such properties,
/// all progress-related information can be captured in the same place and at the same moment as
/// other progress information (perhaps atomically depending on your implementation).
/// <p>
/// This method is called only once each time the object is reloaded, rather than on each
/// reference to the property, so it presents this object as a "snapshot" of the progress at the
/// time it was loaded/queried.
/// <p>
/// This method is called from any process that opens or queries this object while
/// <PROPERTY>RunningState</PROPERTY> is "Running".  It is possible that the running
/// job has exited, either normally (due to a race between this method and the main process),
/// or abnormally, or due to cancellation.  This code must expect those possibilities.
/// If the caller finds that the job exited and the state was still Running, the state
/// will be changed to Exited, this method wil be called, the final progress information
/// will be stored, and it will not be called again.
/// <p>
/// This is also called once from the main job itself after <METHOD>Execute</METHOD>
/// returns in order to update and store final progress information, after which this
/// method will not be called again.
Method GetProgress(ByRef current As %Integer, ByRef total As %Integer, ByRef details As %String, ByRef units As %String) As %Status [ Internal, Private ]
{
}

/// Optional method to override in subclasses to control how the task is to be
/// displayed to users.
/// <p>
/// Returns $ListBuild(tasktype) where 'tasktype' is what the task modeled by
/// the subclass is called (e.g. Database Defragmentation).  This method may
/// additionally return an output array 'props' that describes how to display
/// properties defined in this subclass.  The form of the output array is
/// <br><br>
///  props(i)=$listbuild(propertyname,label,qualifiers)
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
ClassMethod GetDisplayInfo(Output props) As %List [ Internal ]
{
}

/// Subroutine of <METHOD>Register</METHOD>
Method RegisterSub(args...) As %Status [ Final, Internal, Private ]
{
}

/// On closing the object if we're the job that created it and the shared memory is
/// still marked 'new' (meaning it was never run), free it and delete the object.
Method %OnClose() As %Status [ Final, Internal, Private, ServerOnly = 1 ]
{
}

/// If we're called to delete an object that still has shared memory, free it first.
ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Final, Internal, Private, ServerOnly = 1 ]
{
}

/// SQLCompute code for <PROPERTY>ExternalState</PROPERTY>
Method GetExternalState(stored) As %Status [ Final, Internal ]
{
}

/// Subroutine of <METHOD>Run</METHOD> to mark the task as completed.
Method End(status As %Status) As %Status [ Final, Internal, Private ]
{
}

/// Called with the JOB command from <METHOD>Start</METHOD>
ClassMethod Child(id As %Integer) [ Final, Internal ]
{
}

/// Private method for setting RunningState because it's readonly externally and has a shadow copy stored
Method SetRunningState(state) [ Final, Internal, Private ]
{
}

/// Implementation of admin requests to cancel, pause, resume
Method Request(request) As %Status [ Final, Internal, Private ]
{
}

/// Helper function used to check that the job recorded as running this task is running.
/// It checks that PID still has the same job number and job id, meaning that the PID hasn't
/// been reused.
Method JobIsRunning() As %Boolean [ Internal, Private ]
{
}

/// Outputs and refreshes a monitoring screen displaying the current status.
/// Output goes to the principal device, which is assumed to be a terminal.
Method CHUIMonitor() [ Final, Internal ]
{
}

Parameter DOMAIN = "%Utility";

/// Disposition for cancel requests.
/// <p>
///  0 - not allowed<br>
///  1 - polls for cancel requests<br>
/// -1 - directly terminate the process
Parameter CANCELDISPOSITION = 0;

/// Disposition for pause requests.
/// <p>
///  0 - not allowed<br>
///  1 - polls for pause requests<br>
/// -1 - directly pause the process
Parameter PAUSEDISPOSITION = 0;

/// All database-oriented tasks running in a particular database
/// All database-oriented tasks.  This currently includes SYS.Database.BackgroundFileCompact and SYS.Database.BackgroundFileCompact
/// Query background tasks of all types
}
