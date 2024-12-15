/// Extends <b>TestCase</b>.  Extend from this class to create a regression test
/// <br><br>
///
Class %UnitTest.SQLRegression Extends %UnitTest.TestCase [ Inheritance = right, System = 4 ]
{

/// Specifies the xml file running the test so it's not reloaded
Parameter TESTFILE As STRING;

/// Comma-delimited sql filenames overrides the sql file lookup by specifying which and in which order sql script files are to be tested
Parameter SQLFILE As STRING;

/// Specifies a result file for comparison use
Parameter REFFILE As STRING = "reference.log";

/// Set <PARAMETER>SHOWPLAN</PARAMETER>=1 to dump the access plans used by each test in the test script.
/// Use this feature when you need to verify plan stability from one release to the next, or when you
/// want to investigate the impact of creating, dropping, or altering an index.
///
/// Boolean value specifies if comparing sql plan should be executed.  Reference plan must exist in REFFILE. Dynamic Sql Plan created in Dynamic SQL test only.
Parameter SHOWPLAN As BOOLEAN = 0;

/// <PARAMETER>DISPLAYTESTNAME</PARAMETER> enables you to internationalize the display of the test name,
/// which may be specified after the #### delimiter in the test file, when <PARAMETER>TIMESCALE</PARAMETER>
/// is a positive number.
///
Parameter DISPLAYTESTNAME = "Test ";

/// The <PARAMETER>TIMESCALE</PARAMETER> parameter enables you to control whether elapsed time information
/// is displayed for each SQL statement, and the number of significant digits used to display the time.
/// This can be used to determine whether significant differences in elapsed time are consumed by any
/// individual query.  By default, TIMESCALE="", which will prevent elapsed time information from being
/// displayed at the end of each SQL statement in the test.  Setting DISPLAYSECONDS to 1 will display the result
/// in seconds.  Setting DISPLAYSECONDS to 10 will display elapsed time in multiples of 10 seconds.  Setting
/// TIMESCALE to 0.1 will display elapsed time to the nearest tenth second.  By grouping together a set of
/// tests that each take about the same amount of time you can automate the process of determining if any
/// query takes "significantly" more or less time than it did previously.
///
Parameter TIMESCALE = 0;

/// <PARAMETER>DISPLAYELAPSEDTIME</PARAMETER> enables you to internationalize the display of elapsed time,
/// when <PARAMETER>TIMESCALE</PARAMETER> is a positive number.
///
Parameter DISPLAYELAPSEDTIME = " executed and fetched in ";

/// <PARAMETER>DISPLAYSECONDS</PARAMETER> enables you to internationalize the spelling of "seconds" in
/// the output of elapsed time when <PARAMETER>TIMESCALE</PARAMETER> is a positive number.
///
Parameter DISPLAYSECONDS = "seconds";

/// Method to clean up before each Test method is executed.
Method OnBeforeEachTest() As %Status
{
}

/// Method to clean up after each Test method is executed.
Method OnAfterEachTest() As %Status
{
}

/// Method available to do any work before a Sql File begins execution.
Method OnBeforeSqlFile(sqlfile As %String) As %Status
{
}

/// Method available to do any work after a Sql File has finished execution.
Method OnAfterSqlFile(sqlfile As %String) As %Status
{
}

/// Method to display incorrect results in a more readable format.
Method processDiffFile(ByRef rslt As %Stream)
{
}

/// Test each line of SQL from <parameter>SQLFILE</parameter> using dynamic SQL.
/// If no <parameter>REFFILE</parameter> exists, it will be created from the dynamic results and that file will serve as the correct test results.
/// It is up to the test creator to confirm that the expected test results are correct.
Method TestDynamic()
{
}

/// Test each line of SQL from <parameter>SQLFILE</parameter> using embedded SQL.
Method TestEmbedded()
{
}

/// Test each line of SQL from <parameter>SQLFILE</parameter> using an ODBC SQL Gateway connection.
/// Requires the existence of the User namespace DSN provided with InterSystems IRIS.
Method TestODBC()
{
}

/// Test each line of SQL from <parameter>SQLFILE</parameter> using a JDBC SQL Gateway connection.
Method TestJDBC()
{
}

/// Compare dynamic results src against existing reference file
Method verifyResults(ByRef src As %FileCharacterStream, testName As %String = "") As %Status
{
}

}
