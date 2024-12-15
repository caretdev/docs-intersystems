Class %DeepSee.UserLibrary.SharedCalcMember Extends (%Persistent, %DeepSee.UserLibrary.UserData)
{

Parameter XMLNAME = "sharedCalcMember";

Property FullName As %String(MAXLEN = 2000, XMLPROJECTION = "attribute") [ SqlComputeCode = { Set {FullName} = {CubeName}_"||"_{UpperCaseDimension}_"||"_{UpperCaseName}_"."_$$$DSSCMExt }, SqlComputed, Transient ];

Property Dimension As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property Name As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property Expression As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property Format As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property SolveOrder As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property CubeName As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property UpperCaseDimension As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property UpperCaseName As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Method getIdentifier() As %String
{
}

Method getFullName() As %String
{
}

}
