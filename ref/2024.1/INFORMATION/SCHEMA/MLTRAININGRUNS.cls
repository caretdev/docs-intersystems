/// Returns one row for each Integrated ML Training Run that can be accessed by the current user in the current namespace.
Class INFORMATION.SCHEMA.MLTRAININGRUNS Extends %Library.Persistent [ ClassType = persistent, Final, Owner = {_PUBLIC}, SqlRowIdPrivate, SqlTableName = ML_TRAINING_RUNS, StorageStrategy = SQLStorage, System = 4 ]
{

Parameter READONLY = 1;

/// ID of the Training Run
Property ID As %BigInt [ Internal, Private, Required, SqlColumnNumber = 2, SqlFieldName = ID ];

/// Name of the model that was trained
Property MODELNAME As %String(MAXLEN = 256) [ Required, SqlColumnNumber = 3, SqlFieldName = MODEL_NAME ];

/// Name of the Training Run, same as the name for the corresponding Trained Model
Property TRAININGRUNNAME As %String(MAXLEN = 256) [ SqlColumnNumber = 4, SqlFieldName = TRAINING_RUN_NAME ];

/// Provider used with Training Run
Property PROVIDER As %String(MAXLEN = 128) [ SqlColumnNumber = 5, SqlFieldName = PROVIDER ];

/// Timestamp for when the Training Run began (UTC)
Property STARTTIMESTAMP As %TimeStamp [ Required, SqlColumnNumber = 6, SqlFieldName = START_TIMESTAMP ];

/// Timestamp for when the Training Run completed (UTC)
Property COMPLETEDTIMESTAMP As %TimeStamp [ Required, SqlColumnNumber = 7, SqlFieldName = COMPLETED_TIMESTAMP ];

/// Training duration (in seconds)
Property TRAININGDURATION As %Numeric [ SqlColumnNumber = 8, SqlComputeCode = { Set {*}=##class(%ML.TrainingRun).GetInterval({START_TIMESTAMP},{COMPLETED_TIMESTAMP}) }, SqlComputed, SqlFieldName = TRAINING_DURATION, Transient ];

/// Training status
/// RunStatus = "Training" means the model is currently being trained
/// RunStatus = "Completed" means the model was trained without error
/// RunStatus = "Failed" means the training of the model encountered an error
/// RunStatus = "Canceled/Terminated" means the process executing the train statement was terminated, possibly by the Cancel button in the Execute Query window in the SMP.
Property RUNSTATUS As %String(DISPLAYLIST = ",Training,Completed,Failed,Canceled/Terminated", VALUELIST = ",training,completed,failed,canceled/terminated") [ SqlColumnNumber = 9, SqlComputeCode = {

/// Training error (if encountered)
Property STATUSCODE As %Status [ SqlColumnNumber = 10, SqlFieldName = STATUS_CODE ];

/// Training log output
Property LOG As %Stream.GlobalCharacter [ SqlColumnNumber = 11, SqlFieldName = LOG ];

/// Settings String for this training run
Property SETTINGS As %String(MAXLEN = "") [ SqlColumnNumber = 12, SqlComputeCode = { Set {*}=##class(INFORMATION.SCHEMA.MLTRAININGRUNS).GetSettings({ID}) }, SqlComputed, SqlFieldName = SETTINGS, Transient ];

/// ML Configuration for this training run
Property MLCONFIGURATIONAME As %SYS.ML.Configuration [ SqlColumnNumber = 13, SqlFieldName = ML_CONFIGURATION_NAME ];

/// Training Run query (SQL)
Property TRAININGRUNQUERY As %String(MAXLEN = 32000) [ SqlColumnNumber = 14, SqlFieldName = TRAINING_RUN_QUERY ];

/// Given a ML_TRAINING_RUN ID, get the display string for the %ML.TrainingRun.Settings
ClassMethod GetSettings(id As %BigInt) As %String [ Final, Internal, Language = objectscript ]
{
}

/// Given the Training Run ID, return the %SYS.ML.Configuration Name
ClassMethod GetMLConfigurationName(id As %BigInt) As %String [ Final, Internal, Language = objectscript ]
{
}

/// Given the Training Run ID, return the Model Name
ClassMethod GetModelName(id As %BigInt) As %String [ Final, Internal, Language = objectscript ]
{
}

}
