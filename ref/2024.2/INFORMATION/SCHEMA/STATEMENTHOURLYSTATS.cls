/// Per hour light weight statistics of this SQL statement
Class INFORMATION.SCHEMA.STATEMENTHOURLYSTATS Extends (%Persistent, %XML.Adaptor) [ Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = STATEMENT_HOURLY_STATS, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

/// Hour these stats were recorded on, this is an integer 0-23 so 0 is after midnight up to 1am and 1 is from 1am up to 2am, etc.
Property Hour As %Integer [ Required, SqlColumnNumber = 2 ];

/// Total number of times we have recorded this query being run
Property StatCount As %Integer [ SqlColumnNumber = 3 ];

/// Total time spent running this query
Property StatTotal As %Double [ SqlColumnNumber = 4 ];

/// Variance in time from running this query
Property StatVariance As %Double [ SqlColumnNumber = 5 ];

/// Total %ROWCOUNT from running this query
Property StatRowCount As %Integer [ SqlColumnNumber = 6 ];

/// Total ObjectScript commands from running this query
Property StatCommands As %Integer [ SqlColumnNumber = 7 ];

/// Reference to the daily stats class
Relationship Day As INFORMATION.SCHEMA.STATEMENTDAILYSTATS [ Cardinality = parent, Internal, Inverse = Hours ];

/// Day these stats were recorded on
Property Date As %Date [ Calculated, SqlColumnNumber = 8, SqlComputeCode = {set {*} = $p({Day},"||",2)}, SqlComputed ];

}
