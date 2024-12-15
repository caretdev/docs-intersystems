/// Implements the QuickML provider
Class %ML.DR.Provider Extends %ML.Provider
{

/// Provider name
Parameter PROVIDERNAME As %String = "DR";

/// Java objects:
Property datarobot As %Net.Remote.Object;

Parameter SQLTYPE As %String [ Constraint = "resultset,query", Flags = ENUM ] = "query";

///
/// Adds the default settings for DR to the settings dynamic object
///
ClassMethod %GetDefaultSettings(ByRef settings As %DynamicObject)
{
}

/// Opens JavaGateway and creates the Java objects for H2O
Method %OnInit() As %Status
{
}

/// Create a ML model
Method %CreateModel(modelName As %String, ByRef model As %ML.Model, ByRef params) As %Status
{
}

///
/// Returns an instance of %SQL.Statement to be used for the training query
///
Method %GetTrainStatement() As %SQL.Statement
{
}

/// Train a DR model
/// data argument is not used for IoC providers
/// name is no longer used.  trainingrun.name is already defined
Method %BeginTraining(model As %ML.Model, data As %SQL.StatementResult, trainingrun As %ML.TrainingRun, ByRef name As %String = "", ByRef trainkey) As %Status
{
}

///
/// Check for training complete
///
Method %WaitForTraining(ByRef trainkey, trainingrun As %ML.TrainingRun, ByRef trainedmodel As %ML.TrainedModel, timeoutMS As %Integer = -1) As %Status
{
}

}
