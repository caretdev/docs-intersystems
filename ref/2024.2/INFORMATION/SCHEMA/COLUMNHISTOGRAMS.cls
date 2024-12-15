Class INFORMATION.SCHEMA.COLUMNHISTOGRAMS Extends %Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = COLUMN_HISTOGRAMS, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

Property SchemaExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 45 ];

Property TableExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 46 ];

/// Table qualifier - always NULL in InterSystems IRIS
Property TABLECATALOG As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 2, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = TABLE_CATALOG ];

/// Name of schema that contains the table.
Property TABLESCHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 3, SqlFieldName = TABLE_SCHEMA ];

/// Name of the table.
Property TABLENAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 4, SqlFieldName = TABLE_NAME ];

/// Name of the column.
Property COLUMNNAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 5, SqlFieldName = COLUMN_NAME ];

/// Column's ordinal position within the table.
Property ORDINALPOSITION As %Integer [ Required, SqlColumnNumber = 6, SqlFieldName = ORDINAL_POSITION ];

Property BUCKETPOSITION As %Integer [ Required, SqlColumnNumber = 7, SqlFieldName = BUCKET_POSITION ];

Property BUCKETWIDTH As %Float [ SqlColumnNumber = 8, SqlFieldName = BUCKET_WIDTH ];

Property INTERPOLATABLE As %Boolean [ SqlColumnNumber = 9 ];

Property NULLBUCKETS As %Integer [ SqlColumnNumber = 10, SqlFieldName = NULL_BUCKETS ];

Property PERCENTILE As %Float [ SqlColumnNumber = 11 ];

Property VALUE As %String [ SqlColumnNumber = 12 ];

}
