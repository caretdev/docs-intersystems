/// Returns one row for each columns for each UNIQUE, PRIMARY KEY, or FOREIGN KEY table constraint in the current namespace for tables that can be accessed by the current user in the current namespace.
/// The KEY_COLUMN_USAGE table has one or more rows for each row in the TABLE_CONSTRAINTS table that has a CONSTRAINT_TYPE of "UNIQUE", "PRIMARY KEY", or "FOREIGN KEY".
/// The rows list the columns that constitute each unique constraint, and the referencing columns in each foreign key constraint.
Class INFORMATION.SCHEMA.KEYCOLUMNUSAGE Extends %Library.Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = KEY_COLUMN_USAGE, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

Property SchemaExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 20 ];

Property TableExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 21 ];

Property ConstraintExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 22 ];

Property ColumnNameExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 23 ];

/// Is the table a system table (1 or 0)
Property SystemTable As %Integer [ Calculated, Internal, Private, Required, SqlColumnNumber = 24, SqlComputeCode = { set {*}=$s($e({SchemaExact})="%"||({SchemaExact}="INFORMATION_SCHEMA"):1,1:0) }, SqlComputed ];

/// Table qualifier - always NULL in InterSystems IRIS.
Property CONSTRAINTCATALOG As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 2, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = CONSTRAINT_CATALOG ];

/// Name of schema that contains the constraint.  Always the same as the TABLE_SCHEMA.
Property CONSTRAINTSCHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ Calculated, SqlColumnNumber = 3, SqlComputeCode = { set {*}={TABLE_SCHEMA} }, SqlComputed, SqlFieldName = CONSTRAINT_SCHEMA ];

/// Name of the constraint.
Property CONSTRAINTNAME As %String(COLLATION = "Upper", MAXLEN = 128) [ SqlColumnNumber = 4, SqlFieldName = CONSTRAINT_NAME ];

/// Table qualifier - always NULL in InterSystems IRIS.
Property TABLECATALOG As %String(MAXLEN = 128) [ Calculated, SqlColumnNumber = 5, SqlComputeCode = { set {*}="" }, SqlComputed, SqlFieldName = TABLE_CATALOG ];

/// Name of schema that contains the table.
Property TABLESCHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 6, SqlFieldName = TABLE_SCHEMA ];

/// Name of the table.
Property TABLENAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 7, SqlFieldName = TABLE_NAME ];

/// Name of the column.
Property COLUMNNAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 8, SqlFieldName = COLUMN_NAME ];

/// Column's ordinal position within the contraint.
/// The value of ORDINAL_POSITION is the ordinal position of the specific column in the constraint being described. If the constraint described is a key of cardinality 1 (one), then the value of ORDINAL_POSITION is always 1 (one).
Property ORDINALPOSITION As %Integer(MINVAL = 1) [ Required, SqlColumnNumber = 9, SqlFieldName = ORDINAL_POSITION ];

/// Referenced column's ordinal position in the referenced unique constraint.
/// <br>If the constraint being described is a foreign key constraint, then the value of POSITION_IN_UNIQUE_CONSTRAINT is the ordinal position of the referenced column corresponding to the referencing column being described, in the corresponding unique key constraint.
Property POSITIONINUNIQUECONSTRAINT As %Integer(MINVAL = 1) [ Calculated, SqlColumnNumber = 10, SqlComputeCode = { set {*}={ORDINAL_POSITION} }, SqlComputed, SqlFieldName = POSITION_IN_UNIQUE_CONSTRAINT ];

/// Referenced table qualifier - always NULL in InterSystems IRIS.
Property REFERENCEDTABLECATALOG As %String(COLLATION = "Upper", MAXLEN = 128) [ Calculated, SqlColumnNumber = 11, SqlComputeCode = { set {*}=""}, SqlComputed, SqlFieldName = REFERENCED_TABLE_CATALOG ];

/// Name of schema that contains the table this foreign key references.
Property REFERENCEDTABLESCHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ SqlColumnNumber = 12, SqlFieldName = REFERENCED_TABLE_SCHEMA ];

/// Name of the table this foreign key references.
Property REFERENCEDTABLENAME As %String(COLLATION = "Upper", MAXLEN = 128) [ SqlColumnNumber = 13, SqlFieldName = REFERENCED_TABLE_NAME ];

/// Name of the constraint this foreign key references.
Property REFERENCEDCONSTRAINTNAME As %String(COLLATION = "Upper", MAXLEN = 128) [ SqlColumnNumber = 14, SqlFieldName = REFERENCED_CONSTRAINT_NAME ];

/// Name of the column this foreign key references.
Property REFERENCEDCOLUMNNAME As %String(COLLATION = "Upper", MAXLEN = 128) [ SqlColumnNumber = 15, SqlFieldName = REFERENCED_COLUMN_NAME ];

/// CONSTRAINT_TYPE Returns one of the following values:
/// <br><ul>
/// 	<li>FOREIGN KEY - The constraint being described is a foreign key constraint.</li>
/// 	<li>UNIQUE - The constraint being described is a unique constraint.</li>
/// 	<li>PRIMARY KEY - The constraint being described is a primary key constraint.</li>
/// 	<li>CHECK - The constraint being described is a check constraint.</li>
/// </ul>
Property CONSTRAINTTYPE As %String(MAXLEN = 11, VALUELIST = ",FOREIGN KEY,UNIQUE,PRIMARY KEY,CHECK") [ Required, SqlColumnNumber = 16, SqlFieldName = CONSTRAINT_TYPE ];

}
