/// FOR INTERNAL USE - do not invoke directly
Class %XDBC.Gateway.JDBC.PreparedStatement Extends %XDBC.Gateway.JDBC.Statement [ System = 4 ]
{

Property %foreignstatement As %Net.Remote.Object;

Method %OnNew(connection As %XDBC.Gateway.JDBC.Connection, statement As %ObjectHandle) As %Status
{
}

///    boolean execute()
Method Execute(void As %String) As %Boolean
{
}

/// Executes the prepared statement, returns a single ResultSet object
/// Accepts no arguments, a single void argument is defined to satisfy inheritance rules
/// but is not expected to be passed. If void is defined then an exception will be thrown.
/// ResultSet executeQuery()
Method ExecuteQuery(void As %String) As ResultSet
{
}

///    int executeUpdate()
Method ExecuteUpdate(void As %String) As %Integer
{
}

Method AddBatch(sql As %String)
{
}

/// This is meant to return the column metadata as a %SQL.StatementMetadata object. If you want a %XDBC.Gateway.ResultSetMetaData object,
/// you should call GetResultSetMetaData()
Method GetMetaData() As %SQL.StatementMetadata
{
}

Method GetParameterMetaData() As %XDBC.Gateway.ParameterMetaData
{
}

/// method SetAsciiStream(paramIdx as %RawString, value As %Stream.Object) {}
Method SetAsciiStream(paramIdx As %RawString, value As %Stream.Object, length As %Integer)
{
}

Method SetBigDecimal(paramIdx As %RawString, value As %Decimal)
{
}

Method SetBinaryStream(paramIdx As %RawString, value As %Stream.Object, length As %Integer)
{
}

Method SetBlob(paramIdx As %RawString, value As %Stream.Object, length As %Integer)
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

Method SetCharacterStream(paramIdx As %RawString, value As %Stream.Object, length As %Integer)
{
}

Method SetClob(paramIdx As %RawString, value As %Stream.Object, length As %Integer)
{
}

Method SetDate(paramIdx As %RawString, value As %Date, cal As %Net.Remote.Object)
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

/// method SetNCharacterStream(paramIdx as %RawString, value as %Stream.Object) {}
Method SetNCharacterStream(paramIdx As %RawString, value As %Stream.Object, length As %Integer)
{
}

/// method SetNClob(paramIdx as %RawString, value As %Stream.Object) {}
/// method SetNClob(paramIdx as %RawString, value as %Stream.Object) {}
Method SetNClob(paramIdx As %RawString, value As %Stream.Object, length As %Integer)
{
}

Method SetNString(paramIdx As %RawString, value As %String)
{
}

/// throws SQLException
/// method SetNull(paramIdx as %RawString, sqlType as %Integer) {}
Method SetNull(paramIdx As %RawString, sqlType As %Integer, typeName As %String)
{
}

/// method SetObject(paramIdx as %RawString, value As %ObjectHandle, targetSqlType as %Integer) {}
/// method SetObject(paramIdx as %RawString, x) {}
Method SetObject(paramIdx As %RawString, value As %ObjectHandle, targetSqlType As %Integer, scale As %Integer)
{
}

Method SetShort(paramIdx As %RawString, value As %SmallInt)
{
}

///     void setString(int parameterIndex, String x)
Method SetString(paramIdx As %RawString, value As %String)
{
}

Method SetTime(paramIdx As %RawString, value As %Time, cal As %Net.Remote.Object)
{
}

/// throws SQLException
/// method SetTimestamp(paramIdx as %RawString, value As %TimeStamp) {}
Method SetTimestamp(paramIdx As %RawString, value As %TimeStamp, cal As %Net.Remote.Object)
{
}

/// throws SQLException
/// method SetURL(paramIdx as %RawString, java.net.URL val) {}
Method SetURL(paramIdx As %RawString, value As %RawString)
{
}

}
