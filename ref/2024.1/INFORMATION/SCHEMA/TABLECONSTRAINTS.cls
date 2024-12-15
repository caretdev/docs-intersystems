/// Returns one row for each table constraint in the current namespace for tables that can be accessed by the current user in the current namespace.
Class INFORMATION.SCHEMA.TABLECONSTRAINTS Extends %Library.Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = TABLE_CONSTRAINTS, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

Property SchemaExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 20 ];

Property TableExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 21 ];

Property ConstraintExact As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 22 ];

/// Is the table a system table (1 or 0)
Property SystemTable As %Integer [ Calculated, Internal, Private, Required, SqlColumnNumber = 23, SqlComputeCode = { set {*}=$s($e({TABLE_SCHEMA})="%"||({TABLE_SCHEMA}="INFORMATION_SCHEMA"):1,1:0) }, SqlComputed ];

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

/// CONSTRAINT_TYPE Returns one of the following values:
/// <br><ul>
/// 	<li>FOREIGN KEY - The constraint being described is a foreign key constraint.</li>
/// 	<li>UNIQUE - The constraint being described is a unique constraint.</li>
/// 	<li>PRIMARY KEY - The constraint being described is a primary key constraint.</li>
/// 	<li>CHECK - The constraint being described is a check constraint.</li>
/// </ul>
Property CONSTRAINTTYPE As %String(MAXLEN = 11, VALUELIST = ",FOREIGN KEY,UNIQUE,PRIMARY KEY,CHECK") [ Required, SqlColumnNumber = 8, SqlFieldName = CONSTRAINT_TYPE ];

/// If the constraint is deferrable, IS_DEFERRABLE returns YES, otherwise NO.  InterSystems IRIS only supports non-deferrable constraints.
Property ISDEFERRABLE As %String(MAXLEN = 3, VALUELIST = ",YES,NO") [ Calculated, Required, SqlColumnNumber = 9, SqlComputeCode = { set {*}="NO" }, SqlComputed, SqlFieldName = IS_DEFERRABLE ];

/// If the constraint is initially deferred, INITIALLY_DEFERRED returns YES, otherwise NO.  InterSystems IRIS only supports non-deferrable constraints.
Property INITIALLYDEFERRED As %String(MAXLEN = 3, VALUELIST = ",YES,NO") [ Calculated, Required, SqlColumnNumber = 10, SqlComputeCode = { set {*}="NO" }, SqlComputed, SqlFieldName = INITIALLY_DEFERRED ];

}
