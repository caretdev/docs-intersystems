/// Child table of INFORMATION_SCHEMA.STATEMENTS which contains each table or view entry use by the statement
Class INFORMATION.SCHEMA.STATEMENTRELATIONS Extends (%Library.Persistent, %XML.Adaptor) [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = STATEMENT_RELATIONS, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

/// Reference to the INFORMATION_SCHEMA.STATEMENTS row this is a child of
Relationship Statement As INFORMATION.SCHEMA.STATEMENTS [ Cardinality = parent, Inverse = Relations ];

/// name of the table or view the statement references.  Note, the name of the relation is always stored in uppercase.
Property Relation As %String(MAXLEN = 128) [ Required ];

}
