/// Returns one row for each Integrated ML Model that can be accessed by the current user in the current namespace.
Class INFORMATION.SCHEMA.MLMODELS Extends %Library.Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = ML_MODELS, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

/// ID of the model
Property ID As %BigInt [ Internal, Private, Required, SqlColumnNumber = 2, SqlFieldName = ID ];

/// Name of the model
Property MODELNAME As %String(MAXLEN = 256) [ Required, SqlColumnNumber = 3, SqlFieldName = MODEL_NAME ];

/// Model description
Property DESCRIPTION As %String(MAXLEN = 8192) [ SqlColumnNumber = 4 ];

/// Column Name we are predicting
Property PREDICTINGCOLUMNNAME As %String(MAXLEN = 128) [ Required, SqlColumnNumber = 5, SqlFieldName = PREDICTING_COLUMN_NAME ];

/// Column Type we are predicting
Property PREDICTINGCOLUMNTYPE As %String(MAXLEN = 128) [ Required, SqlColumnNumber = 6, SqlFieldName = PREDICTING_COLUMN_TYPE ];

/// Columns names we are predicting using
Property WITHCOLUMNTNAMES As list Of %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 7, SqlFieldName = WITH_COLUMN_NAMES ];

/// Columns types we are predicting using
Property WITHCOLUMNTYPES As list Of %String(MAXLEN = 128) [ Internal, Private, Required, SqlColumnNumber = 8, SqlFieldName = WITH_COLUMN_TYPES ];

/// With Columns
Property WITHCOLUMNS As %String(MAXLEN = 4096) [ SqlColumnNumber = 9, SqlComputeCode = { set {*}=##class(INFORMATION.SCHEMA.MLMODELS).WithColumns({WITH_COLUMN_NAMES},{WITH_COLUMN_TYPES}) }, SqlComputed, SqlComputeOnChange = (WITHCOLUMNTNAMES, WITHCOLUMNTYPES), SqlFieldName = WITH_COLUMNS, Transient ];

/// Timestamp for when the model was created (UTC)
Property CREATETIMESTAMP As %TimeStamp [ Required, SqlColumnNumber = 11, SqlFieldName = CREATE_TIMESTAMP ];

/// Default trained model id
Property DEFAULTTRAINEDMODELID As %ML.TrainedModel [ Internal, Private, SqlColumnNumber = 12, SqlFieldName = DEFAULT_TRAINED_MODEL_ID ];

/// Default trained model name
Property DEFAULTTRAINEDMODELNAME As %String(MAXLEN = 275) [ SqlColumnNumber = 13, SqlComputeCode = { set {*}=$s({DEFAULT_TRAINED_MODEL_ID}="":"",1:$lg($g(^IRIS.ML.TrainedModelD({DEFAULT_TRAINED_MODEL_ID})),6))}, SqlComputed, SqlComputeOnChange = DEFAULTTRAINEDMODELID, SqlFieldName = DEFAULT_TRAINED_MODEL_NAME, Transient ];

/// Default Parameter (Settings) the model's provider will use
Property DEFAULTSETTINGS As %String(MAXLEN = 32000) [ SqlColumnNumber = 14, SqlComputeCode = { Set {*}=##class(INFORMATION.SCHEMA.MLMODELS).GetSettings({ID}) }, SqlComputed, SqlFieldName = DEFAULT_SETTINGS, Transient ];

/// Default training query (SQL)
Property DEFAULTTRAININGQUERY As %String(MAXLEN = 32000) [ SqlColumnNumber = 15, SqlFieldName = DEFAULT_TRAINING_QUERY ];

/// Given a list of column names and a list of ODBC type numbers, return a string of Name:SQLType for each WITH column in the model
ClassMethod WithColumns(Names As %List, Types As %List) As %String(MAXVAL=4096) [ Final, Internal, Language = objectscript ]
{
}

/// Given a model ID, return a string of DefaultParameters (Settings) for the model
ClassMethod GetSettings(id As %BigInt) As %String [ Final, Internal, Language = objectscript ]
{
}

}
