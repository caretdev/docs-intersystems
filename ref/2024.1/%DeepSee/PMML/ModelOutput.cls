Class %DeepSee.PMML.ModelOutput Extends %SerialObject [ Abstract, System = 4 ]
{

Property %Trace [ Internal, MultiDimensional ];

Property %AllClassProbs [ Internal, MultiDimensional ];

/// 		pArray(fieldName) = $lb(feature, targetFieldName, displayName)
ClassMethod %GetFields(Output pFields) As %Status [ Abstract ]
{
}

/// Returns the feature value of predicted field <var>pTargetField</var>. If <var>pTargetField</var>
/// is left blank, the feature value for the "last" field is returned (generally safe for models
/// predicting a single field value). Note that <var>pTargetField</var> is the name of the field
/// in the data class, not in this output class.
/// <var>pAllValues</var> contains the feature values for all fields, indexed by field name
Method %GetFeatureValue(pFeature As %String = "predictedValue", pTargetField As %String = "", Output pAllValues) As %String
{
}

/// Returns tracing information (if available) about the contribution of the input values to the
/// model's outcome.
/// Format:
/// 	pTrace(n) = $lb($lb(inputs), $lb(values), rank, [weight], [info])
Method %GetTracingInfo(Output pTrace) As %Status
{
}

Method %GetAllClassProbabilities(Output pClassProbs) As %Status [ Internal ]
{
}

}
