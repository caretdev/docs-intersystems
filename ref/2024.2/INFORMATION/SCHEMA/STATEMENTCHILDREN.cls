/// Child table of INFORMATION_SCHEMA.STATEMENTS which contains hash of the root parallel statement if this is a parallel "child" statement
Class INFORMATION.SCHEMA.STATEMENTCHILDREN Extends (%Library.Persistent, %XML.Adaptor) [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = STATEMENT_CHILDREN, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

/// Reference to the INFORMATION_SCHEMA.STATEMENTS row this is a child of
Relationship Statement As INFORMATION.SCHEMA.STATEMENTS [ Cardinality = parent, Inverse = Children ];

/// Hash for the parallel root parent
Property ParentHash As %String(MAXLEN = 128) [ Required ];

}
