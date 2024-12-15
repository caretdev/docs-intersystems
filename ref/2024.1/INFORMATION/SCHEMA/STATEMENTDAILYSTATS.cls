/// Per day light weight statistics of this SQL statement
Class INFORMATION.SCHEMA.STATEMENTDAILYSTATS Extends (%Persistent, %XML.Adaptor) [ Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = STATEMENT_DAILY_STATS, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

/// Day these stats were recorded on
Property Day As %Date [ Required, SqlColumnNumber = 2 ];

/// Total number of times we have recorded this query being run
Property StatCount As %Integer [ SqlColumnNumber = 3 ];

/// Total time spent running this query
Property StatTotal As %Double [ SqlColumnNumber = 4 ];

/// Variance in time from running this query
Property StatVariance As %Double [ SqlColumnNumber = 5 ];

/// Total %ROWCOUNT from running this query
Property StatRowCount As %Integer [ SqlColumnNumber = 6 ];

/// Total ObjectScript commands executed from running this query
Property StatCommands As %Integer [ SqlColumnNumber = 7 ];

Relationship Statement As INFORMATION.SCHEMA.STATEMENTS [ Cardinality = parent, Inverse = Days ];

/// Breakdown of light weight SQL stats per hour within the day
Relationship Hours As INFORMATION.SCHEMA.STATEMENTHOURLYSTATS(XMLPROJECTION = "NONE") [ Cardinality = children, Inverse = Day ];

Relationship Parameters As INFORMATION.SCHEMA.STATEMENTPARAMETERSTATS(XMLPROJECTION = "NONE") [ Cardinality = children, Inverse = Day ];

}
