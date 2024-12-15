/// Returns one row for each table column that is used in a view where the view and view column can be accessed by the current user in the current namespace.
Class INFORMATION.SCHEMA.VIEWCOLUMNUSAGE Extends %Library.Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = VIEW_COLUMN_USAGE, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

Property SchemaExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 10 ];

Property ViewExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 11 ];

Property ViewColumnName As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 12 ];

/// Is the view a system view (1 or 0)
Property SystemView As %Integer [ Calculated, Internal, Private, Required, SqlColumnNumber = 14, SqlComputeCode = { set {*}=$s($e({VIEW_SCHEMA})="%"||({VIEW_SCHEMA}="INFORMATION_SCHEMA"):1,1:0) }, SqlComputed ];

/// View qualifier - always NULL in InterSystems IRIS
Property VIEWCATALOG As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 2, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = VIEW_CATALOG ];

/// Name of schema that contains the view.
Property VIEWSCHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 3, SqlFieldName = VIEW_SCHEMA ];

/// Name of the view.
Property VIEWNAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 4, SqlFieldName = VIEW_NAME ];

/// Table qualifier - always NULL in InterSystems IRIS
Property TABLECATALOG As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 5, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = TABLE_CATALOG ];

/// Name of schema that contains the table.
Property TABLESCHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 6, SqlFieldName = TABLE_SCHEMA ];

/// Name of the table.
Property TABLENAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 7, SqlFieldName = TABLE_NAME ];

/// Name of the column.
Property COLUMNNAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 8, SqlFieldName = COLUMN_NAME ];

}
