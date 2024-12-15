/// <p>Unit test base class specialized for testing productions.<br>
/// Unit tests created based on this class are associated with one production.
/// When the unit test is run, it automatically starts the production, allows it to run for a parameterized time,
/// puts new event log entries in an array and passes control to a method for custom verifications, then
/// stops the production and checks for errors.<br>
/// The programmer can adjust some parameters, add code to verify results, and use callback methods to handle events
/// before/after start/stop production.<br>
/// </p>
/// <p>How to use this class:
/// <ul>
/// <li>Create a subclass of this base class, one per production.   Typically there will be one directory
///   per production, and one unit test class per directory/production, called for example Test.xml.  In case
///   one wants to run the same production with various settings there may be additional unit test classes such as
///   Test2.xml, Test3.xml, etc.</li>
/// <li> Override parameter <parameter>PRODUCTION</parameter> to contain the production class name.</li>
/// <li> Override parameters <parameter>MAXWAIT</parameter>, <parameter>MINRUN</parameter> and
///   <parameter>IGNOREPRODUCTIONERRORS</parameter> if the defaults are not adequate to the production case.</li>
/// <li> Override method <method>CheckResults</method> to include your code with custom verification of the
///   intended production results.</li>
/// <li> Override method <method>CheckErrors</method> if you set <parameter>IGNOREPRODUCTIONERRORS</parameter> = 1 and
///   want to check the errors yourself.</li>
/// <li> Override methods <method>OnBeforeProductionStart</method> and <method>OnAfterProductionStart</method> with
///   code to run before or after the production is started, for example to put files in place (before start),
///   or to call a method that fires the test by instantiating a business service and sending a message (after start).</li>
/// <li> Override methods <method>OnBeforeProductionStop</method> and <method>OnAfterProductionStop</method> with
///   code to run right before or after the production is stopped, if needed.<br>
///   Note: Initialization and cleanup code may go as usual into <b>OnBeforeOneTest()</b>, <b>OnAfterOneTest()</b>, etc., inherited from <class>%UnitTest.TestCase</class>.</li>
/// </ul></p>
/// <p>There are methods to facilitate usage, such as change settings, retrieve additional records from the
/// Interoperability event log, compare files, etc.  More details are given below and in the description for each method.<br>
/// <p> General utility/helper methods available to be used in the test code:
/// <ul>
/// <li> <method>GetSetting</method>: Get the current value of a setting for a production item.</li>
/// <li> <method>ChangeSetting</method>: Change the value of settings for production items.</li>
/// <li> <method>CreateCredentials</method>: Define credentials. </li>
/// <li> <method>SendRequest</method>: Call Interoperability testing service to send a request.</li>
/// <li> <method>CopyFile</method>: Copy a file from a directory to another directory.</li>
/// <li> <method>CompareFiles</method>: Compare the contents of two files.</li>
/// <li> <method>Error</method>: Compose a general error message as %Status with the text message provided.</li>
/// <li> <method>LogErrors</method>: Generate log messages with all errors contained in a status variable.</li>
/// <li> <method>GetEventLog</method>: Retrieve records from the Interoperability event log.</li>
/// <li> <method>SelectToString</method>: Return a string containing select information from the Event Log.</li>
/// </ul></p>
/// <p> File management utility/helper methods available to be used in the test code (all with normalized names):
/// <ul>
/// <li> <method>CreateMainDirTree</method>: Initialize test directories, with subdirectories for HL7 use.</li>
/// <li> <method>CopyFile</method>: Copy a file from a directory to another directory.</li>
/// <li> <method>CompareFiles</method>: Compare the contents of two files.</li>
/// <li> <method>CleanUpDirectory</method>: Remove all files from a directory or tree.</li>
///
/// </ul></p>
/// <p> The following properties are available:
/// <ul>
/// <li> <property>MainDir</property></li>
/// <li> <property>HL7InputDir</property></li>
/// <li> <property>HL7OutputDir</property></li>
/// <li> <property>HL7ArchiveDir</property></li>
/// <li> <property>HL7WorkDir</property></li>
/// <li> <property>MachineName</property></li>
/// <li> <property>InstanceName</property></li>
/// <li> <property>DSNToSamples</property></li>
/// <li> <property>DSNToUser</property></li>
/// </ul></p>
/// <p> Utility/helper methods to be used during test development or debugging:
/// <ul>
/// <li> <method>Run</method>: Run without loading/deleting any classes. </li>
/// <li> <method>Debug</method>: Run in debug mode, without loading/deleting any classes.</li>
/// <li> <method>Export</method>: Export all classes in a package to a directory.</li>
/// <li> <method>ListSettings</method>: List to the terminal all current settings for a given production and config item.</li>
/// </ul></p>
Class %UnitTest.TestProduction Extends %UnitTest.TestCase [ System = 3 ]
{

/// Class name of the production.  It must contain the production class name.
Parameter PRODUCTION;

/// Maximum time in seconds to wait for the production to completely start or stop.  The default is 10 seconds,
/// override if necessary.
Parameter MAXWAIT = 10;

/// Minimum time to let production run before collecting event log entries of type "infouser" and check for results.
/// The default is 10 seconds, override if necessary.  This varies with the production; some productions only
/// need to run for a little time, and some require more time.
Parameter MINRUN = 10;

/// If any errors appear in the Event Log during execution of the production, the test will fail.
/// In many cases, errors are expected to happen.  In this case, override this parameter.  You may also want to check them manually
/// by overriding the method <method>CheckErrors</method>.
Parameter IGNOREPRODUCTIONERRORS = 0;

/// Normalized root test directory name, which by default is directory <b>TestAutoNNN</b>
/// on the same level as the InterSystems IRIS or HealthShare instance, and where <b>NNN</b> is the build number.
/// To initialize the directory tree see method <method>CreateMainDirTree</method>.
Property MainDir As %String;

/// Normalized directory name for HL7 input
Property HL7InputDir As %String;

/// Normalized directory name for HL7 output
Property HL7OutputDir As %String;

/// Normalized directory name for HL7 work
Property HL7WorkDir As %String;

/// Normalized directory name for HL7 archive
Property HL7ArchiveDir As %String;

/// Machine name
Property MachineName As %String;

/// Instance name
Property InstanceName As %String;

/// DSN name pointing to namespace SAMPLES
Property DSNToSamples As %String;

/// DSN name pointing to namespace USER
Property DSNToUser As %String;

/// Production's first event log ID
Property BaseLogId As %Integer;

/// Last event log ID retrieved for this production execution
Property LastLogId As %Integer;

/// Initialize properties.  <br>
/// Note: Do not edit this method.  If you want to change the property values, set them directly in your code.
Method %OnNew(initvalue) As %Status [ Internal ]
{
}

/// Code to run right before the production is started.  This is useful to:<br>
/// <ul><li>Adjust settings - see method <method>ChangeSetting</method>.</li>
/// <li>Create directories - see method <method>CreateMainDirTree</method>.</li>
/// <li>Copy files - see method <method>CopyFile</method>.</li>
/// <li>Create credentials required by the production - see method <method>CreateCredentials</method>.</li>
/// <li>etc.</li></ul>
/// If an error status is returned, the test will be aborted and failed.
/// So if a non fatal error occurs, you may invoke ..LogErrors(status,"OnBeforeProductionStart()") and return $$$OK.
Method OnBeforeProductionStart() As %Status
{
}

/// Code to run right after the production is started. Used, for example, to call a method that initiates the test.
/// If an error status is returned, the test will be aborted and failed and the production will be stopped.
/// So if a non fatal error occurs, you may invoke ..LogErrors(status,"OnAfterProductionStart()") and return $$$OK.
Method OnAfterProductionStart() As %Status
{
}

/// Code to run right before the production is stopped.
/// If an error status is returned, the test will be failed and aborted, the production will be stopped.
/// If a non fatal error occurs, you may invoke ..LogErrors(status,"OnBeforeProductionStop()") and return $$$OK.
Method OnBeforeProductionStop() As %Status
{
}

/// Code to run right after the production is stopped.
/// If an error status is returned, the test is failed.
/// If a non fatal error occurs, you may invoke ..LogErrors(status,"OnAfterProductionStop()") and return $$$OK.
Method OnAfterProductionStop() As %Status
{
}

/// Fill in with code to check the results for the production execution.<br>
/// This method is initialized with a local array containing user created entries of type "Info" from the Event Log,
/// not including the start production/components entries, with the following contents:<br>
///   <b>Log</b> = last existing seq for array <b>Log()</b> <br>
///   <b>Log(seq, fieldname)</b> = fieldvalue<br>
/// To get other entries from the Event Log, or for more information about the array contents,
/// see method <method>GetEventLog</method>. <br>
/// Return $$$OK in most cases, or an error status if you want to indicate that there was a failure.  Remember
/// that failures are automatic when unit test macros are used.<br>
Method CheckResults(ByRef Log As %String, New As %String) As %Status
{
}

/// Override this method if you are going to check errors with custom code.
/// It's automatically invoked when parameter <parameter>IGNOREPRODUCTIONERRORS</parameter> = 1.
Method CheckErrors() As %Status
{
}

/// Get the current value of a setting for a production item. <b>Value</b> must be passed by reference. Examples: <br>
///     Set s = ..GetSetting([Production], ConfigName, Setting, .Value)<br>
///     Set s = ##class(%UnitTest.TestProduction).GetSetting(Production, ConfigName, Setting, .Value)<br>
ClassMethod GetSetting(production As %String = "", configName As %String = "", setting As %String = "", Output value As %String) As %Status
{
}

/// Change the value of a setting for a production item, optionally updating the production class too. Examples: <br>
///     Set s = ..ChangeSetting([Production], ConfigName, Setting, Value)<br>
///     Set s = ##class(%UnitTest.TestProduction).ChangeSetting(Production, ConfigName, Setting, Value, 1)<br>
/// The values are validated.  Check the return for errors.
ClassMethod ChangeSetting(production As %String = "", configName As %String = "", setting As %String = "", value As %String = "", saveToProduction As %Boolean = 0) As %Status
{
}

/// Internal method called by GetSetting and ChangeSetting.
ClassMethod ChangeOrGetSetting(operation As %String = "Get", production As %String = "", configName As %String = "", setting As %String = "", ByRef value As %String = "") As %Status [ Internal, Private ]
{
}

/// Define credentials.  If one already exists with the same Id, it's overwritten.  Examples: <br>
///     Set s = ..CreateCredentials(Id, UserName, Password)<br>
///     Set s = ##class(%UnitTest.TestProduction).CreateCredentials(Id, UserName, Password)
ClassMethod CreateCredentials(CredId As %String = "", User As %String = "", Pw As %String = "") As %Status
{
}

/// Call Interoperability testing service to send a request to a business process or business operation.  This is
/// a way to invoke them directly without creating a dummy business service.  The production needs to be
/// enabled for testing.<br>
/// If no request object type is passed, then type Ens.Request is assumed.<br>
/// Example:<br>
/// Set s = ..SendRequest("MyBPName", MyRequestObject, .Response, [GetReply], [Time]) <br>
///    <b>GetReply=1</b> indicates a response is expected (default is 0).<br>
///    <b>Time</b> indicates how long to wait for a response in case GetReply=1.  Default is 30 secs.
ClassMethod SendRequest(Name As %String = "", Req As %RegisteredObject, ByRef Resp As %RegisteredObject, GetReply As %Boolean = 0, Time As %Integer = 30) As %Status
{
}

/// Compose a general error message as %Status with the text message provided.
/// If message is the null string, this method returns $$$OK instead.<br>
/// To append text to an existing error text, pass the status as a second argument.<br>
/// Examples:<br>
///     Set status=..Error(message, [oldstatus])<br>
///     Set status=##class(%UnitTest.TestProduction).Error(message, [oldstatus])
ClassMethod Error(msg As %String = "", s As %Status = "") As %Status
{
}

/// Generate log messages with all errors contained in status variable <b>s</b>.
Method LogErrors(s As %Status = 1, where As %String = "")
{
}

/// Retrieve records from the Interoperability event log, returning them in an array.<br>
/// <b>type</b> = "info" or "error" or "trace" or "warning" or "alert" or "assert" or
///        "infouser" or "startstop" or "other"
/// <b>name</b> = config name to filter entries (only fetch entries associated with this config name)<br>
/// Examples: <br>
/// To get new user entries of type "Info":<br>
/// Set s = ..GetEventLog("infouser", "", "", .Log, .New)<br>
/// To get new entries of type "Trace":<br>
/// Set s = ..GetEventLog("trace", "MyBP", "", .Log, .New)<br>
/// where <b>New</b> indicates how many new entries were found.<br>
/// Sample format for the returned array: <br>
/// 	Log(1,"ConfigName")="Ens.ScheduleHandler" <br>
/// 	Log(1,"ID")="114" <br>
/// 	Log(1,"Job")="4768" <br>
/// 	Log(1,"SessionId")="8" <br>
/// 	Log(1,"SourceClass")="Ens.Director" <br>
/// 	Log(1,"SourceMethod")="UpdateProduction" <br>
/// 	Log(1,"Stack")="" <br>
/// 	Log(1,"Text")="Production 'QDENS.HL7.HL7Routing.Production' is up-to-date." <br>
/// 	Log(1,"TimeLogged")="2006-12-05 17:41:06.421" <br>
/// 	Log(1,"Type")="Info"
Method GetEventLog(type As %String = "all", name As %String = "", baseId As %Integer, ByRef v As %String, Output New As %Integer) As %Status
{
}

/// Extract select text information from the event log returned results, and return a delimited string containing
/// the count followed by selected values, filtering by property/index <b>Prop</b> equals to <b>Value</b>.
ClassMethod SelectToString(ByRef Log As %String, Prop As %String = "", Value As %String = "", Del As %String = "^") As %String
{
}

/// Run itself without loading/deleting any classes.  Example: <br>
///   Do ##class(MyTestClass).Run() <br>
/// See also method <method>Debug</method>.
ClassMethod Run() As %Status
{
}

/// Run itself in debug mode, without loading/deleting any classes.
/// If an assertion fails or if an error is encountered, execution will pause.  Example: <br>
///   Do ##class(MyTestClass).Debug() <br>
/// See also method <method>Run</method>.
ClassMethod Debug() As %Status
{
}

/// Export all classes in the same package to a directory as a set of individual files.<br>
/// If the directory is not specified, then ^UnitTestRoot will be used as a base and the last piece of
/// the package name will be used as the subdirectory name.<br>
/// If the suite name is not specified, then the last piece of the package name of the current class will be used.<br>
/// Note that parameter suite is ignored when a directory is specified.<br>
/// Examples:<br>
/// Do ##class(MyTestClass).Export()<br>
/// Do ##class(MyTestClass).Export("D:\Test\MyProductionTests\TempDir")<br>
/// Do ##class(MyTestClass).Export(,"MySuite")<br>
/// To do: In production-enabled namespaces, all rules and VDoc schemas whose names start with the package should also be exported.<br>
/// To do: Think about other kinds of files such as CSP pages.
ClassMethod Export(dir As %String = "", suite As %String = "")
{
}

/// List all existing settings and their values for a given production and config item name.  If a config name is
/// provided, all settings for this config name are listed.  Otherwise all config names are listed.  Examples:<br>
///    Do ##class(MyTestClass).ListSettings(, [configname]) <br>
///    Do ##class(%UnitTest.TestProduction).ListSettings(production, [configname])
ClassMethod ListSettings(production As %String = "", configName As %String = "")
{
}

/// Helper method to return the normalized directory name for the full directory path composed of
/// the default test directory plus the additional directories, eg. <b>sub1/sub2</b>.
/// The argument containing the additional directories must use slashes ( <b>/</b> ) as the directory delimiter, on all platforms.
Method SubMainDir(AddDirs = "") As %String
{
}

/// Create a test directory tree that is suitable for generic testing and for HL7 testing.
/// The default root test directory is defined by property <property>MainDir</property>. <br>
/// This method does not erase any files or directories if they are already present.  To do a cleanup,
/// see method <method>CleanUpDirectory</method>. <br>
/// This method may be invoked in OnBeforeAllTests() or OnBeforeProductionStart() to initialize the test directory tree.
Method CreateMainDirTree() As %Status
{
}

/// <b>Delete</b> all files in a directory.  If <b>Recurse</b> is true, also delete all subdirectories recursively,
/// and delete the original directory selected, that is, the entire directory vanishes.
Method CleanUpDirectory(Dir As %String = "", Recurse As %Boolean = 0) As %Status [ Internal ]
{
}

/// Copy a file from a directory to another directory.  This allows for example to place files in
/// input directories.  The default origin directory <b>SourceDir</b> is the unit test directory.  The default
/// destination directory <b>TargetDir</b> is the directory name specified by <property>HL7InputDir</property>.
Method CopyFile(FileName As %String = "", SourceDir As %String = "", TargetDir As %String = "") As %Status
{
}

/// Compare the contents of two files and return $$$OK if they are equal, or a status code otherwise. <br>
/// The default for <b>FileName2</b> is the same name as <b>FileName1</b> concatenated with <b>_reference</b>
/// before the last file extension. <br>Examples: <br>
/// <b>FileName1</b> = MyFile.txt, default <b>FileName2</b> = MyFile_Reference.txt <br>
/// <b>FileName1</b> = HL7Message_ADTA01, default <b>FileName2</b> = HL7Message_ADTA01_Reference <br>
/// The default for <b>Dir1</b> is the directory name specified by <property>HL7OutputDir</property>. <br>
/// The default for <b>Dir2</b> is the unit test directory.
Method CompareFiles(FileName1 As %String = "", FileName2 As %String = "", Dir1 As %String = "", Dir2 As %String = "") As %Status
{
}

/// Given a directory and a file name, return a normalized full file name.
ClassMethod GetFullName(Dir As %String = "", FileName As %String = "") As %String
{
}

Method CheckEnvironment() As %Status [ CodeMode = objectgenerator, Internal, Private ]
{
}

/// Enforce mandatory parameter PRODUCTION to be filled in.
Method CheckParameterPRODUCTION() As %Status [ CodeMode = objectgenerator, Internal, Private ]
{
}

/// Define an array with the macros used in this class from the definitions in the production when available.
ClassMethod GetMacros(Output MacroVars As %String) [ CodeMode = objectgenerator, Internal, Private ]
{
}

/// Check if namespace is Interoperability or HealthShare enabled.
ClassMethod CheckNamespace() As %Status
{
}

Method StartProduction() As %Boolean [ Internal, Private ]
{
}

Method StopProduction() As %Boolean [ Internal, Private ]
{
}

Method WaitForState(pState As %String) As %Status [ Internal, Private ]
{
}

/// Main execution flow control.
Method TestControl() As %Status [ Internal ]
{
}

}
