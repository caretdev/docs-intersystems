Class %DeepSee.PMML.Definition.Models.NeuralNetwork Extends AbstractModel [ System = 3 ]
{

Property activationFunction As %DeepSee.PMML.Datatype.String(VALUELIST = ",threshold,logistic,tanh,identity,exponential,reciprocal,square,Gauss,sine,cosine,Elliot,arctan,rectifier,radialBasis", XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property normalizationMethod As %DeepSee.PMML.Datatype.String(VALUELIST = ",none,simplemax,softmax", XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "none" ];

Property threshold As %DeepSee.PMML.Datatype.RealNumber(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = 0 ];

Property width As %DeepSee.PMML.Datatype.RealNumber(XMLPROJECTION = "ATTRIBUTE");

Property altitude As %DeepSee.PMML.Datatype.RealNumber(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = 1 ];

Property numberOfLayers As %DeepSee.PMML.Datatype.IntNumber(MINVAL = 0, XMLPROJECTION = "ATTRIBUTE");

Property MiningSchema As %DeepSee.PMML.Definition.MiningSchema(XMLPROJECTION = "ELEMENT") [ Required ];

Property Output As %DeepSee.PMML.Definition.Output(XMLPROJECTION = "ELEMENT");

Property ModelStats As %DeepSee.PMML.Definition.ModelStats(XMLPROJECTION = "ELEMENT");

Property ModelExplanation As %DeepSee.PMML.Definition.ModelExplanation(XMLPROJECTION = "ELEMENT");

Property Targets As %DeepSee.PMML.Definition.Targets(XMLPROJECTION = "ELEMENT");

Property LocalTransformations As %DeepSee.PMML.Definition.LocalTransformations(XMLPROJECTION = "ELEMENT");

Property NeuralInputs As %DeepSee.PMML.Definition.Models.NeuralNetwork.NeuralInputs(XMLPROJECTION = "ELEMENT");

Property Layers As list Of %DeepSee.PMML.Definition.Models.NeuralNetwork.NeuralLayer(XMLNAME = "NeuralLayer", XMLPROJECTION = "ELEMENT");

Property NeuralOutputs As %DeepSee.PMML.Definition.Models.NeuralNetwork.NeuralOutputs(XMLPROJECTION = "ELEMENT");

Property ModelVerification As %DeepSee.PMML.Definition.ModelVerification(XMLPROJECTION = "ELEMENT");

Property Extension As list Of %DeepSee.PMML.Definition.Extension(XMLPROJECTION = "ELEMENT");

ClassMethod %GetModelClass() As %String [ Internal ]
{
}

Method %OnValidateNames(ByRef pDictionary) As %Status
{
}

/// Adds node-specific validation checks
Method %OnValidateObject(force As %Integer) As %Status [ Private, ServerOnly = 1 ]
{
}

}
