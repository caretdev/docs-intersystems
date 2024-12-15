/// <style type="text/css">
///    arg { font-style: italic; font-weight: bold; }
///    table.parm-format { border-collapse: collapse; border-width: 1px; margin-top: 20px; }
///    table.parm-format TD { border: 1px solid black; padding: 0px 10px 0px 10px; }
/// </style>
///
/// The InterSystems IRIS UnitTest framework is composed of several classes that have the package name (prefix) <b>%UnitTest</b>.
/// Of these classes, the <class>%UnitTest.Manager</class> class is the superclass of the UnitTest infrastructure, and is
/// primarily responsible for the following tasks:
/// <ul>
///   <li>Individual UnitTest Invocations</li>
///   <li>Pre/Post Test Processing</li>
///   <li>Runtime Processing & Reporting</li>
///   <li>Test/Error Processing & Analysis</li>
///   <li>Statistics Collection & Aggregation</li>
///   <li>etc.</li>
/// </ul>
/// Developers familiar with the <i>xUnit</i> framework should notice a passing resemblance, as
/// these two frameworks share a common testing philosophy.
/// </br></br>
/// Prior to invoking any of the methods within this class, you must first perform the following setup instructions:
/// <ul>
///   <li>Set the global <b>^UnitTestRoot</b> to a valid root directory that contains all of the UnitTest classes from which
///       all UnitTests will be invoked </br>
///       <h3>Example:</h3>
///       <example>
///         set ^UnitTestRoot="C:\MyUnitTests"  ; Adding a final slash is optional
///       </example>
///   </li>
/// </ul>
/// Once the setup has been completed, launching a UnitTest is as simple as invoking one the following methods:
/// <ul>
///   <li><method>RunTest</method> - Run all tests specified by the <b><i>testspec</i></b> parameter and delete all associated test classes after
///       invocation (Unless otherwise specified).</li>
///   <li><method>DebugRunTestCase</method> - Run all tests specified by the <b><i>testspec</b></i> parameter without deleting the corresponding
///       test classes after invocation. </br>
///       This method requires that all test classes must first be loaded before the first invocation, which
///       can be accomplished by initially invoking the <method>DebugLoadTestSuite</method> method.
/// </ul>
/// The <method>RunTest</method>(<b><i>testspec</i></b>, <b><i>spec</i></b>, <b><i>userparam</i></b>) method, more specifically, performs the following tasks: </br>
/// <ol type=1>
///   <li>Evaluate all of the qualifiers specified by the <b><i>qspec</i></b> parameter
///     <ul type=square>
///       <li>If this parameter contains the qualifiers <b>/cleanup/run/delete</b>, without the <b>/debug</b> qualifier,
///       then all globals, classes, and routines within the current namespace will be recorded before each invocation
///       of the <method>RunOneTestSuite</method> method.  After each invocation of this method, the namespace will be purged
///       of all globals, classes and routines, other than those previously recorded</li>
///     </ul>
///   </li>
///   <li>Evaluate all of the user parameters specified by the <b><i>userparam</i></b> parameter
///     <ul type=square>
///       <li>If this parameter contains the value <b>/log</b>, then all processing information will be logged to the <b>UNITTEST.LOG</b> file
///       which is located in the <b>mgr</b> directory of the IRIS Instance (e.g. $ZU(12))</li>
///     </ul>
///   </li>
///   <li>Invoke the following method before any UnitTests are run: <method>OnBeforeAllTests</method></li>
///   <li>Collect all UnitTest <i>testsuites</i> (directories) specified by the <b><i>testspec</i></b> parameter, and recursively all associated <i>sub-testsuites</i> (sub-directories)
///       (assuming that the <b>/recursive</b> qualifier is on (the default)), whilst skipping all sub-directories whose names begins with an underscore </br>
///       See the notes within the <method>RunTest</method> method for additional details</li>
///   <li>For each UnitTest's <i>testsuites</i> collected in the previous step, invoke the <method>RunOneTestSuite</method> method which performs the following tasks:</li>
///     <ol type=A>
///       <li>Collect all UnitTest classes specified by the <b><i>dir</i></b> parameter, along with each class's corresponding test methods
///           when the <b><i>testspec</i></b> parameter is defined with the following nomenclature: </br>
///           [-]<i>testsuite [ :[testcase] [ :testmethod ] [ ;[testcase] [ :testmethod ] ]<sup>*</sup> ]</i>
///       </li>
///       <li>Record the start of the testing process based on the specified <b><i>suite</i></b> parameter </br>
///           See item (3) in the <i>Important Notes</i> section below for addition details
///       </li>
///       <li>Load and compile all relevant files in the directory specified by the <b><i>dir</i></b> parameter
///         <ul type=square>
///           <li>If the <b>/loadxml</b> qualifier is true (the default), then all XML files (<b>*.xml, *.XML</b>) will be loaded</li>
///           <li>If the <b>/loadudl</b> qualifier is true (the default), then all UDL files (<b>*.cls, *.mac, *.int, *.inc, *.CLS, *.MAC, *.INT, *.INC</b>) will be loaded</li>
///           To see the current qualifier values, invoke the following method: <i>do $SYSTEM.OBJ.ShowQualifiers()</i>
///         </ul>
///       </li>
///       <li>For each UnitTest class collected in step (5A) above, invoke the <method>RunOneTestCase</method> method which performs the following tasks:</li>
///         <ol type=I>
///           <li>Record the start of the testing process based on the specified <b><i>suite</i></b> and <b><i>class</i></b> parameters </br>
///           See item (3) in the <i>Important Notes</i> section below for addition details
///           </li>
///           <li>Instantiate the UnitTest class specified by the <b><i>class</i></b> parameter</li>
///           <li>Record the current Process Values</li>
///           <li>Invoke the following method: <method>OnBeforeTestCase</method></li>
///           <li>Invoke the following method: <method>class.OnBeforeAllTests</method></li>
///           <li>Collect all UnitTest methods from the specified <b><i>class</i></b> parameter, which have the following nomenclature: Test* (e.g. Test1 or TestSQL)</li>
///           <li>For each method collected in the previous step, perform the following steps:
///             <ol type=a>
///               <li>Record the start of the testing process based on the <b><i>suite</i></b>, <b><i>class</i></b> and <b><i>method</i></b> parameters </br>
///                   See item (3) in the <i>Important Notes</i> section below for addition details
///               </li>
///               <li>Invoke the following method: <method>OnBeforeOneTest</method></li>
///               <li>Invoke the following method: <method>class.OnBeforeOneTest</method></li>
///               <li>Invoke the specified UnitTest method (e.g. Test1 or TestSQL)
///               <li>Invoke the following method: <method>class.OnAfterOneTest</method></li>
///               <li>Invoke the following method: <method>OnAfterOneTest</method></li>
///               <li>Record the end of the testing process based on the <b><i>suite</i></b>, <b><i>class</i></b> and <b><i>method</i></b> parameters </br>
///                   See item (3) in the <i>Important Notes</i> section below for addition details
///               </li>
///             </ol>
///           </li>
///           <li>Repeat the previous steps (a) through (g) for all of the methods collected in step (VI) above</li>
///           <li>Invoke the following method: <method>class.OnAfterAllTests</method></li>
///           <li>Invoke the following method: <method>OnAfterAllTests</method></li>
///           <li>Cleanup and Restore any modified Process Values</li>
///         </ol>
///       </li>
///       <li>Repeat the previous steps (I) through (XI) for all of the classes collected in (5A) above
///       <li>Delete all the classes loaded in step (5C) above
///       <li>Record the end of the testing process based on the <b><i>suite</i></b> parameter </br>
///           See item (3) in the <i>Important Notes</i> section below for addition details
///       </li>
///     </ol>
///   <li>Repeat the previous steps (A) through (G) for all <i>testsuites</i> (directories) and all <i>sub-testsuites</i> (sub-directories) collected in step (4) above</li>
/// </ol>
/// <b><u>IMPORTANT NOTES</u></b><br/>
/// <ol>
///   <li>Throughout this class, the terms <b>qspec</b> and <b>qualifier</b> will be used interchangeably, as many methods in this class use the
///       <b>qspec</b> parameter, which is a concatenated list of supported system flags and qualifiers documented on the following page: </br>
///       <a href="https://docs.intersystems.com/irislatest/csp/docbook/Doc.Results.cls?docs%5Bquery%5D=qspec" target="_blank">System Flags and Qualifiers</a>
///       </br/></br>
///       The <b>qspec</b> parameter can specify qualifiers in the following format:
///        <i>/[no]&lt;qualifier&gt;[=&lt;value&gt;][/[no]&lt;qualifier&gt;[=&lt;value&gt;]]*</i>
///   </li>
///   </br>
///   <li>The loading, running and deletion tasks can each be skipped by specifying the following qualifiers respectively: </br>
///       <b>/noload</b>, <b>/norun</b> and <b>/nodelete</b>
///   </li>
///   </br>
///   <li>UnitTest results are saved to the following globals.  The first global is used by the <i>UnitTest Results CSP Pages</i>, while
///       the second global is used for status processing and debugging:
///     <ul type=square>
///       <li><i>^|ns|UnitTest.Result(id,suite[,class[,method]])=$LIST(...) of Runtime Information</i> </br>
///           <b>ns</b> - The Namespace in which the UnitTest is being invoked (e.g. "USER") </br>
///           <b>id</b> - The value of the Name/Value pair <i>Index</i> within the result URL
///       </li>
///       <li><i>^IRIS.Temp.UnitState=$LB(suit[,class[,method]])</i></li>
///     </ul>
///   </li>
/// </ol>
/// <br><br>
Class %UnitTest.Manager Extends %RegisteredObject [ System = 3 ]
{

/// <b>DEPRECATED</b>. Use the <property>ResultId</property> property.
Property LogIndex [ Deprecated ];

/// A Boolean flag that is set to true (1) if the <b>/debug</b> qualifier is enabled (1).
Property Debug;

/// A Boolean flag that is set to true (1) if the <b>/display=all</b> qualifier is enabled (1).
Property Display;

/// A Boolean flag that is set to true (1) if unexpected public variables should trigger an error.
Property ReportVariableLeaks;

/// A Boolean flag that is set to true (1) if the <b>/loadxml</b> qualifier is enabled (1).
Property LoadXML;

/// A Boolean flag that is set to true (1) if the <b>/loadudl</b> qualifier is enabled (1). </br>
/// UDL files: *.cls, *.mac, *.int, *.inc, *.CLS, *.MAC, *.INT, *.INC
Property LoadUDL;

/// The directory that contains the current UnitTest.
Property CurrentDir;

/// Set to the <method>RunTest</method> method's third parameter <b>userparam</b>, if specified as a string.
Property UserParam As %String;

/// Set to the <method>RunTest</method> method's third parameter <b>userparam</b>, if specified as an array.
/// This array is populated from the first level subscripts of the <b>userparam</b> parameter. </br>
/// Allow users to store additional information, like platform, product version, etc. for each UnitTest.
/// This information can be later cross-referenced in the result.
Property UserFields As array Of %String;

/// Private property for <b>InterSystems INTERNAL USE ONLY!</b>
Property TheStack [ MultiDimensional, Private ];

/// Private property to hold information about the UnitTest's Namespace.
Property NSInfo [ Internal, MultiDimensional, Private ];

/// Private property set primarily in the <method>%OnNew</method> method to hold information
/// about the environment's Process Values.  These original values can be restored if changed
/// during the invocation of the UnitTest.
Property Environment [ Internal, MultiDimensional, Private ];

/// Private property to hold parallel harness when in use.
Property Parallel As %UnitTest.Parallel [ Internal, Private ];

/// Property to hold the Result ID (instance slot) in the <b>^UnitTest.Manager</b> global.
Property ResultId As %Integer;

/// Internal property to hold the Namespace in which the UnitTest was run.
Property OriginNS As %String [ Internal ];

/// <p>This method invokes all of the UnitTest methods contained within the classes specified
/// by the <i>testspec</i> parameter.  During the invocation of these methods, a running log
/// is maintained within the following global so that it can be inspected by other processes:
/// <b>^UnitTest.Result</b><br> </p>
/// <p><b>Parameters:</b>
/// <dl>
/// <dt><i>testspec</i></dt>
/// <dd><i>&lt;testspec list&gt;</i> used to invoke UnitTests; passed in as one of the following formats:<br/>
///   <dl><dd>
///     <b>String</b>:  testspec=<i>&lt;testspec list&gt;</i><br/>
///     <b>Array</b>:   testspec(<i>&lt;testspec list&gt;</i><sup>*</sup>)="" <i><b>OR</b></i> testspec(#<sup>*</sup>)=<i>&lt;testspec list&gt;</i> <br/>
///     <b>Global</b>:  testspec="^global"  (e.g. ^global(<i>&lt;testspec list&gt;</i><sup>*</sup>)="" <i><b>OR</b></i> ^global(#<sup>*</sup>)=<i>&lt;testspec list&gt;</i>)
///   </dl>
/// <b>Syntax</b><br/><br/>
/// <dd><i>&lt;testspec data&gt;</i> ::= [-]<i>testsuite [ :[testcase] [ :testmethod ] [ ;[testcase] [ :testmethod ] ]<sup>*</sup> ]</i>
/// <dd><i>&lt;testspec list&gt;</i> ::= "<i>&lt;testspec data&gt;</i> [ ,<i>&lt;testspec data&gt;</i> ]<sup>*</sup>"
/// <dd><i>&lt;testsuite root&gt;</i> ::= // The first instance of the <i>testsuite</i> value within the <i>&lt;testspec list&gt;</i>
///   <dl>
///     <dd><i>testsuite</i>
///     <dl><dd>
///       A directory (and possibly all of its sub-directories) that's a child of the directory referenced in the
///       <b>^UnitTestRoot</b> global.  This directory contains all of the UnitTest classes from which all UnitTests will be invoked.
///       <dl><dd>
///         <u>NOTE-1</u><br/>
///         The <b>^UnitTestRoot</b> global must specify a valid directory whose existence is checked during the invocation of the <b>RunTest(...)</b> method.
///       </dl>
///       <dl><dd>
///         <u>NOTE-2</u><br/>
///         By default, the <b>RunTest(...)</b> method will recursively process all sub-directories unless
///         the <b>/norecursive</b> qualifier is passed to the <b><i>qspec</i></b> parameter.
///       </dl>
///       <dl><dd>
///         <u>NOTE-3</u><br/>
///         If a negative-sign (-) precedes the <i>testsuite</i>, then this directory (and all of its sub-directories)
///         will be excluded from UnitTest invocations.<br/>
///         A <i>&lt;testsuite root&gt;</i> (without a negative-sign) must first be included before a -<i>testsuite</i>
///         can be excluded, as in the following example:<br/>
///       <dl><dd>
///         <i>&lt;testspec list&gt;</i> = "SQL,-SQL\Embedded"
///       </dl>
///       </dl>
///     </dl>
///     <dd><i>testcase</i> (Optional)
///     <dl><dd>
///       A class, specified in the following format, which extends one of the testing classes (e.g. <b>%UnitTest.TestCase</b>) and contains testing methods: <i>package.class</i> (e.g. Sample.Person)
///     </dl>
///     <dd><i>testmethod</i> (Optional)
///     <dl><dd>
///       A testing method name in the following format: <i>Test*</i>  (e.g. Test1 or TestFirst)
///     </dl>
///   </dl>
///   <dl>
///     <dd><b><u>NOTE</u></b><br/>
///     If no value is specified for the <i>testspec</i> parameter, then the directory referenced
///     in the <b>^UnitTestRoot</b> global will be used for the <i>testsuite</i> value.<br/>
///     Any subdirectory whose name begins with an underscore ( _ ) will be skipped.
///   </dl>
/// <dt><i>qspec</i>
/// <dd>This parameter has a name/term that is used interchangeably with the term <b>qualifier</b>, and a value
///     that is a concatenated list of supported system flags and qualifiers documented on the following page:
///       <a href="https://docs.intersystems.com/irislatest/csp/docbook/Doc.Results.cls?docs%5Bquery%5D=qspec" target="_blank">System Flags and Qualifiers</a>
///     </br/></br>
///     This parameter allows the specification of qualifiers in the following format:
///        <i>/[no]&lt;qualifier&gt;[=&lt;value&gt;][/[no]&lt;qualifier&gt;[=&lt;value&gt;]]*</i>
///     </br></br>
///     Example: <b>/noload/norecursive</b>
///     </br></br>
///     The first four qualifiers below (<b>debug</b>, <b>load</b>, <b>run</b>, and <b>recursive</b>) are negatable Booleans,
///     which can be enabled by explicitly specifying the qualifier name (e.g. <b>/debug</b>) or disabled by either
///     adding the prefix <b>no</b>, or by adding the value zero <b>=0</b>, as in the following respective examples:
///     <b>/nodebug</b> OR <b>/debug=0</b>
///     </br></br>
///     <b>/debug</b>: Run in debug mode, which causes an execution <i>BREAK</i> if a UnitTest fails. Default is <b>/nodebug</b>.
///     </br></br>
///     <b>/load</b>: Load the corresponding UnitTest classes for the specified <b><i>testspec</i></b> parameter. Default is <b>/load</b>.
///     If both the <b>/load</b> and <b>/run</b> qualifiers are enabled (true), then all loaded classes, routines, and CSP files will be deleted after
///     all UnitTests have finished running. To prevent the post-deletion task, invoke the <method>DebugLoadTestSuite</method> method to first load all
///     appropriate UnitTest classes and then invoke the <b>DebugRunTestCase</b> method to actually run the corresponding UnitTests.
///     </br></br>
///     <b>/run</b>: Run all UnitTests specified by the <b><i>testsuite</i></b> parameter.  Use the <b>/norun</b> qualifier if you only want to load,
///     but not run, all corresponding UnitTest classes specified by the <b><i>testsuite</i></b> parameter. Default is <b>/run</b>.
///     </br></br>
///     <b>/recursive</b>: Recurse the specified directory when loading UnitTest classes. Default is <b>/recursive</b>.
///     </br></br>
///     <b>/display=all</b>: Display extended information when loading and running UnitTest classes and tests. <b>/display=none</b> displays limited information. Default is <b>/display=all</b>.
///     </br></br>
///     <b>/autoload</b>: Automatically load sub-directories with the given name when loading test classes.
///     Default is <b>/autoload=_autoload</b>.
///     When this qualifier is specified, classes are loaded from the given sub-directory of the current directory and its ancestors.
///     This makes it possible to use a class in multiple test suites without copying it to each of their descendant directories.
///     </br></br>
///     <b>/nodelete</b>: Do not delete loaded classes when the UnitTest has finished running.
///     </br></br>
/// </dd>
///
/// <dt><i>userparam</i>
/// <dd>An arbitrary argument passed in by the caller, which allows for the storage of additional
///     information, like platform, product version, etc. </br>
///     If this parameter is passed a string, then it becomes the value for the <property>UserParam</property> property. </br>
///     If this parameter is passed an array, then the first level subscripts and their values are used to populate the <property>UserFields</property> array property. </br>
///     This information can be later cross-referenced in the result.
/// </dd></dl>
/// <h3>Examples:</h3>
/// <example language="COS">
///  // --- RunTest(...) Examples ---
///
///  // --- Setup ---
///  set ^UnitTestRoot="C:\UnitTests\"
///
///  // --- UnitTest Directories ---
///  // C:\UnitTests\SQL\Embedded
///  // C:\UnitTests\SQL\Dynamic
///  // C:\UnitTests\SQL\ODBC
///  // C:\UnitTests\SQL\JDBC
///
///  // --- Passing 'testspec' as a String ---
///  set tSC=##class(%UnitTest.Manager).RunTest("SQL\Embedded,SQL\Dynamic")
///
///  // --- Passing 'testspec' as an Array ---
///  set utSpecs("SQL\Embedded")=""   // Alternatively:  set utSpecs(1)="SQL\Embedded"
///  set utSpecs("SQL\Dynamic")=""    //                 set utSpecs(2)="SQL\Dynamic"
///  set tSC=##class(%UnitTest.Manager).RunTest(.utSpecs)
///
///  // --- Passing 'testspec' as a Global ---
///  set ^utSpecs("SQL\Embedded")=""  // Alternatively:  set ^utSpecs(1)="SQL\Embedded"
///  set ^utSpecs("SQL\Dynamic")=""   //                 set ^utSpecs(2)="SQL\Dynamic"
///  set tSC=##class(%UnitTest.Manager).RunTest("^utSpecs")
///
///  // --- Passing 'testspec' as an Array (Complex Example) ---
///  set utSpecs("SQL\Embedded:SQL.Embedded:Test1;:Test2")=""
///  set utSpecs("SQL\Dynamic::Test1;:Test2")=""
///  set tSC=##class(%UnitTest.Manager).RunTest(.utSpecs,"/recursive=0")
///
///  // --- Passing 'testspec' as a String (With Exclusions) ---
///  set tSC=##class(%UnitTest.Manager).RunTest("SQL,-SQL\ODBC,-SQL\JDBC")
/// </example>
/// <b><u>NOTE</u></b><br/>
/// If any of your code needs to run in the <b>%SYS</b> namespace, change to the <b>%SYS</b> namespace
/// to run that specific code (e.g. ZN "%SYS"), then return to the original namespace for continued code processing.
///
ClassMethod RunTest(ByRef testspec As %String, qspec As %String, ByRef userparam) As %Status
{
}

/// <p>
/// This method is used to load, but not run, all corresponding UnitTest classes specified by the
/// <b><i>testsuite</i></b> parameter. </br>
/// Once the UnitTest classes are loaded by this method, the <method>DebugRunTestCase</method> method
/// can be invoked to run all of the corresponding UnitTests over and over again, without having to reload the UnitTest classes.
/// </br></br>
/// Developers should use the <method>DebugLoadTestSuite</method> method in conjunction with the <method>DebugRunTestCase</method> method
/// to load all UnitTest classes once, and then run all corresponding UnitTests as often as necessary during the development, debugging
/// and testing process.
/// </p>
ClassMethod DebugLoadTestSuite(testsuite As %String = "", qspec As %String = "") As %Status
{
}

/// <p>
/// This method is used to run all UnitTests that were previously loaded by the <method>DebugLoadTestSuite</method> method. </br>
/// Both the <b><i>testsuite</i></b> and <b><i>testcase</i></b> parameters are required. </br>
/// The <b><i>testcase</i></b> parameter is in the form <i>package.class</i> and the <i>testmethod</i> parameter
/// is a method within the UnitTest class.
/// </br></br>
/// Developers should refer to the <method>DebugLoadTestSuite</method> method to see how these two methods are used
/// in conjunction during the development, debugging and testing process.
/// </p>
ClassMethod DebugRunTestCase(testsuite As %String = "", testcase As %String = "", qspec As %String = "", testmethod As %String = "", ByRef userparam) As %Status
{
}

ClassMethod PurgeLog() As %Status
{
}

ClassMethod PurgeResult() As %Status
{
}

/// <p>
/// This method will wipe all data from this Namespace in addition to all PPG information. This method
/// is useful in cleaning a Namespace before running all UnitTests.
/// </br></br>
/// This should <b>never</b> be invoked on a production system!
/// </p>
ClassMethod WipeNamespace()
{
}

/// <p>
/// This is a private and internal method that is invoked via the <method>RunTest</method> method, but requires a
/// value for each of its three parameters, be it the empty-string ("") or otherwise.
/// </p>
ClassMethod RunTestSuites(%testspec As %String, %qspec, ByRef %userparam) As %Status
{
}

/// <p>
/// This is a private and internal method that is invoked via the <method>RunTestSuites</method> method in order to push
/// an extra frame on the stack so that variables can be <i>new</i>ed before performing the bulk of the tasks associated
/// with the <method>RunTest</method> method.
/// </p>
ClassMethod realRunTestSuites(ByRef testspec As %String, qspec, ByRef userparam) As %Status [ Internal ]
{
}

ClassMethod AddSubDirectoryNames(root As %String, testsuite As %String) As %String [ Private ]
{
}

ClassMethod LastSubDirectoryName(dir As %String) As %String [ Private ]
{
}

ClassMethod GetSubDirectories(root, topdir As %String, level As %Integer, suite As %String, ByRef subdirs As %String, qspec As %String, ByRef testskip As %String) As %Status
{
}

Method RunOneTestSuite(dir As %String, suite As %String, testspec As %String, qstruct)
{
}

/// <p>
/// This method will return all of classes that are loaded in the current namespace into the <i>classes()</i> array...
/// </p>
/// <p>
/// <b>Invocation:</b> </br>
/// This method can be invoked in the following ways:
/// <ul>
///   <li>ObjectScript: ##class(%UnitTest.Manager).getLoadedClass(...)</li>
///   <li>SQL: N/A</li>
/// </ul>
/// </p>
/// <p>
/// <b>Parameters:</b>
/// <dl>
///   <dt><i>classes</i></dt>
///     <dd>A Pass By Reference array of classes that are loaded in the current namespace.
///         This array will be populated with classes in the following format: </br>
///         <pre>
///    classes=# of classes
///    classes(&lt;class-name&gt;.cls)=""
///
///    NOTE: The &lt;class-name&gt; and suffix (.cls) are case-sensitive
///         </pre>
///     </dd>
///   <dt><i>skipClasses</i></dt>
///     <dd>A Pass By Reference array of classes that should not be added to the 'classes()'
///         array if found loaded in the current namespace.  This array has the following format: </br>
///         <pre>
///    skipClasses(&lt;class-name&gt;.cls)=""
///
///    NOTE: The &lt;class-name&gt; and suffix (.cls) are case-sensitive
///         </pre>
///         <h3>Example:</h3>
///         <example>
///           set skipClasses("Sample.Person.cls")=""
///           set skipClasses("MRP.Test.cls")=""
///         </example>
///     </dd>
/// </dl>
/// <p>
/// <b>Return Value:</b> </br>
///    The status from the invocation of this method
/// </p>
ClassMethod getLoadedClass(ByRef classes, ByRef skipClasses) As %Status
{
}

/// <p>
/// This method deletes all of the classes provided in the following parameter arrays:
/// <ul>
///   <li>classLoaded()</li>
///   <li>autoloadArray()</li>
///   <li>utLoadedArray()</li>
/// </ul>
/// </p>
/// <p>
/// <b>Invocation:</b> </br>
/// This method can be invoked in the following ways:
/// <ul>
///   <li>ObjectScript: ..deleteLoadedClasses(...)</li>
///   <li>SQL: N/A</li>
/// </ul>
/// </p>
/// <p>
/// <b>Parameters:</b>
/// <dl>
///   <dt><i>classLoaded</i></dt>
///     <dd>A Pass By Reference array of classes that have been loaded into the namespace by
///         the invocation of a given UnitTest
///     </dd>
///   <dt><i>autoloadArray</i></dt>
///     <dd>A Pass By Reference array of classes that have been auto-loaded into the namespace
///         by the invocation of a given UnitTest
///     </dd>
///   <dt><i>utLoadedArray</i></dt>
///     <dd>A Pass By Reference array of classes that have been loaded into the namespace by
///         the UnitTest during its invocation
///     </dd>
/// </dl>
/// </p>
/// <p>
/// <b>Return Value:</b> </br>
///    The status from the invocation of this method
/// </p>
Method deleteLoadedClasses(ByRef classLoaded, ByRef autoloadArray, ByRef utLoadedArray) As %Status [ PublicList = SQLCODE ]
{
}

Method RunOneTestCase(suite As %String, class As %String, ByRef test As %String = "")
{
}

/// <p>
/// This internal method spins through all of the methods defined for the given <b><i>class</i></b> parameter,
/// which start with the prefix <b>Test</b>, and records/returns this information in the Pass By Reference (PBR)
/// parameter <b><i>methods</i></b> as an array sorted/collated in Canonical Order:
/// <pre>
///    methods=# of Methods
///    methods(1..n)=Method Name
/// </pre>
/// </p>
ClassMethod getTestMethods(class As %String, ByRef methods) As %Status
{
}

ClassMethod GetCurrentPublicVariableSet(ByRef GetCurrentPublicVariableSetset) [ Internal, Private ]
{
}

ClassMethod SubtractVariableSet(ByRef c, ByRef a, ByRef b) [ Internal, Private ]
{
}

Method ValidateVariables(ByRef preTestVars, ByRef postTestVars) [ Internal, Private ]
{
}

/// <p>
/// This internal method returns a $LIST(...) of allowable public variables, in addition to the
/// Pass By Reference (PBR) parameter <b><i>prefix</i></b> as an as array.
/// </p>
ClassMethod ReturnAllowedPublicVariables(ByRef prefix As %String) As %List [ Internal, Private ]
{
}

/// <p>
/// This <i>original</i> internal method is retained for backward compatibility...
/// </p>
Method Record(ByRef procVals As %String) As %Status
{
}

/// <p>
/// This method records all of the current Process Values within the Pass By Reference (PBR) array
/// parameter <b><i>procVals</i></b>...
/// </p>
Method RecordProcVals(ByRef procVals As %String) As %Status
{
}

/// <p>
/// This <i>original</i> internal method is retained for backward compatibility...
/// </p>
Method Cleanup(ByRef procVals As %String, kill = 0) As %Status
{
}

/// <p>
/// This internal method will cleanup all General & Specific Process Values that have
/// changed during the invocation of methods within this class, report any differences, and
/// restore those Process Values that have changed to their original value...
/// </p>
Method CleanupAllProcVals(ByRef procVals As %String, kill = 0) As %Status
{
}

/// <p>
/// This internal method will cleanup all General Process Values that have changed during
/// the invocation of methods within this class, report any differences, and restore those
/// Process Values that have changed to their original value...
/// </p>
Method CleanupGeneralProcVals(checkLocks = 1) As %Status
{
}

/// <p>
/// This internal method will cleanup all Specific Process Values that have changed after the
/// invocation of each UnitTest, which is handled within the <method>RunOneTestCase</method> method, via
/// the following steps: </br>
/// <ul>
///   <li>Before any UnitTest invocations, Record/Collect the Process Values at the beginning
///       of the <method>RunOneTestCase</method> method by calling the <method>RecordProcVals</method> method
///   </li>
///   <li>Compare all Process Values recorded/collected within the array passed to the
///       <method>RecordProcVals</method> method with their current Process Values
///   </li>
///   <li>For each recorded value that differs from its current value, perform the following
///       steps:
///       <ul>
///         <li>Create an <b>$$$ERROR($$$GeneralError,<error>)</b> of the Process Value differences</li>
///         <li>Restore the Process Value to its originally recorded value</li>
///       </ul>
///   </li>
/// </ul>
/// </p>
Method CleanupSpecificProcVals(ByRef procVals As %String, kill = 0) As %Status
{
}

Method SaveResult(duration, ByRef userparam)
{
}

Method LogStateBegin(testsuite, testcase, testmethod)
{
}

/// <p>
/// This method records the end of a UnitTest and returns the status of its invocation.
/// </p>
Method LogStateEnd(duration) As %Integer
{
}

ClassMethod GetTestState(level) As %String
{
}

Method LogStateStatus(status, action)
{
}

Method LogAssert(success, action, description, extra, location)
{
}

Method LogMessage(message, location)
{
}

Method PrintLine(text, level = 0)
{
}

Method PrintErrorLine(text, extra)
{
}

Method PrintURL()
{
}

/// <p>
/// This method is <b>obsolete</b>; Use the <method>GetTestStatus</method> method instead!
/// </p>
Method IsSuccess(suite, case, method, action) As %Boolean
{
}

/// <p>
/// This method returns result for a given <b><i>suite</i></b>, <b><i>case</i></b>, <b><i>method</i></b>, and <b><i>action</i></b>.
/// </p>
Method GetTestStatus(suite, case, method, action) As %Integer [ CodeMode = expression ]
{
}

Method %OnNew(initvalue As %RawString) As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

Method AcquireSentryLock() [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

Method ReleaseSentryLock() [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

Method DoesHoldSentryLock() As %Boolean [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

Method %OnClose() As %Status [ Private, ProcedureBlock = 1, ServerOnly = 1 ]
{
}

/// <p>
/// This method returns the root directory of the UnitTest hierarchy, which is typically the value
/// stored in the following global: <b>^UnitTestRoot</b>
/// </p>
ClassMethod Root() As %String
{
}

/// <p>
/// This method imports the contents of each sub-directory <b><i>sub</i></b> for each directory
/// specified by the <method>Root</method> method down to the <b><i>dir</i></b> parameter, and
/// return all of the corresponding classes in the Pass By Reference (PBR) array parameter <b><i>classArray</i></b>.
/// </br></br>
/// This method is part of the implementation for the <b>/autoload</b> qualifier.
/// </p>
ClassMethod AutoLoad(dir As %String, sub As %String, ByRef classArray As %String, qstruct As %String) As %Status [ Internal ]
{
}

/// <p>
/// This method converts old format data in the <b>^UnitTestLog</b> global to the new format
/// stored in the <b>^UnitTest.Result</b> global.
/// </p>
/// <p><b>Parameters:</b>
/// <dl>
///   <dt><i>pLogIndex</i></dt>
///   <dd>This is the test instance index in the <b>^UnitTestLog</b> global.</dd>
///   <dt><i>pResultNamespace</i></dt>
///   <dd>This is the namespace for the <b>^UnitTest.Result</b> global.</dd>
///   <dt><i>pMachine</i>, <i>pConfiguration</i>, <i>pVersion</i>, <i>pUserParam</i></dt>
///   <dd>The new information collected in the <b>^UnitTest.Result</b> global, but no longer in the <b>^UnitTestLog</b> global.</dd>
/// </dl>
/// This information can be provided manually when doing the conversion.<br>
/// The <b><i>pUserParam</i></b> parameter is used the same way as the <b><i>userparam</i></b> parameter
/// of the <method>RunTest</method> method. </br>
/// The top node of the <b><i>pUserParam</i></b> parameter becomes the value of the <property>UserParam</property>
/// property, and the first level subscripts, along with their values, are used to populate the <property>UserFields</property>
/// array property.
/// </p>
ClassMethod ConvertLogData(pLogIndex, pResultNamespace = "", pMachine = "", pConfiguration = "", pVersion = "", pUserParam = "", pKillLog = 0) As %Status
{
}

/// <p>
/// This method updates the status at each level recursively based on the status of the children. </br>
/// If the <b><i>pIndex</i></b> parameter is omitted or passed the empty-string (""), then all of
/// the nodes within the <b>^|pNamespace|UnitTest.Result(...)</b> global will be converted.
/// </p>
ClassMethod ConvertStatus(pIndex, pNamespace) As %Status
{
}

ClassMethod setRecursiveStatus(pNamespace, pIndex, pSuite, pCase, pMethod) As %Integer
{
}

/// <p>
/// <b>InterSystems INTERNAL USE ONLY!</b>
/// </br></br>
/// This method checks UnitTest file names against internal source control requirements. </br>
/// You should not make direct use of this method within your applications. </br>
/// There is no guarantee made about either the behavior or future operation of this method!
/// </p>
Method CheckNameStructure(dir As %String) [ Internal, Private ]
{
}

/// <p>
/// This is a private and internal method that collects and records all of the globals and
/// routines in the current namespace so that a cleanup can be performed after the UnitTest
/// finished running.
/// </p>
Method RecordNamespace() As %Status [ Private ]
{
}

/// <p>
/// This is a private and internal method that cleans the current namespace after the
/// UnitTest finished running. </br>
/// This method will not remove any globals or routines that were recorded during the
/// invocation of the <method>RecordNamespace</method> method.
/// </p>
Method CleanNamespace() As %Status [ Private ]
{
}

/// <p>
/// This method runs the UnitTests that are listed within the specified <b><i>fileName</i></b> parameter.
/// The tests within this file have the following format:<br/>
/// </p>
/// <div style="margin-top: 10px; margin-left: 40px;">
///   [<arg>#</arg> | <arg>//</arg>] | [&ltsection&gt#] | [<arg>-</arg>]<arg>utPath</arg>
///
///   <table class="parm-format">
///     <tr>
///       <td><arg>#</arg> | <arg>//</arg></td>
///       <td><i>Optional</i> - Specifies a comment line</td>
///     </tr>
///     <tr>
///       <td><arg>[&ltsection&gt#] </arg></td>
///       <td><i>Optional</i> - Specifies the beginning of a section of tests.  For example [1] or [15]</td>
///     </tr>
///     <tr>
///       <td><arg>-</arg></td>
///       <td><i>Optional</i> - Specifies that the <arg>utPath</arg> will be excluded from running</td>
///     </tr>
///     <tr>
///       <td><arg>utPath</arg></td>
///       <td>The directory path of the UnitTest to run, or a path prefix (e.g. SQL\SQLStats) to run all UnitTests within this directory and all sub-directories</td>
///     </tr>
///   </table>
/// </div>
///
/// <h3>Example:</h3>
/// <example language="none">
///   utFile_with_exclusions.txt
///     // This file contains the following two lists:
///     //   1) A list of UnitTests to exclude from running
///     //   2) A list of UnitTests to run
///
///     // List all of the excluded UnitTest Paths (utPath) first:
///     //   NOTE: The negative-sign (-utPath) is the exclusion indicator!
///     -SQL\dynamicSQL\DocBookTests
///     -SQL\dynamicSQL\privilege
///     -Classes\Atelier
///     -Classes\Debugger
///
///     // List all of the UnitTest Paths (utPath) to run last:
///     SQL\dynamicSQL
///     Classes
///
///   Invocation
///     USER>set tSC=##class(%UnitTest.Manager).RunTestsFromFileList(,"C:\ut\SQLStats_with_exceptions.txt")
/// </example>
/// <dl>
/// <dt>
/// <var>globalName</var>
/// <dd>
///   A optional global name, when specified, will be populated with each <arg>utPath</arg> from the
///   given <i>fileName</i>, which is then passed as the first parameter to the
///   <method>RunTest</method>(<i>testspec</i>,...)</arg> method for execution.  If specified, the
///   value passed to the <i>globalName</i> parameters must have the following format:
///   <pre>
///      INPUT:   "^utGlobal"           // Where <i>^utGlobal</i> is a valid IRIS Global Name
///      OUTPUT:  ^utGlobal(utPath)=""  // e.g.  ^utGlobal("SQL\dynamicSQL")=""
///                                              ^utGlobal("Classes")=""
///   </pre>
/// </dd>
/// </dt>
/// <dt>
/// <var>fileName</var>
/// <dd>A file path and name, which contains lines of tests in the following format, as specified above: [<arg>#</arg> | <arg>//</arg>][<arg>-</arg>]<arg>utPath</arg><br/><br/></dd>
/// </dt>
/// <dt><i>qspec</i>
/// <dd>This parameter has a name/term that is used interchangeably with the term <b>qualifier</b>, and a value
///     that is a concatenated list of supported system flags and qualifiers documented on the following page:
///       <a href="https://docs.intersystems.com/irislatest/csp/docbook/Doc.Results.cls?docs%5Bquery%5D=qspec" target="_blank">System Flags and Qualifiers</a>
///     </br/></br>
///     This parameter allows the specification of qualifiers in the following format:
///        <i>/[no]&lt;qualifier&gt;[=&lt;value&gt;][/[no]&lt;qualifier&gt;[=&lt;value&gt;]]*</i>
///     </br></br>
///     Example: <b>/noload/norecursive</b>
///     </br></br>
///     The first four qualifiers below (<b>debug</b>, <b>load</b>, <b>run</b>, and <b>recursive</b>) are negatable Booleans,
///     which can be enabled by explicitly specifying the qualifier name (e.g. <b>/debug</b>) or disabled by either
///     adding the prefix <b>no</b>, or by adding the value zero <b>=0</b>, as in the following respective examples:
///     <b>/nodebug</b> OR <b>/debug=0</b>
///     </br></br>
///     <b>/debug</b>: Run in debug mode, which causes an execution <i>BREAK</i> if a UnitTest fails. Default is <b>/nodebug</b>.
///     </br></br>
///     <b>/load</b>: Load the corresponding UnitTest classes for the specified <b><i>testspec</i></b> parameter. Default is <b>/load</b>.
///     If both the <b>/load</b> and <b>/run</b> qualifiers are enabled (true), then all loaded classes, routines, and CSP files will be deleted after
///     all UnitTests have finished running. To prevent the post-deletion task, invoke the <method>DebugLoadTestSuite</method> method to first load all
///     appropriate UnitTest classes and then invoke the <b>DebugRunTestCase</b> method to actually run the corresponding UnitTests.
///     </br></br>
///     <b>/run</b>: Run all UnitTests specified by the <b><i>testsuite</i></b> parameter.  Use the <b>/norun</b> qualifier if you only want to load,
///     but not run, all corresponding UnitTest classes specified by the <b><i>testsuite</i></b> parameter. Default is <b>/run</b>.
///     </br></br>
///     <b>/recursive</b>: Recurse the specified directory when loading UnitTest classes. Default is <b>/recursive</b>.
///     </br></br>
///     <b>/display=all</b>: Display extended information when loading and running UnitTest classes and tests. <b>/display=none</b> displays limited information. Default is <b>/display=all</b>.
///     </br></br>
///     <b>/autoload</b>: Automatically load sub-directories with the given name when loading test classes.
///     Default is <b>/autoload=_autoload</b>.
///     When this qualifier is specified, classes are loaded from the given sub-directory of the current directory and its ancestors.
///     This makes it possible to use a class in multiple test suites without copying it to each of their descendant directories.
///     </br></br>
///     <b>/nodelete</b>: Do not delete loaded classes when the UnitTest has finished running.
///     </br></br>
/// </dd>
///
/// <dt><i>userparam</i>
/// <dd>An arbitrary argument passed in by the caller, which allows for the storage of additional
///     information, like platform, product version, etc. </br>
///     If this parameter is passed a string, then it becomes the value for the <property>UserParam</property> property. </br>
///     If this parameter is passed an array, then the first level subscripts and their values are used to populate the <property>UserFields</property> array property. </br>
///     This information can be later cross-referenced in the result.
/// </dd></dl>
/// <dt><i>sections</i>
/// <dd>An options, comma-delimited list of file sections this call should test.  This will not run all the tests listed in the file, but only the tests within the specified [section#] within the file.
/// 	For example, suppose you file has sections [1], [2], [3], [4], [5], and [6].  If sections="2,4,6" only tests within sections [2], [4], and [6] will be run.
/// </dd></dl>
/// <br><br>
ClassMethod RunTestsFromFileList(globalName As %String = "", fileName As %String = "", qspec As %String, ByRef userparam, sections As %String = "") As %Status
{
}

/// <p>
/// This method adds the given <b><i>excludeUTPath</i></b> to the exclusion global:
/// <pre>
///    ^||UnitTest.exclude(0,...)                        // Master Map
///    ^||UnitTest.exclude("x",$$$UPPER(excludeUTPath))  // Index Map
/// </pre>
/// </p>
/// <p>
/// <b>Invocation:</b> </br>
/// This method can be invoked in the following ways:
/// <ul>
///   <li>ObjectScript: ##class(%UnitTest.Manager).addToExcludeGlobal(...)</li>
///   <li>SQL: N/A</li>
/// </ul>
/// </p>
/// <p>
/// <b>Parameters:</b>
/// <dl>
///   <dt><i>excludeUTPath</i></dt>
///     <dd>The directory path of the UnitTest to exclude from running, or a path prefix
///         (e.g. SQL\SQLStats) to exclude all UnitTests within this directory and all
///         sub-directories from running
///     </dd>
/// </dl>
/// </p>
/// <p>
/// <b>Return Value:</b> </br>
///    The status of this method's invocation; </br>
///    Otherwise, return an error message if an error occurred
/// </p>
ClassMethod addToExcludeGlobal(excludeUTPath As %String = "") As %Status
{
}

/// <p>
/// This method is called after the invocation of the <method>SaveResult</method> method
/// to perform any result aggregation tasks required by subtasks.
/// </p>
Method OnAfterSaveResult(ByRef userparam)
{
}

/// <p>
/// This method is called before any UnitTests are run.
/// If an error status is returned, then no UnitTests are run.
/// </p>
ClassMethod OnBeforeAllTests(manager As %UnitTest.Manager, dir As %String, ByRef qstruct, ByRef userparam) As %Status
{
}

/// <p>
/// This method is called after all UnitTests are run.
/// If an error status is returned, then it is logged.
/// </p>
ClassMethod OnAfterAllTests(manager As %UnitTest.Manager, dir As %String, ByRef qstruct, ByRef userparam) As %Status
{
}

/// <p>
/// This method is called before autoload, which occurs before each test suite is run.
/// If an error status is returned, then it is logged and the test suite is not run.
/// </p>
Method OnBeforeAutoLoad(dir As %String, suite As %String, testspec As %String, ByRef qstruct) As %Status
{
}

/// <p>
/// This method is called before a test suite is run.
/// If an error status is returned, it is logged and the test suite is not run.
/// This is called after autoload.
/// </p>
Method OnBeforeTestSuite(dir As %String, suite As %String, testspec As %String, ByRef qstruct) As %Status
{
}

/// <p>
/// This method is called after a test suite is run.
/// If an error status is returned, it is logged.
/// </p>
Method OnAfterTestSuite(dir As %String, suite As %String, testspec As %String, ByRef qstruct) As %Status
{
}

/// <p>
/// This method is called before a test case (class extending <class>%UnitTest.TestCase</class>) is run.
/// If an error status is returned, it is logged and the test case is not run.
/// </p>
Method OnBeforeTestCase(suite As %String, class As %String, ByRef testcase As %UnitTest.TestCase) As %Status
{
}

/// <p>
/// This method is called after a test case (class extending <class>%UnitTest.TestCase</class>) is run.
/// If an error status is returned, it is logged.
/// </p>
Method OnAfterTestCase(suite As %String, class As %String, ByRef testcase As %UnitTest.TestCase) As %Status
{
}

/// <p>
/// This method is called before a test (method starting with "Test" in a class extending
/// <class>%UnitTest.TestCase</class>) is run.
/// If an error status is returned, it is logged and the test is not run.
/// </p>
Method OnBeforeOneTest(suite As %String, class As %String, method As %String) As %Status
{
}

/// <p>
/// This method is called after a test (method starting with "Test" in a class extending
/// <class>%UnitTest.TestCase</class>) is run.
/// If an error status is returned, it is logged.
/// </p>
Method OnAfterOneTest(suite As %String, class As %String, method As %String) As %Status
{
}

ClassMethod BeforeRunTest(Test As %String) [ Internal ]
{
}

ClassMethod AfterRunTest(Test As %String) [ Internal ]
{
}

ClassMethod UpdateOptions() [ Internal ]
{
}

ClassMethod RestoreOptions() [ Internal ]
{
}

/// <p>
/// This is a private and internal method which reserves the UnitTest.Result ID from the <b>^|$NAMESPACE|UnitTest.Result</b> global.
/// Test suites run under the /parallel option use this value to directly write back their results.
/// </p>
Method ReserveResultId() [ Internal, Private ]
{
}

/// <p>
/// This is a private and internal method that returns a Boolean value {0|1} which indicates if
/// this %UnitTest.Manager is configured to run suites in parallel?
/// </p>
Method IsParallel() As %Boolean [ Internal, Private ]
{
}

/// <p>
/// This is a private and internal method that returns a Boolean value {0|1} which indicates if
/// this %UnitTest.Manager is inside a worker job running suites in parallel?
/// </p>
Method IsParallelWorker() As %Boolean [ Internal, Private ]
{
}

/// <p>
/// This is a private and internal method that queues <b><i>suite</i></b> for parallel execution.
/// The parameters <b><i>qspec</i></b> and <b><i>userparam</i></b> are similar to those in the
/// <method>RunTestSuites</method> method, except that the <b><i>userparam</i></b> parameter will
/// not be Passed By Refence (PBR) into the worker job.
/// </p>
Method QueueSuiteForParallel(suite, qspec, userparam) As %Status [ Internal, Private ]
{
}

/// <p>
/// This is a private and internal method that waits for all suites queued by <method>QueueSuiteForParallel</method> method
/// to complete.  The %UnitTest.Manager expects failed suites to be collected in the
/// Pass By Reference (PBR) array parameter <b><i>status</i></b> after the suites have finished
/// running.  The <b>^UnitTest.Result</b> global is scanned for failed suites, which are added
/// as subscripts to the <b><i>status</i></b> parameter.
/// </p>
Method WaitForAllSuitesForParallel(ByRef status) As %Status [ Internal, Private ]
{
}

Method CreateSwarmReviewSSL() As %Status [ Internal, Private ]
{
}

Method PostSwarmReviewComment(comment As %String, ignoreCounter As %Boolean = 0) As %Status [ Internal, Private ]
{
}

Method DeleteSwarmReviewSSL() As %Status [ Internal, Private ]
{
}

}
