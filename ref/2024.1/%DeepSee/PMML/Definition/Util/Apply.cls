Class %DeepSee.PMML.Definition.Util.Apply Extends (AbstractExpression, %DeepSee.PMML.Definition.extendableNode) [ System = 3 ]
{

Property function As %DeepSee.PMML.Datatype.String(XMLPROJECTION = "ATTRIBUTE") [ Required ];

Property mapMissingTo As %DeepSee.PMML.Datatype.String(XMLPROJECTION = "ATTRIBUTE");

Property invalidValueTreatment As %DeepSee.PMML.Datatype.InvalidValueTreatmentMethod(XMLPROJECTION = "ATTRIBUTE") [ InitialExpression = "returnInvalid" ];

Property defaultValue As %DeepSee.PMML.Datatype.String(XMLPROJECTION = "ATTRIBUTE");

Property Expressions As list Of AbstractExpression(XMLPROJECTION = "ELEMENT", XMLTYPECONSTRAINT = "CHOICE");

Method %ValidateNames(ByRef pDictionary) As %Status
{
}

/// Returns the COS code to compute this expression. Sets <var>pInline</var> to 1 if the returned
/// string can simply be nested in an enclosing expression. If <var>pInline</var> = 0, the code
/// returned is assumed to populate a variable <var>tValue</var>, with each line prepended with
/// appropriate whitespace to allow simple compilation.
Method %GetComputeCode(Output pInline As %Boolean = 0, pOverrideSource As %String = "", pThis As %String = ".", pArrayFormat As %Boolean = 0) As %String
{
}

Method %GetInputFields(ByRef pFields) As %Status [ Internal ]
{
}

}
