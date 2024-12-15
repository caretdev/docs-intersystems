/// Returns one row for each check constraint in the current namespace for tables that can be accessed by the current user in the current namespace.
/// Note that InterSystems IRIS does not currently support check constraints, this table exists for future use.
Class INFORMATION.SCHEMA.CHECKCONSTRAINTS Extends %Library.Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = CHECK_CONSTRAINTS, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

Property SchemaExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 10 ];

Property TableExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 11 ];

Property TableName As %String(COLLATION = "Upper", MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 12 ];

Property ConstraintExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 13 ];

/// Is the table a system table (1 or 0)
Property SystemTable As %Integer [ Calculated, Internal, Private, Required, SqlColumnNumber = 14, SqlComputeCode = { set {*}=$s($e({CONSTRAINT_SCHEMA})="%"||({CONSTRAINT_SCHEMA}="INFORMATION_SCHEMA"):1,1:0) }, SqlComputed ];

/// Constraint qualifier - always NULL in InterSystems IRIS.
Property CONSTRAINTCATALOG As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 2, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = CONSTRAINT_CATALOG ];

/// Name of schema that contains the constraint.  Always the same as the TABLE_SCHEMA.
Property CONSTRAINTSCHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ SqlColumnNumber = 3, SqlFieldName = CONSTRAINT_SCHEMA ];

/// Name of the constraint.
Property CONSTRAINTNAME As %String(COLLATION = "Upper", MAXLEN = 128) [ SqlColumnNumber = 4, SqlFieldName = CONSTRAINT_NAME ];

/// The search condition contained in the check constraint definition.
Property CHECKCLAUSE As %String(MAXLEN = 2048) [ Calculated, SqlColumnNumber = 5, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = CHECK_CLAUSE ];

}
