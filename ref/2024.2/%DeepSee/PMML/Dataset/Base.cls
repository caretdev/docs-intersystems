Class %DeepSee.PMML.Dataset.Base Extends (%Persistent, %DeepSee.PMML.Dataset) [ Abstract, System = 4 ]
{

Property BootstrapCount As %Integer;

ClassMethod %OnDelete(oid As %ObjectIdentity) As %Status [ Private, ServerOnly = 1 ]
{
}

Method GetBootstrapInfo(Output pSQL As %String, Output pFields As %ArrayOfObjects) As %Status [ Abstract, Internal, Private ]
{
}

Method GetBootstrap(pBootstrapId As %Integer, Output pBootstrap As %DeepSee.PMML.Dataset.Bootstrap) As %Status
{
}

Method ClearBootstraps() As %Status
{
}

Method GenerateBootstraps(pCount As %Integer) As %Status
{
}

}
