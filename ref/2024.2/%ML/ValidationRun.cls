Class %ML.ValidationRun Extends %Persistent [ System = 4 ]
{

Property TrainedModel As TrainedModel [ Required ];

/// Validation Run name
Property Name As %String(MAXLEN = 275) [ Required ];

/// Time started (UTC)
Property StartedAt As %TimeStamp [ InitialExpression = {$ZDATETIME($ZTIMESTAMP,3,1,3)}, Required ];

/// Time completed (UTC)
Property CompletedAt As %TimeStamp;

/// Training duration (in seconds)
Property ValidationDuration As %Numeric [ SqlComputeCode = {Set {*}=##class(%ML.TrainingRun).GetInterval({StartedAt},{CompletedAt})}, SqlComputed, Transient ];

/// Training query
Property ValidationQuery As %String(MAXLEN = 32000);

/// Validation status
Property RunStatus As %String(DISPLAYLIST = ",Running,Completed,Failed", VALUELIST = ",running,completed,failed") [ InitialExpression = "running" ];

/// Validation error (if encountered)
Property StatusCode As %Status [ InitialExpression = {$$$OK} ];

/// Validation log output
Property Log As %Stream.GlobalCharacter;

/// Settings for this training run
Property Settings As %Library.DynamicObject;

/// ValidationRunLocked 1 if we cannot acquire a locko on this validation run, otherwise 0
Property ValidationRunLocked As %Boolean [ Calculated, Private, SqlComputeCode = { lock +^IRIS.ML.ValidationRun({%%ID}):0 if $test { set {*}=0 lock -^IRIS.ML.ValidationRun({%%ID}) } else { set {*}=1 }}, SqlComputed ];

/// Optional reference to training run from which these results were gathered, if gathered at TRAIN time
Property TrainingRun As TrainingRun;

///
/// Log a timestamped message to the validation log
///
Method LogMsg(msg As %String, save As %Boolean = 1) As %Status [ Internal ]
{
}

}
