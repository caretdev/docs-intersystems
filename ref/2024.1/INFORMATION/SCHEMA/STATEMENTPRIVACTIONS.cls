/// Child class of INFORMATION.SCHEMA.STATEMENTPRIVOBJECTS, the privilege actions required for the parent SQL object for this statement
Class INFORMATION.SCHEMA.STATEMENTPRIVACTIONS Extends (%Library.Persistent, %XML.Adaptor) [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = STATEMENT_PRIV_ACTIONS, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

Relationship Relation As INFORMATION.SCHEMA.STATEMENTPRIVOBJECTS [ Cardinality = parent, Inverse = Actions ];

/// SQL Privilege Object action for the parent priilege object for the statement
/// "s" for Select, "i" for Insert, "u" for Update, "d" for Delete
Property Action As %String(MAXLEN = 1) [ Required ];

Property Fields As %Library.List;

}
