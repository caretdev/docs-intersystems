Class %DeepSee.UserLibrary.NamedFilter Extends (%Persistent, %DeepSee.UserLibrary.UserData)
{

Parameter XMLNAME = "namedFilter";

Property FullName As %String(MAXLEN = 2000, XMLPROJECTION = "attribute") [ SqlComputeCode = { Set {FullName} = {CubeName}_"||"_{UpperCaseName}_"."_$$$DSNFExt }, SqlComputed, Transient ];

Property Name As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property Tooltip As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property Spec As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property UpperCaseName As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property CubeName As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Method getIdentifier() As %String
{
}

Method getFullName() As %String
{
}

}
