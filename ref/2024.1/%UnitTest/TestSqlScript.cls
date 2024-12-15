/// <p>The sample class mentioned here (Sample.Person) is part of <a target="_top" href="https://github.com/intersystems/Samples-Data">https://github.com/intersystems/Samples-Data.</a>
/// See <a target="_top" href="/csp/docbook/DocBook.UI.Page.cls?FIND=landing+githubsamples">Downloading Samples</a>.</p>
/// This class replays script-driven SQL tests.
/// It provides an implementation of the <method>runScript</method> method that reads and executes SQL statements from the script specified in the <parameter>TESTFILE</parameter> parameter, comparing it to a reference log of expected output.
/// It also provides an implementation of the <method>OnBeforeAllTests</method> method that populates the XML-enabled class under test (<parameter>DATACLASS</parameter>) from <parameter>DATAFILE</parameter>.
/// <p>
/// To write a test, start by creating a subclass of this class with appropriate values for the <parameter>DATACLASS</parameter>, <parameter>DATAFILE</parameter>, and <parameter>DATATAG</parameter> parameters:
///
/// <example>
/// Class Sample.SqlTest extends %UnitTest.TestSqlScript {
/// Parameter DATACLASS = "Sample.Person";
/// Parameter DATAFILE = "person.data";
/// Parameter DATATAG = "person";
/// }
/// </example>
///
/// Populate the class under test:
///
/// <example>
/// Write ##class(Sample.Person).Populate(100)
/// </example>
///
/// Export the instances of the class under test to the data file:
///
/// <example>
/// Set writer=##class(%XML.Writer).%New()
/// Set writer.Charset="UTF-8"
/// Set sc=writer.OutputToFile("person.data")
/// Set sc=writer.RootElement("people")
/// Set statement=##class(%SQL.Statement).%New()
/// Set sc=statement.%PrepareClassQuery("Sample.Person","Extent")
/// Set result=statement.%Execute()
/// While result.%Next(.sc) {
/// 	Set id=result.%Get("ID")
/// 	Set person=##class(Sample.Person).%OpenId(id)
/// 	Set sc=writer.Object(person,"person")
/// }
/// Set sc=writer.EndRootElement()
/// Set sc=writer.EndDocument()
/// </example>
///
/// Create a script file with a series of SQL statements, each terminated by a line starting with "####":
///
/// <example>
/// select max(SSN) from Sample.Person
/// ####
/// select count(ID) from Sample.Person
/// ####count IDs
/// </example>
///
/// Place the following files in a sub-directory of ^UnitTestRoot:
///
/// <ul>
/// <li>the script file (<i>script.txt</i>)
/// <li>a copy of the test class (<i>Sample.SqlTest</i>)
/// <li>a copy of the class under test (<i>Sample.Person</i>)
/// <li>the data file (<i>person.data</i>)
/// </ul>
///
/// To generate the expected results, run the test with the "reference" parameter:
///
/// <example>
/// Do ##class(%UnitTest.Manager).RunTest("Sample",,"reference")
/// </example>
///
/// It populates the data class, executes the SQL statements, and writes the expected output to reference.log:
///
/// <example>
/// SQL> select max(SSN) from Sample.Person
/// Aggregate_1:
/// 992-27-1936:
///
/// SQL> select count(ID) from Sample.Person
/// Aggregate_1:
/// 100:
///
/// Test count IDs
/// </example>
///
/// Subsequent runs without the "reference" parameter will write to output.log, then compare it to reference.log:
///
/// <example>
/// Do ##class(%UnitTest.Manager).RunTest("Sample")
/// </example>
Class %UnitTest.TestSqlScript Extends %UnitTest.TestScript [ System = 3 ]
{

/// List that correlates XML tags in a data file with classes.
/// Entries are of the form <i>tag1:class1, ..., tagn:classn</i>, with each entry specifying a pair of <parameter>DATATAG</parameter> and <parameter>DATACLASS</parameter> parameter values.
/// <p>
/// If <parameter>CORRELATIONLIST</parameter>, <parameter>DATACLASS</parameter>, and <parameter>DATATAG</parameter> are all specified, the <parameter>DATATAG</parameter> and <parameter>DATACLASS</parameter> pair are added to the end of the <parameter>CORRELATIONLIST</parameter>.
Parameter CORRELATIONLIST;

/// Specifies an XML-enabled class, such as <i>Sample.Person</i>, to be correlated with the <parameter>DATATAG</parameter> in the <parameter>DATAFILE</parameter>.
Parameter DATACLASS;

/// XML file, such as <i>person.data</i>, that contains data for the <parameter>DATACLASS</parameter>.
/// If no directory name is specified by <b>RunTest</b>, then the current <b>UnitTest</b> directory is used.
Parameter DATAFILE;

/// Specifies an XML tag in <parameter>DATAFILE</parameter>, such as <i>&lt;person&gt;</i> (angle brackets omitted), to be correlated with the <parameter>DATACLASS</parameter>.
Parameter DATATAG;

/// Set this parameter to 1 to dump the access plans used by each test in the test script.
/// Use this feature when you need to verify plan stability from one release to the next, or when you
/// want to investigate the impact of creating, dropping, or altering an index.
///
Parameter SHOWPLAN;

/// If a test name is specified after the #### terminator in the script, it is written to output.log.
/// Override this parameter to localize the spelling of "Test."
Parameter DISPLAYTESTNAME = "Test ";

/// This parameter specifies the number of significant digits used to display elapsed time for each SQL statement to output.log.
/// It can be used as a coarse indicator of differences in the run time of any individual query.
/// <p>
/// The default value of "" prevents elapsed time information from being displayed at the end of each SQL statement in the test.
/// Setting it to 1 will display the result in seconds.
/// Setting it to 10 will display elapsed time in multiples of 10 seconds.
/// Setting it to 0.1 will display elapsed time to the nearest tenth second.
Parameter TIMESCALE;

/// When <PARAMETER>TIMESCALE</PARAMETER> is a positive number, this parameter is part of the elapsed time message written to output.log.
/// Override it to localize the display of elapsed time.
Parameter DISPLAYELAPSEDTIME = " executed and fetched in ";

/// When <PARAMETER>TIMESCALE</PARAMETER> is a positive number, this parameter is part of the elapsed time message written to output.log.
/// Override it to localize the spelling of "seconds."
Parameter DISPLAYSECONDS = "seconds";

/// This method deletes the extent of the <parameter>DATACLASS</parameter> and populates it from the file specified by the <parameter>DATAFILE</parameter> parameter.
Method OnBeforeAllTests() As %Status [ CodeMode = generator ]
{
}

/// This method reads SQL statements from <b>scriptfile</b>, writing their output to <b>outputfile</b>.
/// Statements are terminated by a line that starts with "####".
ClassMethod runScript(scriptfile As %String, outputfile As %String) As %Status
{
}

/// This method prepares and executes the SQL statement in <b>sql</b>, formatting the output according to the <parameter>TIMESCALE</parameter> parameter et al.
/// If <parameter>SHOWPLAN</parameter> is true, it appends the plan to the output.
ClassMethod runSqlStatement(sql As %String, testName As %String) [ Internal ]
{
}

}
