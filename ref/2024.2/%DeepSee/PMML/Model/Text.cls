Class %DeepSee.PMML.Model.Text Extends %DeepSee.PMML.Model.AbstractModel [ Abstract, System = 4 ]
{

Parameter DOCCOUNT As INTEGER;

Parameter TERMCOUNT As INTEGER;

Parameter TRACEWEIGHTTYPE = "add";

Parameter SIMILARITYMETRIC As STRING;

Property Indexer As %iKnow.Indexer [ Internal, Private ];

Property DocTermMatrix [ MultiDimensional ];

/// Returns a vector containing the weighed frequency values for the query terms,
/// using the information in this TextModel's Dictionary.
Method GetQueryVector(pInput As %DeepSee.PMML.ModelInput, Output pVector) As %Status [ Abstract, Internal ]
{
}

Method CreateOutput(pDoc As %Integer, pScore As %Double, Output pOutput As %DeepSee.PMML.ModelOutput) As %Status [ Abstract, Private ]
{
}

ClassMethod %CreateModelClass(pClass As %Dictionary.ClassDefinition, pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel) As %Status [ Internal ]
{
}

Method %ExecuteModelInternal(pInput As %DeepSee.PMML.ModelInput, Output pOutput As %DeepSee.PMML.ModelOutput) As %Status [ Private ]
{
}

Method GetTermsFromText(pText As %String, ByRef pTerms, Output pFrequencies, pLanguages As %String = "en") As %Status [ Internal, Private ]
{
}

ClassMethod GetTermValue(pTermId As %Integer) As %String [ Abstract, Internal ]
{
}

ClassMethod %OnGetOutputFeature(pMethod As %Stream.Object, pDefinition As %DeepSee.PMML.Definition.Models.AbstractModel, pOutputField As %DeepSee.PMML.Definition.OutputField, ByRef pFeatureValueVar As %String, Output pSupported As %Boolean) As %Status [ Internal, Private ]
{
}

}
