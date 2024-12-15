/// Daily parameter statistics of this SQL statement
Class INFORMATION.SCHEMA.STATEMENTPARAMETERSTATS Extends (%Persistent, %XML.Adaptor) [ Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = STATEMENT_PARAMETER_STATS, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

/// List of actual parameter values used in order
Property Values As %List [ Required, SqlColumnNumber = 2 ];

/// Internal hash for this list of parameter values
Property ValuesHash As %String [ Private, Required, SqlColumnNumber = 3 ];

/// Number of times this list of parameter values was used
Property Frequency As %Integer [ Required, SqlColumnNumber = 4 ];

/// Total runtime with this list of parameter values
Property TotalRuntime As %Double(SCALE = 3) [ Private, Required, SqlColumnNumber = 5 ];

/// Average runtime with this list of parameter values
Property AverageRuntime As %Double(SCALE = 3) [ Calculated, Required, SqlColumnNumber = 6, SqlComputeCode = { set {*}={TotalRuntime}/{Frequency} }, SqlComputed ];

Relationship Day As INFORMATION.SCHEMA.STATEMENTDAILYSTATS [ Cardinality = parent, Inverse = Parameters ];

}
