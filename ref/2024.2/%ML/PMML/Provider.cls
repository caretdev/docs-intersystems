/// <p>This Provider does not <i>train</i> models based on a dataset, but can be used to
/// <i>import</i> a model built elsewhere and exported to the <a href="http://dmg.org/">Predictive
/// Modeling Markup Language</a> standard, as <a href="/csp/docbook/Doc.View.cls?FIND=CLASSES+%25ML.PMML.Provider">supported
/// in InterSystems IRIS</a>.</p>
/// <p>Supported USING parameters:</p>
/// <ul>
/// <li><tt>class_name</tt>: <class>%DeepSee.PMML.Definition</class> subclass containing the PMML definition</li>
/// <li><tt>file_name</tt>: directory path to a file containing the PMML definition</li>
/// <li><tt>model_name</tt>: if the PMML definition contains multiple models, optinally specify the name of the one to use</li>
/// </ul>
/// <p>Either <tt>class_name</tt> or <tt>file_name</tt> must be provided. <tt>model_name</tt> is optional</p>
Class %ML.PMML.Provider Extends %ML.Provider
{

/// Provider name
Parameter PROVIDERNAME As %String = "PMML";

///
/// Train an ML model
///
Method %BeginTraining(model As %ML.Model, data As %SQL.StatementResult, trainingrun As %ML.TrainingRun, ByRef name As %String = "", ByRef trainkey) As %Status
{
}

Method %WaitForTraining(ByRef trainkey, trainingrun As %ML.TrainingRun, ByRef trainedmodel As %ML.TrainedModel, timeoutMS As %Integer = -1) As %Status
{
}

}
