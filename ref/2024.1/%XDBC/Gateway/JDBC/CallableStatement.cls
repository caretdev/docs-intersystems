/// The interface used to execute SQL stored procedures.  The JDBC API
/// provides a stored procedure SQL escape syntax that allows stored procedures
/// to be called in a standard way for all RDBMSs. This escape syntax has one
/// form that includes a result parameter and one that does not. If used, the result
/// parameter must be registered as an OUT parameter. The other parameters
/// can be used for input, output or both. Parameters are referred to
/// sequentially, by number, with the first parameter being 1.
/// <PRE>
///   {?= call &lt;procedure-name&gt;[(&lt;arg1&gt;,&lt;arg2&gt;, ...)]}
///   {call &lt;procedure-name&gt;[(&lt;arg1&gt;,&lt;arg2&gt;, ...)]}
/// </PRE>
/// <P>
/// IN parameter values are set using the <code>set</code> methods inherited from
/// {@link PreparedStatement}.  The type of all OUT parameters must be
/// registered prior to executing the stored procedure; their values
/// are retrieved after execution via the <code>get</code> methods provided here.
/// <P>
/// A <code>CallableStatement</code> can return one {@link ResultSet} object or
/// multiple <code>ResultSet</code> objects.  Multiple
/// <code>ResultSet</code> objects are handled using operations
/// inherited from {@link Statement}.
/// <P>
/// For maximum portability, a call's <code>ResultSet</code> objects and
/// update counts should be processed prior to getting the values of output
/// parameters.
/// @see Connection#prepareCall
/// @see ResultSet
Class %XDBC.Gateway.JDBC.CallableStatement Extends %XDBC.Gateway.JDBC.PreparedStatement [ System = 4 ]
{

/// throws SQLException
Method GetArray(paramIdxOrName As %RawString) As %Library.DynamicArray
{
}

/// throws SQLException
Method GetBlob(paramIdxOrName As %RawString) As %Stream.Object
{
}

/// throws SQLException;
Method GetBoolean(paramIdxOrName As %RawString) As %Boolean
{
}

/// throws SQLException;
Method GetByte(paramIdxOrName As %RawString) As %Integer
{
}

/// throws SQLException
Method GetBytes(paramIdxOrName As %RawString) As %RawString
{
}

/// throws SQLException
Method GetBigDecimal(paramIdxOrName As %RawString) As %Decimal
{
}

Method GetCharacterStream(paramIdxOrName As %RawString) As %Stream.Object
{
}

Method GetClob(paramIdxOrName As %RawString) As %Stream.Object
{
}

/// throws SQLException
Method GetDate(paramIdxOrName As %RawString) As %Date
{
}

/// throws SQLException
Method GetDouble(paramIdxOrName As %RawString) As %Double
{
}

/// throws SQLException;
Method GetFloat(paramIdxOrName As %RawString) As %Float
{
}

/// throws SQLException;
Method getInt(paramIdxOrName As %RawString) As %Integer
{
}

/// throws SQLException;
Method GetLong(paramIdxOrName As %RawString) As %Integer
{
}

Method GetNCharacterStream(paramIdxOrName As %RawString) As %Stream.Object
{
}

Method GetNClob(paramIdxOrName As %RawString) As %Stream.Object
{
}

Method GetNString(paramIdxOrName As %RawString) As %String
{
}

/// throws SQLException
/// method GetObject(paramIdxOrName as %RawString, map as %Library.DynamicObject) as %Net.Remote.Object {}
/// method GetObject(paramIndex as %RawString, type as %String) as %Net.Remote.Object {}
Method GetObject(paramIdxOrName As %RawString, mapOrType As %Library.RawString) As %Net.Remote.Object
{
}

/// throws SQLException;
Method getShort(paramIdxOrName As %RawString) As %SmallInt
{
}

/// throws SQLException;
Method getString(paramIdxOrName As %RawString) As %String
{
}

/// throws SQLException
Method GetTime(paramIdxOrName As %RawString) As %Time
{
}

/// throws SQLException
Method GetTimestamp(paramIdxOrName As %RawString) As %TimeStamp
{
}

/// throws SQLException
Method GetURL(paramIdxOrName As %RawString) As %Net.Remote.Object
{
}

/// throws SQLException
/// method registerOutParameter(paramIdxOrName as %RawString, sqlType as %Integer)
/// method registerOutParameter(paramIdxOrName as %RawString, sqlType as %Integer, scale as %Integer)
/// method registerOutParameter (paramIdxOrName as %RawString, sqlType as %Integer, String typeName)
/// throws SQLException;
/// method registerOutParameter(paramIndex as %RawString, sqlType as %Integer)
/// method registerOutParameter(paramIndex as %RawString, sqlType as %Integer, scale as %Integer) {}
Method registerOutParameter(paramIdxOrName As %RawString, sqlType As %Integer, typeName As %String)
{
}

/// method SetAsciiStream(paramIdxOrName as %RawString, value As %Stream.Object) {}
Method SetAsciiStream(paramIdxOrName As %RawString, value As %Stream.Object, length As %Integer)
{
}

Method SetBigDecimal(paramIdxOrName As %RawString, value As %Decimal)
{
}

Method SetBinaryStream(paramIdxOrName As %RawString, value As %Stream.Object, length As %Integer)
{
}

Method SetBlob(paramIdxOrName As %RawString, value As %Stream.Object, length As %Integer)
{
}

Method SetBoolean(paramIdxOrName As %RawString, value As %Boolean)
{
}

Method SetByte(paramIdxOrName As %RawString, value As %SmallInt)
{
}

Method SetBytes(paramIdxOrName As %RawString, value As %RawString)
{
}

Method SetCharacterStream(paramIdxOrName As %RawString, value As %Stream.Object, length As %Integer)
{
}

Method SetClob(paramIdxOrName As %RawString, value As %Stream.Object, length As %Integer)
{
}

Method SetDate(paramIdxOrName As %RawString, value As %Date, cal As %Net.Remote.Object)
{
}

Method SetDouble(paramIdxOrName As %RawString, value As %Float)
{
}

Method SetFloat(paramIdxOrName As %RawString, value As %Float)
{
}

Method SetInt(paramIdxOrName As %RawString, value As %Integer)
{
}

Method SetLong(paramIdxOrName As %RawString, value As %Integer)
{
}

/// method SetNCharacterStream(paramIdxOrName as %RawString, value as %Stream.Object) {}
Method SetNCharacterStream(paramIdxOrName As %RawString, value As %Stream.Object, length As %Integer)
{
}

/// method SetNClob(paramIdxOrName as %RawString, value As %Stream.Object) {}
/// method SetNClob(paramIdxOrName as %RawString, value as %Stream.Object) {}
Method SetNClob(paramIdxOrName As %RawString, value As %Stream.Object, length As %Integer)
{
}

Method SetNString(paramIdxOrName As %RawString, value As %String)
{
}

/// throws SQLException
/// method SetNull(paramIdxOrName as %RawString, sqlType as %Integer) {}
Method SetNull(paramIdxOrName As %RawString, sqlType As %Integer, typeName As %String)
{
}

/// method SetObject(paramIdxOrName as %RawString, value As %ObjectHandle, targetSqlType as %Integer) {}
/// method SetObject(paramIdxOrName as %RawString, x) {}
Method SetObject(paramIdxOrName As %RawString, value As %ObjectHandle, targetSqlType As %Integer, scale As %Integer)
{
}

Method SetShort(paramIdxOrName As %RawString, value As %SmallInt)
{
}

Method SetString(paramIdxOrName As %RawString, value As %String)
{
}

Method SetTime(paramIdxOrName As %RawString, value As %Time, cal As %Net.Remote.Object)
{
}

/// throws SQLException
/// method SetTimestamp(paramIdxOrName as %RawString, value As %TimeStamp) {}
Method SetTimestamp(paramIdxOrName As %RawString, value As %TimeStamp, cal As %Net.Remote.Object)
{
}

/// throws SQLException
/// method SetURL(paramIdxOrName as %RawString, java.net.URL val) {}
Method SetURL(paramIdxOrName As %RawString, value As %RawString)
{
}

/// throws SQLException;
Method wasNull() As %Boolean
{
}

}
