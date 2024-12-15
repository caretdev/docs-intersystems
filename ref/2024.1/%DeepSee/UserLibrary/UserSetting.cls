Class %DeepSee.UserLibrary.UserSetting Extends (%Persistent, %DeepSee.UserLibrary.UserData)
{

Parameter XMLNAME = "userSetting";

Property FullName As %String(MAXLEN = 2000, XMLPROJECTION = "attribute") [ SqlComputeCode = { Set {FullName} = {Name}_"."_$$$DSUSExt }, SqlComputed, Transient ];

Property Name As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property Comment As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property Context As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Property Value As %String(MAXLEN = 2000, XMLPROJECTION = "attribute");

Method getIdentifier() As %String
{
}

Method getFullName() As %String
{
}

}
