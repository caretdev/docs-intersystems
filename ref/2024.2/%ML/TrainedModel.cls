///
/// Base class for a trained model
///
Class %ML.TrainedModel Extends %Persistent [ ClassType = persistent, System = 4 ]
{

/// Base model we trained on
Property Model As %ML.Model [ Required ];

/// ML Provider that did the training
Property Provider As %String(MAXLEN = 128) [ Required ];

/// Training run
Property TrainingRun As %ML.TrainingRun;

/// Timestamp for when the model was trained (UTC)
Property TrainedAt As %TimeStamp [ InitialExpression = {$ZDATETIME($ZTIMESTAMP,3,1,3)}, Required ];

/// Trained Model name, same as the name for the cooresponding Training Run
Property ModelName As %String(MAXLEN = 275) [ Required ];

/// Model type
Property ModelType As %String(VALUELIST = ",classification,regression,timeseries");

/// Model information
Property ModelInfo As array Of %String(MAXLEN = 1024);

///
/// Bulk Predict
///
/// arguments:
/// 	tfn		 - tempfile index
/// 	argspos		 - Positions of the WithColumns in the temp rows, $list(column-positions)
/// 	predpos		 - Position of the predicted value, $list(result-column-positions)
/// 	probpos		 - Position of the probability value, $list(result-column-positions)
/// 	expr		 - expression for probability
/// returns:
/// 	$$$OK on success, otherwise a $$$ERROR(...)
///
Method %PredictAll(tfn As %Integer, argspos As %List, predpos As %List, probpos As %List = "", expr As %String = "") As %Status
{
}

///
/// Begin model operations
///
Method %Begin() As %Status [ Abstract ]
{
}

///
/// End model operations
///
Method %End() As %Status [ Abstract ]
{
}

///
/// Predict on an ML model
///
Method %Predict(data As %List, ByRef results As %List) As %Status [ Abstract ]
{
}

///
/// Predict probability on an ML model
/// Arguments:
/// 	expr:     The argument of PROBABILITY's FOR clause, defaults to 1
/// 	data:     $List of WITH clause values
/// 	results:  PBR, return value
Method %Probability(expr As %String = 1, data As %List, ByRef results As %List) As %Status [ Abstract ]
{
}

/// <p><b>Note:</b> Do not call this method directly.
/// Please refer to the SQL syntax as documented in <class>%ML.Model</class></p>
///
/// <p>This method produces <class>%ML.ValidationMetric</class> records for <b>Precision</b>,
/// <b>Recall</b>, <b>F-Measure</b> and <b>ROC-AUC</b> for this TrainedModel instance. For multi-class
/// classifications, these metrics will be calculated for every predicted field value (category),
/// as well as a micro-average across all target values. For binary classifications, these
/// metrics will only be calculated for the "positive" (1, "true" or "yes") category, or for
/// the first value encountered if no such value is found.
/// Overall <b>Accuracy</b> and <b>ROC-AUC</b> numbers are also saved.</p>
///
/// <p>A full implementation is included in this class, so there is no need for providers
/// to override anything unless there's a compelling argument on performance or breadth of
/// supported metrics to do so.</p>
Method %ValidateClassifier(query As %String, ByRef validationRun As %ML.ValidationRun, using As %DynamicObject = {$$$NULLOREF}) [ Internal ]
{
}

/// <p> Compute the area under the ROC curve for a given label <b>category</b> where
/// <p><b>modelName</b> is the name of an %ML.TrainedModel object</p>
/// <p><b>predictedCol</b> is the name of the label column</p>
/// <p><b>tblQuery</b> points to the validation table.</p>
/// <p>The output is returned in the <b>ROCAUC</b> variable.</p>
ClassMethod %GetROCAUC(modelName, category, predictedCol, validateTblQuery, Output ROCAUC) As %Status
{
}

/// <p><b>Note:</b> Do not call this method directly.</p>
/// <p>This is a utility method that accepts a SQL query and populates results into a %SQL.Statement object.</p>
ClassMethod ExecQuery(query, Output tRS As %SQL.StatementResult) As %Status [ Internal ]
{
}

/// <p><b>Note:</b> Do not call this method directly.
/// Please refer to the SQL syntax as documented in <class>%ML.Model</class></p>
///
/// <p>This method produces <class>%ML.ValidationMetric</class> records for <b>Variance</b>,
/// <b>MSE</b>, <b>RMSE</b> and <b>R²</b> for this TrainedModel instance.</p>
///
/// <p>A full implementation is included in this class, so there is no need for providers
/// to override anything unless there's a compelling argument on performance or breadth of
/// supported metrics to do so.</p>
Method %ValidateRegression(query As %String, ByRef validationRun As %ML.ValidationRun, using As %DynamicObject = {$$$NULLOREF}) [ Internal ]
{
}

/// <p><b>Note:</b> Do not call this method directly.
/// Please refer to the SQL syntax as documented in <class>%ML.Model</class></p>
///
/// <p>This method produces <class>%ML.ValidationMetric</class> records for <b>Variance</b>,
/// <b>MAPE</b>, for this TrainedModel instance.</p>
///
/// <p>A full implementation is included in this class, so there is no need for providers
/// to override anything unless there's a compelling argument on performance or breadth of
/// supported metrics to do so.</p>
Method %ValidateTimeseries(query As %String, ByRef validationRun As %ML.ValidationRun, using As %DynamicObject = {$$$NULLOREF}) [ Internal ]
{
}

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called before
/// any data is written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
Method %OnBeforeSave(insert As %Boolean) As %Status [ Private, ServerOnly = 1 ]
{
}

/// When deleting a TrainedModel, also delete any %ML.ValidationRun and %ML.ValidationMetric objects for this Model
Trigger DeleteTrigger [ Event = DELETE, Foreach = row/object ]
{
}

/// When deleting a TrainedModel Purge any cached queries that used this trained model
Trigger %DeleteTrainedModelTrigger [ Event = DELETE, Foreach = row/object ]
{
}

}
