///
/// Definition of a ML model
///
Class %ML.Model Extends %Persistent [ ClassType = persistent, System = 4 ]
{

/// Name of the model
Property Name As %String(MAXLEN = 256) [ Required ];

/// Model description
Property Description As %String(MAXLEN = 8192);

/// Column Name(s) we're predicting
Property PredictingColumnNames As list Of %String(MAXLEN = 128) [ Required ];

/// Column Types(s) we're predicting
Property PredictingColumnTypes As list Of %String(MAXLEN = 128) [ Required ];

/// Columns names we're predicting using
Property WithColumnNames As list Of %String(MAXLEN = 128) [ Required ];

/// Columns types we're predicting using
Property WithColumnTypes As list Of %String(MAXLEN = 128) [ Required ];

/// Columns text we're predicting using, text from SQL query or with expression
Property WithColumnText As list Of %String(MAXLEN = 512) [ Required ];

/// Have we found an ID column that would otherwise be trained on by default if we did not exclude it
Property DefaultIDColumnFound As %Boolean [ InitialExpression = 0, Required ];

/// Is this a timeseries model?
Property TimeSeries As %Boolean [ InitialExpression = 0, Required ];

/// What is the datetime column for a timeseries model?
Property DateTimeColumn As %String(MAXLEN = 128);

/// How far forward are we predicting? Important for validation.
Property Forward As %Integer;

/// What time step size was returned (DataRobot Exclusive)
Property TimeStep As %String(MAXLEN = 128);

/// What is the calculated forward window? (DataRobot Exclusive)
Property ForwardResponse As %String(MAXLEN = 128);

/// Model parameters
Property DefaultParameters As array Of %String(MAXLEN = 1024);

/// Default training query (SQL)
Property DefaultTrainingQuery As %String(MAXLEN = 32000);

/// Timestamp for when the model was created (UTC)
Property CreatedAt As %TimeStamp [ InitialExpression = {$ZDATETIME($ZTIMESTAMP,3,1,3)}, Required ];

/// Default trained model
Property DefaultTrainedModel As %ML.TrainedModel;

/// Index on the model name
///
/// Train an ML model (synchronously)
///
Method %Train(data As %SQL.StatementResult, ByRef trainedmodelname As %String, ByRef trainedmodel As %ML.TrainedModel, ByRef trainingrun As %ML.TrainingRun, using As %DynamicObject = {$$$NULLOREF}, notdefault As %Boolean = 0) As %Status
{
}

///
/// Predict
///
Method %Predict(rowdata As %List, ByRef result As %Double, contextitem As %RawString) As %Status
{
}

///
/// Probability
///
Method %Probability(rowdata As %List, ByRef result As %Double, ByRef trainedmodel As %ML.TrainedModel = "", expr As %String = 1) As %Status
{
}

///
/// Bulk Predict
///
/// arguments:
/// 	modelname	 - model name
/// 	trainedmodelname - name of %ML.TrainedModel, might be different from the DefaultTrainedModel
/// 	tfn		 - tempfile index
/// 	argspos		 - Positions of the WithColumns in the temp rows, $list(column-positions)
/// 	predpos		 - Position of the predicted value, $list(result-column-positions)
/// 	probpos		 - Position of the probability value, $list(result-column-positions)
/// 	expr		 - expression for probability
/// returns:
/// 	$$$OK on success, otherwise a $$$ERROR(...)
///
ClassMethod %PredictAll(modelname As %String, trainedmodelname As %String = "", tfn As %Integer, argspos As %List, predpos As %List = "", probpos As %List = "", expr As %String = 1, mtorder As %List, mtunary As %List) As %Status
{
}

/// <p><b>Note:</b> Do not call this method directly.
/// Please refer to the SQL syntax as documented in <class>%ML.Model</class></p>
///
/// <p>This is the entry point for the <pre>VALIDATE MODEL</pre> command.
/// After setting up a <class>%ML.ValidationRun</class> instance, this method will hand off
/// to helper methods in <class>%ML.TrainedModel</class> specific to the model's type
/// (e.g. classification or regression).</p>
Method %Validate(trainedModel As %ML.TrainedModel = "", ByRef query As %String = "", ByRef validationRunName As %String = "", using As %DynamicObject = {$$$NULLOREF}) [ Internal ]
{
}

///
/// Purge all trained models
///
Method %Purge(days = 0) As %Status
{
}

/// When deleting a model, also delete any %ML.ValidationRun, %ML.ValidationMetric,
/// %ML.TrainingRun and %ML.TrainedModel objects for this Model
Trigger DeleteTrigger [ Event = DELETE, Foreach = row/object ]
{
}

}
