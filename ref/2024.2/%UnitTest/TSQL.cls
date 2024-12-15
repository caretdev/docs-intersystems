Class %UnitTest.TSQL Extends (%UnitTest.TestCase, %UnitTest.ODBCSQL) [ Inheritance = right, System = 4 ]
{

/// Informix SPL dll/so is only built for 32-bit Windows and for 32-bit, 64-bit RedHat Linux
Method informixPlatform() As %Boolean
{
}

/// Method to display incorrect results in a more readable format.
Method processDiffFile(ByRef rslt As %Stream)
{
}

Method runSQLStatement(sql As %String = "", ByRef dsn As %String = "", verbose As %Boolean = 0, Username As %String = "", Password As %String = "", ByRef Rowcount As %Integer) As %Stream
{
}

}
