///
/// Base class for an ML provider
///
Class %ML.Provider Extends %RegisteredObject [ Abstract, System = 4 ]
{

/// Provider name
Parameter PROVIDERNAME As %String;

/// Default provider name
Parameter DEFAULTPROVIDER As %String = "AutoML";

/// Type of SQL TRAIN will operate on  Options are "resutset" or "query"
/// If the provider uses resultset, %Train is called with a resultset object for the query
/// If the provider uses query, %TrainQyert is called with the SQL query text
Parameter SQLTYPE As %String [ Constraint = "resultset,query", Flags = ENUM ] = "resultset";

///
/// Factory method to create an instance of an ML provider by name
///
ClassMethod %CreateProvider(name As %String = "", ByRef provider As %ML.Provider) As %Status
{
}

///
/// Look up a provider proper name
///
ClassMethod %GetProvider(name As %String = "", ByRef class As %String) As %Boolean
{
}

///
/// Returns the provider name (the class name by default)
///
Method %GetName() As %String
{
}

///
/// Returns an instance of %SQL.Statement to be used for the training query
///
Method %GetTrainStatement() As %SQL.Statement
{
}

///
/// Adds the default settings for the provider to the settings dynamic object
///
ClassMethod %GetDefaultSettings(ByRef settings As %DynamicObject)
{
}

///
/// Make sure we clean up
///
Method %OnClose() As %Status
{
}

///
/// Initialize a provider
///
Method %OnInit() As %Status
{
}

///
/// Shutdown a provider
///
Method %OnExit() As %Status
{
}

///
/// Train an ML model
///
Method %BeginTraining(model As %ML.Model, data As %SQL.StatementResult, trainingrun As %ML.TrainingRun, ByRef name As %String = "", ByRef trainkey) As %Status [ Abstract ]
{
}

///
/// Check for training complete
///
Method %WaitForTraining(ByRef trainkey, trainingrun As %ML.TrainingRun, ByRef trainedmodel As %ML.TrainedModel, timeoutMS As %Integer = -1) As %Status [ Abstract ]
{
}

}
