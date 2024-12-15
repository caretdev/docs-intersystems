///  Root element for specifying a Text Transformation model.
/// See also <class>%iKnow.TextTransformation.Definition</class>.
Class %iKnow.TextTransformation.Model.Model Extends node [ Deprecated, System = 3 ]
{

///  Logical name for this model
Property name As %String(XMLPROJECTION = "ATTRIBUTE");

///  Name of the output class to be populated when executing this model.
/// This class should inherit from <class>%iKnow.TextTransformation.Output</class> and, the model is
/// to be applied in batch, also from <class>%Persistent</class>.
Property outputClass As %String(XMLPROJECTION = "ATTRIBUTE");

///  Ordered list of atomic annotate and transform operations that make up this model.
Property Operations As list Of Operation(XMLITEMNAME = "Operation", XMLPROJECTION = "WRAPPED");

///  Reference to a set of candidate key strings for identifying key-value pairs.
Property KeySet As SetReference;

///  Reference to a set of candidate header strings for identifying sections.
Property HeaderSet As SetReference;

Method %ToString(Output pString As %String, pFormatted As %Boolean = 1) As %Status
{
}

Method %SaveToClass(pClassName As %String, pOverwriteExisting As %Boolean = 1, pVerbose As %Boolean = 0, pCompile As %Boolean = 1) As %Status
{
}

}
