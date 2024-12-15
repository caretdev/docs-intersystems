///
/// Implements the AutoML provider
///
Class %ML.AutoML.Provider Extends %ML.Provider
{

/// Provider name
Parameter PROVIDERNAME As %String = "AutoML";

Property initialized As %Boolean [ InitialExpression = 0 ];

Property automl As %SYS.Python [ Internal, Transient ];

Property automlts As %SYS.Python [ Internal, Transient ];

Property numpy As %SYS.Python [ Internal, Transient ];

Property pandas As %SYS.Python [ Internal, Transient ];

Property datetime As %SYS.Python [ Internal, Transient ];

Property builtins As %SYS.Python [ Internal, Transient ];

Property decimal As %SYS.Python [ Internal, Transient ];

Property cProfile As %SYS.Python [ Internal, Transient ];

Property pstats As %SYS.Python [ Internal, Transient ];

Property io As %SYS.Python [ Internal, Transient ];

///
/// Adds the default settings for AutoML to the settings dynamic object
///
ClassMethod %GetDefaultSettings(ByRef settings As %DynamicObject)
{
}

///
/// Train an ML model
///
/// name is no longer used.  trainingrun.name is already defined
Method %BeginTraining(model As %ML.Model, data As %SQL.StatementResult, trainingrun As %ML.TrainingRun, ByRef name As %String = "", ByRef trainkey) As %Status
{
}

///
/// Helper method for invoking a python method with keyword args while under I/O capture
/// 	0			:..automl.train(df, args...),
/// 				:..automlts.train(df, args...)
Method %DoTrain(df As %SYS.Python, args As %DynamicObject, timeseries As %Boolean) As %SYS.Python [ CodeMode = expression, Internal ]
{
}

///
/// Check for training complete
///
Method %WaitForTraining(ByRef trainkey, trainingrun As %ML.TrainingRun, ByRef trainedmodel As %ML.TrainedModel, timeoutMS As %Integer = -1) As %Status
{
}

///
/// Bulk Predict
///
Method %PredictAll(trainedmodel As %ML.AutoML.TrainedModel, tfn As %Integer, argspos As %List, predpos As %List, probpos As %List, expr As %String = "", mtorder As %List, mtunary As %List) As %Status
{
}

///
/// Initialize an ML provider
///
Method %OnInit() As %Status
{
}

ClassMethod %ImportPackage(pkgname As %String, Output pkg) As %Status
{
}

///
/// Start the Python profiler
///
Method %StartProfiler(options As %String, ByRef profiler As %SYS.Python) As %Status
{
}

///
/// Stop the Python profiler
///
Method %StopProfiler(profiler As %SYS.Python, ByRef sortby As %String = "CUMULATIVE", ByRef results As %String) As %Status
{
}

///
/// Convert an IRIS result set into a dataframe.<br>
/// If the label column, <var>predictingColumn</var>, is defined,then rows with missing values in the label column will be excluded from the dataframe.
///
Method %ResultSetToDataFrame(data As %SQL.StatementResult, ByRef info As %RegisteredObject, ByRef df As %RegisteredObject, ByRef count As %Integer, predictingColumn As %String) As %Status
{
}

///
/// Determine the metadata for a result set
///
ClassMethod %ResultSetMetaData(data As %SQL.StatementResult, ByRef info As %RegisteredObject, ByRef columns As %List, ByRef types As %List) As %Status
{
}

///
/// Map an automl error to a %Status
///
ClassMethod maperror(error As %String, text As %String) As %Status [ CodeMode = expression, Internal ]
{
}

///
/// Convert an IRIS temp file into Python Pandas DataFrame data
Method %TempFileToDataFrame(columns As %List, types As %List, tfn As %Integer, argspos As %List, ByRef df As %SYS.Python, ByRef count As %Integer, mtorder As %List, mtunary As %List) As %Status
{
}

///
/// Update temp file #tfn using the data in DataFrame df
/// Inputs:
/// 	tfn: Temp file number
/// 	df: a Python DataFrame
/// 	fieldnames=$lb(field1, ...): A $List of strings that indicates names of fields in df that will be added to temp file #tfn
/// 	positions=$lb(pos1, ...): A list of integers that indicates the corresponding positions of each df field in temp file #tfn
/// 	types=$lb(type1, ...): A list of integers that indicates the corresponding ObjectScript type of each df field in temp file #tfn
/// 	isPredict=$lb(predict1, ...): A list of integers that indicates if each df field is predict or probablity. If predict=1, this is predict, otherwise, probability
///
Method %DataFrameToTempFile(tfn As %Integer, df As %SYS.Python, fieldnames As %List, positions As %List, types As %List, isPredict As %List) As %Status
{
}

///
/// Update temp file #tfn using the data in DataFrame df acquired from TimeSeries predictions
/// Inputs:
/// 	tfn: Temp file number
/// 	df: a Python DataFrame
/// 	headers: IRIS table column names
/// 	pcTypes: datetime column name
///
Method %TSDataFrameToTempFile(tfn As %Integer, df As %SYS.Python, tsheaders As %SYS.Python, datetimecolumn As %String, channelColumns As %List, channelTypes As %List, mtorder As %List, mtunary As %List) As %Status
{
}

///
/// Map an IRIS type to a python type
///
Method maptype2python(type As %Integer, value) As %String [ CodeMode = expression, Internal ]
{
}

///
/// Map a Python type to IRIS
///
Method maptype2iris(type As %Integer, value) As %String [ CodeMode = expression, Internal ]
{
}

///
/// Convert a python value to an SQL string
///
Method pyval2str(pyval) As %String [ CodeMode = expression ]
{
}

}
