Class %DeepSee.PMML.Dataset.Field Extends %SerialObject [ System = 4 ]
{

Property Name As %String(MAXLEN = 200);

Property DisplayName As %String(MAXLEN = 200);

Property Spec As %String(MAXLEN = 200);

Property DataType As %DeepSee.PMML.Datatype.DataType;

Property OpType As %DeepSee.PMML.Datatype.OpType;

Method %OnNew(pName As %String = "", pSpec As %String = "", pDataType As %String = "", pOpType As %String = "", pDisplayName As %String = "") As %Status [ Private, ServerOnly = 1 ]
{
}

}
