/// Cluster-specific Information
Class %SYS.ClusterInfo Extends %RegisteredObject [ System = 4 ]
{

/// Is the system part of a cluster or not
ClassMethod IsMember() As %Boolean [ CodeMode = expression ]
{
}

/// True when this system is the cluster master
ClassMethod IsMaster() As %Boolean
{
}

/// Return node name of the current master in the cluster.<br>
/// Returned null string if this system is not a cluster member.
ClassMethod MasterNodeName() As %String
{
}

ClassMethod NodeStatus() As %String [ Internal ]
{
}

/// Swap the Hostname and IP fields in a CluNodeInfoD-delimited node info string
/// <em>if</em> Hostname does NOT contain commas, the delimiter we will use.
/// On exit, also convert the delimiter from CluNodeInfoD to comma.
ClassMethod NodeInfoConvert(NodeInfo As %String) As %String [ Internal ]
{
}

/// Return by reference the info piece about the cluster node of the given CSN,
/// converted to a comma-delimited string (for backward compatibility) <br>
/// Return code: <ul><li>
/// 0 if there no cluster node of CSN (that is alive at the moment) - NodeInfo is undefined; </li><li>
/// 1 if the cluster node of CSN is the first piece (meaning it is the local node); </li><li>
/// n>1 if the cluster node of CSN is the n-th piece (n has no particular meaning).</li></ul>
ClassMethod FindNode(CSN As %Integer, ByRef NodeInfo As %String) As %Integer [ Internal ]
{
}

/// Return by reference an array of info pieces about all cluster nodes (that are currently alive) <br>
/// The array NodeInfo is indexed by csn, with the value of each element being
/// a comma-delimited string containing the info about the node of csn.<br>
/// The value of the top node NodeInfo is the csn of the local node <br>
/// Return code: the number of nodes in the cluster (that are alive at the moment)
ClassMethod GetNodes(ByRef NodeInfo As %String, NoConvert As %Boolean = 0, SkipSelf As %Boolean = 0) As %Integer [ Internal ]
{
}

/// Returns information about member nodes of the cluster using DNS resolution of the members' hostnames.
/// If SkipSelf = 1, skip the node where the query is run
ClassMethod NodeListExecute(ByRef qHandle As %Binary, SkipSelf As %Boolean = 0) As %Status
{
}

ClassMethod NodeListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status
{
}

ClassMethod NodeListClose(ByRef qHandle As %Binary) As %Status
{
}

}
