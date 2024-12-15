/// This class implements storage for various transformation objects.
///
/// Such objects use precalculated data to perform transformation. The data is multidimensional and thus
/// can not be stored in usual way.
Class %DeepSee.extensions.BlackBox [ Abstract, System = 4 ]
{

Parameter MainSubscript = "md";

/// This callback method is invoked by the <METHOD>%Save</METHOD> method to
/// provide notification that the object is being saved. It is called after
/// the object's data has been successfully written to disk.
///
/// <P><VAR>insert</VAR> will be set to 1 if this object is being saved for the first time.
///
/// <P>If this method returns an error then the call to <METHOD>%Save</METHOD> will fail.
Method %OnAfterSave(insert As %Boolean) As %Status [ Private, ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%Delete</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> has been deleted.
/// The callback occurs immediately after %DeleteData has been called. If %DeleteData returns
/// an error then %OnAfterDelete is not called.
///
/// <P>If %OnAfterDelete returns an error (%Status) then the transaction is rolled back.
ClassMethod %OnAfterDelete(oid As %ObjectIdentity) As %Status [ Private, ServerOnly = 1 ]
{
}

/// This callback method is invoked by the <METHOD>%Open</METHOD> method to
/// provide notification that the object specified by <VAR>oid</VAR> is being opened.
///
/// <P>If this method returns an error then the object will not be opened.
Method %OnOpen1() As %Status [ Private, ServerOnly = 1 ]
{
}

ClassMethod GetDataLocation(cDef As %Dictionary.CompiledClass, Output dataName) As %Status
{
}

ClassMethod GetClassDef(Output sc As %Status) As %String
{
}

}
