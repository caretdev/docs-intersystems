/// This class contains methods used by the DeepSee Connector code generators.<br/>
/// This class should be consider to be INTERNAL to DeepSee;
/// There are no methods intended for public use.
Class %DeepSee.Connector.Generator Extends %RegisteredObject [ System = 4 ]
{

/// Does the actual work of generating classes needed to implement the Data Connector.
/// Returns property info via <var>pPropInfo</var>.
/// pPropInfo contains:<br/>
/// 	Set pPropInfo(p) = $LB(propName,displayName,propType,propIDKEY,sourceProp)
ClassMethod %GenerateConnector(pConnector As %DeepSee.Connector.connector, pClassName As %String, Output pPropInfo As %List) As %Status [ Internal ]
{
}

}
