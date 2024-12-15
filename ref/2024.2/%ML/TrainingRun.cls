///
/// A model training run
///
Class %ML.TrainingRun Extends %Persistent [ ClassType = persistent, System = 4 ]
{

/// Model we are training with
Property Model As %ML.Model [ Required ];

/// Training Run name, same as the name for the cooresponding Trained Model
Property Name As %String(MAXLEN = 275) [ Required, SqlComputeCode = {if {Name}="" { set {*}=##class(%ML.TrainingRun).GetTrainingRunName({Model}) }}, SqlComputed, SqlComputeOnChange = %%INSERT ];

/// ML Provider that did the training
Property Provider As %String(MAXLEN = 128) [ Required ];

/// Time started (UTC)
Property StartedAt As %TimeStamp [ InitialExpression = {$ZDATETIME($ZTIMESTAMP,3,1,3)}, Required ];

/// Time completed (UTC)
Property CompletedAt As %TimeStamp;

/// Training duration (in seconds)
Property TrainingDuration As %Numeric [ SqlComputeCode = {Set {*}=##class({%%CLASSNAME}).GetInterval({StartedAt},{CompletedAt})}, SqlComputed, Transient ];

/// Training query
Property TrainingQuery As %String(MAXLEN = 32000);

/// Training status
Property RunStatus As %String(DISPLAYLIST = ",Training,Completed,Failed", VALUELIST = ",training,completed,failed") [ InitialExpression = "training" ];

/// Training error (if encountered)
Property StatusCode As %Status [ InitialExpression = {$$$OK} ];

/// Training log output
Property Log As %Stream.GlobalCharacter;

/// Settings for this training run
Property Settings As %Library.DynamicObject;

/// ML Configuration for this training run
Property Configuration As %SYS.ML.Configuration;

/// TrainingRunLocked 1 if we cannot acquire a locko on this training run, otherwise 0
Property TrainingRunLocked As %Boolean [ Calculated, Private, SqlComputeCode = { lock +^IRIS.ML.TrainingRun({%%ID}):0 if $test { set {*}=0 lock -^IRIS.ML.TrainingRun({%%ID}) } else { set {*}=1 }}, SqlComputed ];

/// IRIS Process ID that performed the training
Property PID As %String [ InitialExpression = {$job} ];

///
/// Compute the difference in seconds between two timestamps
///
ClassMethod GetInterval(start As %TimeStamp, end As %TimeStamp) As %Numeric
{
}

///
/// Compute the default name for this training run
/// // Model is the Oid of a Model
ClassMethod GetTrainingRunName(Model As %BigInt) As %String(MAXLEN=275)
{
}

///
/// Log a timestamped message to the training log
///
Method LogMsg(msg As %String) As %Status [ CodeMode = expression ]
{
}

///
/// Helper method for debugging etc.
///
Method %Dump() As %Status
{
}

}
