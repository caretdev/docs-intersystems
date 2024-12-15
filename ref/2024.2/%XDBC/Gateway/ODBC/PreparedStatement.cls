Class %XDBC.Gateway.ODBC.PreparedStatement Extends %XDBC.Gateway.ODBC.Statement [ System = 4 ]
{

///     void setString(int parameterIndex, String x)
Method SetString(paramIdx As %RawString, value As %String)
{
}

///     void setString(int parameterIndex, String x, int len)
Method SetStringLen(paramIdx As %RawString, value As %String, len As %Integer)
{
}

Method SetBigDecimal(paramIdx As %RawString, value As %Decimal)
{
}

Method SetAsciiString(paramIdx As %RawString, value As %String)
{
}

Method SetBoolean(paramIdx As %RawString, value As %Boolean)
{
}

Method SetByte(paramIdx As %RawString, value As %SmallInt)
{
}

Method SetBytes(paramIdx As %RawString, value As %RawString)
{
}

Method SetDate(paramIdx As %RawString, value As %Date)
{
}

/// void setDouble(int parameterIndex, double x)
Method SetDouble(paramIdx As %RawString, value As %Float)
{
}

/// void setInt(int parameterIndex, int x)
Method SetInt(paramIdx As %RawString, value As %Integer)
{
}

Method SetFloat(paramIdx As %RawString, value As %Float)
{
}

Method SetLong(paramIdx As %RawString, value As %Integer)
{
}

Method SetShort(paramIdx As %RawString, value As %SmallInt)
{
}

Method SetTime(paramIdx As %RawString, value As %Time)
{
}

/// method SetTimestamp(paramIdx as %RawString, value As %TimeStamp) {}
Method SetTimestamp(paramIdx As %RawString, value As %TimeStamp)
{
}

/// Specify is Status array for column binding should be produced by Execute Batch
/// This call should be followed by Prepare(...) that pass parameter array in $List format
Method AddBatchEx(size As %Integer, statusArray As %Boolean)
{
}

/// Submits a batch of commands to the database for execution and if all commands execute successfully, returns an array of update counts
Method ExecuteBatchEx() As %List
{
}

}
