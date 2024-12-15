/// Returns one row for each user defined aggregate that can be accessed by the current user in the current namespace.
Class INFORMATION.SCHEMA.USERDEFINEDAGGREGATES Extends %Library.Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = USER_DEFINED_AGGREGATES, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

Property SchemaUpper As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 60 ];

Property TableUpper As %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 61 ];

/// Name of the schema that contains the user defined aggregate
Property AGGREGATECHEMA As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 2, SqlFieldName = AGGREGATE_SCHEMA ];

/// Aggregate name
Property AGGREGATENAME As %String(COLLATION = "Upper", MAXLEN = 128) [ Required, SqlColumnNumber = 3, SqlFieldName = AGGREGATE_NAME ];

/// The datatype of the value returned by the User Defined Aggregate
Property RETURNTYPE As %String(MAXLEN = 128) [ SqlColumnNumber = 4, SqlFieldName = RETURN_TYPE ];

/// The parameters and types of the User Defined Aggregate
Property PARAMETERLIST As %String(MAXLEN = 512) [ SqlColumnNumber = 5, SqlFieldName = PARAMETER_LIST ];

/// The owner of the User Defined Aggregate
Property OWNER As %String(MAXLEN = 160) [ SqlColumnNumber = 6, SqlFieldName = OWNER ];

/// The Initialize Function of the User Defined Aggregate
Property INITIALIZEFUNCTION As %String(MAXLEN = 257) [ SqlColumnNumber = 7, SqlFieldName = INITIALIZE_FUNCTION ];

/// The Iterate Function of the User Defined Aggregate
Property ITERATEFUNCTION As %String(MAXLEN = 257) [ SqlColumnNumber = 8, SqlFieldName = ITERATE_FUNCTION ];

/// The Merge Function of the User Defined Aggregate
Property MERGEFUNCTION As %String(MAXLEN = 257) [ SqlColumnNumber = 9, SqlFieldName = MERGE_FUNCTION ];

/// The Finalize Function of the User Defined Aggregate
Property FINALIZEFUNCTION As %String(MAXLEN = 257) [ SqlColumnNumber = 10, SqlFieldName = FINALIZE_FUNCTION ];

}
