/// Utilities used by Management Portal Sharding.
Class %CSP.UI.Portal.Sharding.Utils Extends %RegisteredObject [ Abstract, System = 4 ]
{

Parameter DOMAIN = "%Utility";

Property iTimeoutInterval As %ZEN.Datatype.integer [ InitialExpression = 500 ];

Property msgWait As %ZEN.Datatype.string;

/// Returns current state of sharding. If pService("ECP") and pService("Sharding") both equal to 1, then sharding is enabled.
ClassMethod IsShardingEnabled(Output pService) As %Boolean
{
}

/// Validate the control value. pass is either "true" or "false" indicating if there is already a field that failed validation.
/// Type is "N" for numeric or "S" for string. If numeric, if checkRange is true, we additionally validate that the number is
/// between minVal and maxVal, inclusive.
ClientMethod validateRequired(ctl, pass, type, checkRange, minVal, maxVal) As %Boolean [ Language = javascript ]
{
}

/// Check job status for Assign, Reassign, Activate and Verify Shard.
ClassMethod CheckJobStatus(PID) As %ZEN.proxyObject [ ZenMethod ]
{
}

ClassMethod GetNamespaceLists(Output valueList, Output displayList, Output defaultDM)
{
}

ClassMethod GetShardList(Output valueList, Output displayList)
{
}

}
