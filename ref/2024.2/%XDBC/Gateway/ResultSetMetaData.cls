/// FOR INTERNAL USE - do not invoke directly
Class %XDBC.Gateway.ResultSetMetaData Extends %RegisteredObject [ System = 4 ]
{

/// Internal metadata format specific to xDBC result sets
/// For regular serialized metadata for IRIS result sets, see <method>ToSQLMetadata</method>
Property %xdbcMetadata As %List [ Internal, MultiDimensional, Private ];

Property %columnindex As %Integer [ Internal, MultiDimensional, Private ];

Parameter SERVERRESULTSETMETADATAVERSION As INTEGER = 1;

Method %OnNew(metadata As %List) As %Status
{
}

Method find(columnname As %String(MAXLEN=220)) As %Integer
{
}

Method GetColumnCount() As %Integer
{
}

Method GetColumnLabel(colIdx As %Integer) As %String(MAXLEN=220)
{
}

Method GetColumnName(colIdx As %Integer) As %String(MAXLEN=220)
{
}

Method GetTableName(colIdx As %Integer) As %String(MAXLEN=220)
{
}

Method GetSchemaName(colIdx As %Integer) As %String(MAXLEN=220)
{
}

Method GetPrecision(colIdx As %Integer) As %Integer
{
}

Method GetScale(colIdx As %Integer) As %Integer
{
}

Method GetCatalogName(colIdx As %Integer) As %String(MAXLEN=220)
{
}

Method GetColumnType(colIdx As %Integer) As %Integer
{
}

Method GetColumnTypeName(colIdx As %Integer) As %String(MAXLEN=220)
{
}

Method GetColumnDisplaySize(colIdx As %Integer) As %Integer
{
}

/// Internal method to lazily build an IRIS-internal $list representation of the result set metadata
/// from <property>%xdbcMetadata</property>
Method ToSQLMetadata(Output metadata) As %Status [ Internal ]
{
}

}
