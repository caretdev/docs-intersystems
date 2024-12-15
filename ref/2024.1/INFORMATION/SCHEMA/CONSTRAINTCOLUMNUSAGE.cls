/// Returns one row for each column for each CHECK, UNIQUE, PRIMARY KEY, FOREIGN KEY constraint, or assertion in the current namespace for tables that can be accessed by the current user in the current namespace.
/// The rows list the columns that constitute each unique constraint, and the referencing columns in each foreign key constraint.
/// Since InterSystems IRIS does not currently support CHECK constraints or assertions, CONSTRAINT_COLUMN_USAGE returns the same rows as KEY_COLUMN_USAGE
Class INFORMATION.SCHEMA.CONSTRAINTCOLUMNUSAGE Extends %Library.Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = CONSTRAINT_COLUMN_USAGE, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

Property SchemaExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 20 ];

Property TableExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 21 ];

Property ConstraintExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 22 ];

Property ColumnNameExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 23 ];

/// Is the table a system table (1 or 0)
Property SystemTable As %Integer [ Calculated, Internal, Private, Required, SqlColumnNumber = 24, SqlComputeCode = { set {*}=$s($e({TABLE_SCHEMA})="%"||({TABLE_SCHEMA}="INFORMATION_SCHEMA"):1,1:0) }, SqlComputed ];

/// Table qualifier - always NULL in InterSystems IRIS.
Property TABLECATALOG As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 2, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = TABLE_CATALOG ];

/// Name of schema that contains the table.
Property TABLESCHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 3, SqlFieldName = TABLE_SCHEMA ];

/// Name of the table.
Property TABLENAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 4, SqlFieldName = TABLE_NAME ];

/// Name of the column.
Property COLUMNNAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 5, SqlFieldName = COLUMN_NAME ];

/// Table qualifier - always NULL in InterSystems IRIS.
Property CONSTRAINTCATALOG As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 6, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = CONSTRAINT_CATALOG ];

/// Name of schema that contains the constraint.  Always the same as the TABLE_SCHEMA.
Property CONSTRAINTSCHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ Calculated, SqlColumnNumber = 7, SqlComputeCode = { set {*}={TABLE_SCHEMA} }, SqlComputed, SqlFieldName = CONSTRAINT_SCHEMA ];

/// Name of the constraint.
Property CONSTRAINTNAME As %String(COLLATION = "Upper", MAXLEN = 128) [ SqlColumnNumber = 8, SqlFieldName = CONSTRAINT_NAME ];

}
