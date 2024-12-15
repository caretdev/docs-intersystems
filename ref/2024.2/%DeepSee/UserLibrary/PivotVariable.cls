Class %DeepSee.UserLibrary.PivotVariable Extends (%Persistent, %DeepSee.UserLibrary.UserData)
{

Parameter XMLNAME = "pivotVariable";

Property FullName As %String(MAXLEN = 2000, XMLPROJECTION = "attribute") [ SqlComputeCode = { Set {FullName} = {CubeName}_"||"_{UpperCaseName}_"."_$$$DSPVExt }, SqlComputed, Transient ];

Property Name As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property DisplayName As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property Description As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property DefaultValue As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property Context As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property Type As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property SourceType As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property SourceName As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property ValueList As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property DisplayList As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property CubeName As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property UpperCaseName As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Method getIdentifier() As %String
{
}

Method getFullName() As %String
{
}

}
