Class %iKnow.Classification.Definition.Classifier Extends node [ Deprecated, System = 3 ]
{

/// An optional description for this Classifier
Property description As %String(MAXLEN = 1000, XMLPROJECTION = "ATTRIBUTE");

/// The name of the <class>%iKnow.Classification.Builder</class> class used to create this
/// classifier. (optional)
Property builderClass As %String(XMLPROJECTION = "ATTRIBUTE");

/// The list of categories this classifier will choose from.
Property Categories As list Of Category(XMLPROJECTION = "WRAPPED") [ Required ];

/// A descriptor of the terms to consider for classification.
Property TermDictionary As TermDictionary [ Required ];

/// A wrapper for all the information needed to match the document vector built based on TermDictionary
/// to the different categories this classifier is identifying.
Property ClassificationMethod As ClassificationMethod [ Required ];

/// Optional list of parameters from the Builder instance creating this definition,
/// so it can be used to restore a Builder instance from this definition to further optimize
/// or otherwise refine it.
Property BuilderParameters As list Of BuilderParameter(XMLNAME = "BuilderParameter", XMLPROJECTION = "ELEMENT");

Method %Validate() As %Status
{
}

ClassMethod %GetFromDefinition(pDefinitionClass As %String, Output pModel As %iKnow.Classification.Definition.Classifier, pValidate As %Boolean = 1) As %Status [ Internal ]
{
}

Method %ToString(Output pString As %String, pFormatted As %Boolean = 1) As %Status
{
}

Method %SaveToClass(pClassName As %String, pOverwriteExisting As %Boolean = 1, pVerbose As %Boolean = 0, pCompile As %Boolean = 1) As %Status
{
}

}
