Class %DeepSee.PMML.Definition.Models.TextModel Extends AbstractModel [ System = 3 ]
{

Property numberOfTerms As %DeepSee.PMML.Datatype.IntNumber(MINVAL = 0, XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property numberOfDocuments As %DeepSee.PMML.Datatype.IntNumber(MINVAL = 0, XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property MiningSchema As %DeepSee.PMML.Definition.MiningSchema(XMLPROJECTION = "ELEMENT") [ Required ];

Property Output As %DeepSee.PMML.Definition.Output(XMLPROJECTION = "ELEMENT");

Property ModelStats As %DeepSee.PMML.Definition.ModelStats(XMLPROJECTION = "ELEMENT");

Property ModelExplanation As %DeepSee.PMML.Definition.ModelExplanation(XMLPROJECTION = "ELEMENT");

Property Targets As %DeepSee.PMML.Definition.Targets(XMLPROJECTION = "ELEMENT");

Property LocalTransformations As %DeepSee.PMML.Definition.LocalTransformations(XMLPROJECTION = "ELEMENT");

Property Dictionary As %DeepSee.PMML.Definition.Models.Text.Dictionary(XMLNAME = "TextDictionary", XMLPROJECTION = "ELEMENT");

Property Corpus As %DeepSee.PMML.Definition.Models.Text.Corpus(XMLNAME = "TextCorpus", XMLPROJECTION = "ELEMENT");

Property DocumentTermMatrix As %DeepSee.PMML.Definition.Models.Text.DocumentTermMatrix(XMLPROJECTION = "ELEMENT");

Property Normalization As %DeepSee.PMML.Definition.Models.Text.Normalization(XMLNAME = "TextModelNormalization", XMLPROJECTION = "ELEMENT");

Property Similarity As %DeepSee.PMML.Definition.Models.Text.Similarity(XMLNAME = "TextModelSimilarity", XMLPROJECTION = "ELEMENT");

Property ModelVerification As %DeepSee.PMML.Definition.ModelVerification(XMLPROJECTION = "ELEMENT");

Property Extension As list Of %DeepSee.PMML.Definition.Extension(XMLPROJECTION = "ELEMENT");

/// Adds node-specific validation checks
Method %OnValidateObject(force As %Integer) As %Status [ Private, ServerOnly = 1 ]
{
}

Method %OnValidateNames(ByRef pDictionary) As %Status
{
}

}
