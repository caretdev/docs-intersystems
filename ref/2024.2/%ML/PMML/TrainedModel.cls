Class %ML.PMML.TrainedModel Extends %ML.TrainedModel
{

Property PMMLClassName As %String;

Property PMMLModelName As %String;

Property PMMLModelInstance As %DeepSee.PMML.Model.AbstractModel [ Internal, Private, Transient ];

Property PMMLModelInputMap [ Internal, MultiDimensional, Private, Transient ];

///
/// Begin model operations
///
Method %Begin() As %Status
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
///
Method %Probability(expr As %String = 1, data As %List, ByRef results As %List) As %Status
{
}

///
/// End model operations
///
Method %End() As %Status
{
}

///
/// Bulk Predict
///
Method %PredictAll(tfn As %Integer, argspos As %List, predpos As %List = "", probpos As %List = "", expr As %String = "") As %Status
{
}

}
