///
/// Class for a trained AutoML model instance
///
Class %ML.AutoML.TrainedModel Extends %ML.TrainedModel [ ClassType = persistent ]
{

/// Serialized model state
Property ModelState As %Stream.GlobalCharacter;

/// Provider instance
Property automlprovider As %ML.AutoML.Provider [ Internal, Transient ];

/// AutoML model
Property modelinstance As %SYS.Python [ Internal, Transient ];

/// Cached column names
Property WithColumnNames As %List [ Internal ];

/// Cached column types
Property WithColumnTypes As %List [ Internal ];

/// Python Column Info
Property columnnames As %SYS.Python [ Internal, Transient ];

/// Profiler
Property profiler As %SYS.Python [ Internal, Transient ];

///
/// Factory method to create a trained model
///
ClassMethod %CreateTrainedModel(provider As %ML.AutoML.Provider, trainingrun As %ML.TrainingRun, ByRef trainedmodel As %ML.AutoML.TrainedModel) As %Status
{
}

///
/// Load a serialized model
///
Method %LoadModel() As %Status
{
}

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
Method %PredictAll(tfn As %Integer, argspos As %List, predpos As %List, probpos As %List = "", expr As %String = "", mtorder As %List, mtunary As %List) As %Status
{
}

///
/// Begin trained model operations
///
Method %Begin() As %Status
{
}

///
/// End trained model operations
///
Method %End() As %Status
{
}

///
/// Predict on an ML model
///
Method %Predict(data As %List, ByRef results As %List) As %Status
{
}

///
/// Predict probability on an ML model
/// Arguments:
/// 	expr:     The argument of PROBABILITY's FOR clause, defaults to 1
/// 	data:     $List of WITH clause values
/// 	results:  PBR, return value
Method %Probability(expr As %String = 1, data As %List, ByRef results As %List) As %Status
{
}

}
