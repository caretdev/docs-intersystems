/// Child class of INFORMATION.SCHEMA.STATEMENTS, the SQL Objects that have privileges required for this statement
Class INFORMATION.SCHEMA.STATEMENTPRIVOBJECTS Extends (%Library.Persistent, %XML.Adaptor) [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = STATEMENT_PRIV_OBJECTS, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

/// Reference to the INFORMATION_SCHEMA.STATEMENTS row this is a child of
Relationship Statements As INFORMATION.SCHEMA.STATEMENTS [ Cardinality = parent, Inverse = PrivilegeRelations ];

Relationship Actions As INFORMATION.SCHEMA.STATEMENTPRIVACTIONS [ Cardinality = children, Inverse = Relation ];

/// SQL Privilege Object name for relatitions for this statement that will need privilege on to run.  Note, the name of the relation is always stored in uppercase.
/// This format is typically <table-type>,<iqn>  table-type is 1 for tables, 3 for views.  iqn is internal qualified name
Property Relation As %String(MAXLEN = 130) [ Required ];

}
