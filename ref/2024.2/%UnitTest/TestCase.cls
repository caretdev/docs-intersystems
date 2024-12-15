/// Extend this class to create new test case classes. In the test case class, for each test that you want to run, create a method whose name begins with <b>Test</b>. You'll use <b>%UnitTest.Manager.RunTest</b> to run all tests in a specified directory.
/// <br><br>
/// <b>TestCase</b> provides <b>$$$Assert*</b> macros that can be used to test conditions (located in the file <B>%outUnitTest.INC</B>).  The <b>$$$Assert*</b> macros call their associated methods automatically. A test fails if one or more of the macros fails, otherwise the test passes.
/// <br><br>
/// Click a method to go to the description of its macro:<br>
/// <br><method>AssertTrueViaMacro</method>
/// <br><method>AssertNotTrueViaMacro</method>
/// <br><method>AssertEqualsViaMacro</method>
/// <br><method>AssertNotEqualsViaMacro</method>
/// <br><method>AssertStatusOKViaMacro</method>
/// <br><method>AssertStatusNotOKViaMacro</method>
/// <br><method>AssertFilesSameViaMacro</method>
/// <br><method>AssertFilesSQLUnorderedSameViaMacro</method>
/// <br><method>AssertSuccessViaMacro</method>
/// <br><method>AssertFailureViaMacro</method>
/// <br><method>AssertSkippedViaMacro</method>
/// <br><br>
/// Use the <B>OnBefore*</B> methods to perform tasks before all test cases or before each test case.<br>
/// Use the <B>OnAfter*</B> methods to perform tasks after all test cases or after each test case.
/// <br><br>
/// You might use <B>OnBefore*</B> and <B>OnAfter*</B> to, for example, set environment
/// variables before tests and unset them after tests or load files before tests and delete
/// files after tests.
///  <br><br>
/// Click a method to go to the description:
/// <br>
/// <br><method>OnBeforeAllTests</method>
/// <br><method>OnBeforeOneTest</method>
/// <br><method>OnAfterAllTests</method>
/// <br><method>OnAfterOneTest</method>
/// <br><br>
///  Note: In your test class, do not use property names that begin with <b>Test</b>, as the auto-generated Get and Set methods corresponding to the properties would also begin with <b>Test</b>, and, thus, be treated as test methods.
///
///
Class %UnitTest.TestCase Extends %RegisteredObject [ System = 3 ]
{

/// Pointer to the %UnitTest.Manager object
Property Manager As %UnitTest.Manager [ Private ];

/// Use the <b>/debug</b> flag with <b>%UnitTest.Manager.RunTest</b> to break into debug mode on the first failure.
Property Debug As %Boolean [ InitialExpression = 0 ];

/// The SkipTest property gets set when a test is being skipped.  It will be handled by the <b>%UnitTest.Manager</b> to handle
/// skipping tests from OnBeforeOneTest.  <b>NOTE:</b> OnBeforeAllTests does not currently support skipping tests.
Property SkipTest As %Boolean [ InitialExpression = 0 ];

/// String of test users. If this parameter is set, then <b>%UnitTest.Manager</b> will create
/// these users before running any test methods. Users will be cleaned up after the test completes.
/// Privileges for each user can be specified in AutoUserResources and AutoUserRoles. If AutoUserNames
/// is left unspecified, the %UnitTest.Manager framework won't autocreate any test users.
/// Separate usernames with ";" marks. White spaces are stripped out and ignored.
Parameter AutoUserNames As STRING;

/// Optional: specifies roles for each test user in AutoUserNames. Separate lists of roles for different users with ";" marks. Separate
/// different roles for the same user with "," marks. White spaces are stripped out and ignored.
Parameter AutoUserRoles As STRING;

/// Optional: specifies resources for each test user in AutoUserNames. If a list of resources is specified for a user,
/// the <b>%UnitTest.Manager</b> will create a test role for that user that has the listed resources.
/// Separate lists of roles for different users with ";" marks. Separate different roles for the same user with "," marks.
/// Make sure to specify the permissions with the resource. For example: "%DB_%DEFAULT:RW".
/// White spaces are stripped out and ignored.
Parameter AutoUserResources As STRING;

/// If <b>%UnitTest.Manager</b> creates test users specified by AutoUserNames, it will generate a random-string password
/// for them to share and store it in this property. This password is generated anew each time the unit test is run.
Property AutoPassword As %String;

/// If 1, guarantees that all users listed in AutoUserNames have read-write access in the namespace the unit test
/// is starting from. If 0, access is governed by the assigned roles and resources. Default is 0.
Parameter AutoGiveUsersNSAccess As BOOLEAN = 0;

/// Run by the <B>%New</B> method to provide notification that a new instance of an object
/// is being created. Passes initialization information to a new instance of the object.
/// <br><br>If this method returns an error then the object is not created.
/// <br>It is passed the arguments provided in the <B>%New</B> call. There may be up to
/// ten of these arguments, <I>p1...p10</I>.
///
Method %OnNew(initvalue) As %Status
{
}

/// Run by <B>RunTest</B> once <a href="#OnBeforeAll">before any test methods</a> in the test class are run. Can be used to set up a
/// test environment that will be later cleaned up by <B>OnAfterAllTests</B>.
/// <br>NOTE: OnBeforeAllTests does not currently support skipping tests.  Calls to $$$AssertSkipped in
/// OnBeforeAllTests may result in tests appearing to pass rather than being skipped.
/// <br><br>Example: Setup and Cleanup of an environment:
/// <pre>
/// Method OnBeforeAllTests() As %Status
/// {
/// 	//do setup stuff here
///  	set ^inputMessage = "input message"
/// 	quit $$$OK
/// }
/// Method OnAfterAllTests() As %Status
/// {
/// 	//do clean up stuff here
/// 	kill ^inputMessage
/// 	quit $$$OK
/// }</pre>
///
Method OnBeforeAllTests() As %Status
{
}

/// Run by <B>RunTest</B> once after all test methods in the test class are run. Can be used to tear down a test environment that was set up by <B>OnBeforeAllTests</B> See example in <b>OnBeforeAllTests</b>.
Method OnAfterAllTests() As %Status
{
}

/// Run by <B>RunTest</B> immediately before each test method in the test class is run.<br>
/// <dl>
/// <dt><i>testname</i>
/// <dd>Name of the test to be run. Required.
/// </dl>
Method OnBeforeOneTest(testname As %String) As %Status
{
}

/// Run by <B>RunTest</B> immediately after each test method in the test class is run.<br>
/// <dl>
/// <dt><i>testname</i>
/// <dd>Name of the test to be run. Required.
/// </dl>
Method OnAfterOneTest(testname As %String) As %Status
{
}

///  Returns true if two values are equal. Invoke with the <B>$$$AssertEquals</B> macro, in the form
/// <pre>
/// $$$AssertEquals(<i>value1,value2,"description"</i>)</pre>
///
/// where:
/// <DL>
/// <dt><I>value1</I>,<I>value2</I> <dd>Values to be compared. <br>
/// <dt><I>description</I> <dd>Optional comment shown on the results page.  If you don't include a description, the expression is used by default.
/// </dl>
/// Example: <pre>
/// do $$$AssertEquals(x,y,"x equals y")</pre>
Method AssertEqualsViaMacro(autoquoted, value1, value2, description) As %Boolean
{
}

/// Returns true if expressions are not equal. Invoke with the <b>$$$AssertNotEquals</b> macro in the form.
/// <pre>
/// $$$AssertNotEquals(<i>value1,value2,"description"</i>)</pre>
/// where:
/// <DL>
/// <dt><I>value1</I>,<I>value2</I> <dd>Values to be compared. <br>
/// <dt><I>description</I> <dd>Optional comment shown on the results page.  If you don't include a description, the expression is used by default.
/// </dl>
/// Example: <pre>
/// do $$$AssertNotEquals(x,y,"x is not equal to y")</pre>
Method AssertNotEqualsViaMacro(autoquoted, value1, value2, description) As %Boolean
{
}

/// Returns true if expression is true. Invoke with the <b>$$$AssertTrue</b> macro in the form.
/// <pre>
/// $$$AssertTrue(<i>value, "description"</i>)</pre>
///
/// where:
/// <DL>
/// <dt><I>value</I> <dd>Expression to be evaluated. <br>
/// <dt><I>description</I> <dd>Optional comment shown on the results page.  If you don't include a description, the expression is used by default.
/// </dl>
/// Example: <pre>
/// do $$$AssertTrue(x=y,"Expression x=y is true")</pre>
Method AssertTrueViaMacro(autoquoted, value, description) As %Boolean
{
}

/// Unconditionally log a failure.
/// Invoke with the <b>$$$AssertFailure</b> macro in the form.
/// <pre>
/// $$$AssertFailure(<i>"message"</i>)</pre>
///
/// This assertion is intended to replace the convention of passing 0 to <b>$$$AssertTrue</b>.
/// It's useful when the condition is implicit (e.g., in a try block after an exception should have been thrown), and when you don't want to pollute the log with many successful assertions (e.g., in a loop).
Method AssertFailureViaMacro(message) As %Boolean
{
}

/// Unconditionally log success.
/// Invoke with the <b>$$$AssertSuccess</b> macro in the form.
/// <pre>
/// $$$AssertSuccess(<i>"message"</i>)</pre>
///
/// This assertion is intended to replace the convention of passing 1 to <b>$$$AssertTrue</b>.
Method AssertSuccessViaMacro(message) As %Boolean
{
}

/// An assertion to state that the test has been skipped for the reason described in the assertion's message
/// This would typically be used if the preconditions for the test have not been met.
/// After calling this assertion, you would typically would want to quit from the test method.
/// <br>NOTE: OnBeforeAllTests does not currently support skipping tests.  Calls to $$$AssertSkipped in
/// OnBeforeAllTests may result in tests appearing to pass rather than being skipped.
Method AssertSkippedViaMacro(message) As %Boolean
{
}

/// Returns true if the expression is not true. Invoke with the <b>$$$AssertNotTrue</b> macro in the form.
/// <pre>
/// $$$AssertNotTrue(<i>value, "description"</i>)</pre>
///
/// where:
/// <DL>
/// <dt><I>value</I> <dd>Expression to be evaluated. <br>
/// <dt><I>description</I> <dd>Optional comment shown on the results page.  If you don't include a description, the expression is used by default.
/// </dl>
/// Example: <pre>
/// do $$$AssertNotTrue(x=y,"Expression x=y is not true")</pre>
Method AssertNotTrueViaMacro(autoquoted, value, description) As %Boolean
{
}

/// Returns true if the status code is $$$OK. Invoke with the <B>$$$AssertStatusOK</B> macro in the form.
/// <pre>
/// $$$AssertStatusOK(<i>value, "description"</i>)</pre>
///
/// where:
/// <DL>
/// <dt><I>value</I> <dd>Expression that returns a status code. <br>
/// <dt><I>description</I> <dd>Optional comment shown on the results page.  If you don't include a description, the expression is used by default.
/// </dl>
/// Example: <pre>
/// set sc=##class(%Integer).IsValid("5")
/// do $$$AssertStatusOK(sc,"Status is OK")</pre>
Method AssertStatusOKViaMacro(autoquoted, status, description) As %Boolean
{
}

/// Returns true if the status code is not a successful status code. Invoke with the <b>$$$AssertStatusNotOK</b> macro in the form.
/// <pre>
/// $$$AssertStatusNotOK(<i>value, "description"</i>)</pre>
///
/// where:
/// <DL>
/// <dt><I>value</I> <dd>Expression that returns a status code. <br>
/// <dt><I>description</I> <dd>Optional comment shown on the results page.  If you don't include a description, the expression is used by default.
/// </dl>
/// Example: <pre>
/// set sc=##class(%Integer).IsValid("$")
/// do $$$AssertStatusNotOK(sc,"Status is NotOK")</pre>
Method AssertStatusNotOKViaMacro(autoquoted, status, description) As %Boolean
{
}

/// Returns true if two statuses are equal. Invoke with the <b>$$$AssertStatusEquals</b> macro in the form.
/// <pre>
/// $$$AssertStatusEquals(<i>value1,value2,"description"</i>)</pre>
/// where:
/// <DL>
/// <dt><I>value1,value2</I> <dd>Expressions that return status codes. <br>
/// <dt><I>description</I> <dd>Optional comment shown on the results page.  If you don't include a description, the expression is used by default.
/// </dl>
/// Example: This is extremely useful to verify an expected failure.
/// <pre>
/// s x=##class(Sample.Person).%New()
/// s sc=x.%Save()
/// s sc2=$system.Status.Error(5659,"Name")
/// d $$$AssertStatusEquals(sc,sc2,"Verify Name property requirement at %Save")
/// </pre>
Method AssertStatusEqualsViaMacro(autoquoted, value1, value2, description) As %Boolean
{
}

/// Returns true if two files are identical. Invoke with the <b>$$$AssertFilesSame</b> macro  in the form.
/// <pre>
/// $$$AssertFilesSame(<i>file1,file2,"description"</i>)</pre>
/// where:
/// <DL>
/// <dt><I>file1,file2</I> <dd>Files to compare.  If no directory path is specified, the current UnitTest directory is used. <br>
/// <dt><I>description</I> <dd>Optional comment shown on the results page.  If you don't include a description, the expression is used by default.
/// </dl>
/// Example:
/// <pre>
/// do $$$AssertFilesSame(output.log,reference.log,"Comparing output.log to reference.log")
/// </pre>
Method AssertFilesSameViaMacro(autoquoted, file1, file2, description) As %Boolean
{
}

/// Returns true if two files containing SQL query results contain the same unordered results. Invoke with the <b>$$$AssertFilesSQLUnorderedSame</b> macro  in the form.
/// <pre>
/// $$$AssertFilesSQLUnorderedSame(<i>file1,file2,"description"</i>)</pre>
/// where:
/// <DL>
/// <dt><I>file1,file2</I> <dd>Files to compare.  If no directory path is specified, the current UnitTest directory is used. <br>
/// <dt><I>description</I> <dd>Optional comment shown on the results page.  If you don't include a description, the expression is used by default.
/// <dt><I>ignoreOrderBy</I> <dd>Optional boolean stating to ignore "order by" when determining whether results are ordered
/// <dt><I>skipPlan</I> <dd>Optional boolean stating to not include output from ShowPlan in diff.  This feature will be enabled by default if ^%SYS("HINT","%PARALLEL")=1 but off in any other cases
/// <dt><I>noheader</I> <dd>Optional boolean stating that there is no header in the SQL reference file
/// </dl>
/// Example:
/// <pre>
/// do $$$AssertFilesSQLUnorderedSame(output.log,reference.log,"Comparing output.log to reference.log")
/// </pre>
Method AssertFilesSQLUnorderedSameViaMacro(autoquoted, file1, file2, description, ignoreOrderBy = 0, skipPlan = "", noheader = 0) As %Boolean
{
}

/// Helper method that will check out the one file in Perforce and copy the output to the reference file
/// so we can diff the output and see if the change is expected or not to help when things like ShowPlan
/// changes are made which can alter a lot of output
Method Checkout(file1, file2, forceref = 0)
{
}

ClassMethod IsFileOrderSame(file1, file2, diff, ignoreOrderBy, skipPlan, noheader) As %Boolean [ Internal ]
{
}

ClassMethod fileLines(file) [ Internal ]
{
}

ClassMethod parseSQLFile(file, ByRef parsed, ignoreOrderBy, noheader) [ Internal ]
{
}

ClassMethod IsFileSame(file1, file2, diff) As %Boolean [ Internal ]
{
}

ClassMethod getline(file, line, eof) [ Internal ]
{
}

/// Enter a message in quotes, such as "Start of test".  Message is entered in the log (<b>^UnitTest.Result</b>) when a test is run.
Method LogMessage(message)
{
}

/// Return the source code location of the caller's stack frame in label[+offset]^[|"ns"|]doc.ext format.
/// Returns <b>pStack</b> if it can't be mapped.
Method GetSourceLocation(pStack As %String = "") As %String [ Internal, Private ]
{
}

/// This method returns a useful description based on arguments used in the Assert macros.
ClassMethod ParseAutoQuoted(argline As %String, type As %String) As %String [ Private ]
{
}

}
