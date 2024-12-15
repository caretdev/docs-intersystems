/// Context for Shared Nothing (aka Sharding)
Class %SYSTEM.Context.SN Extends %RegisteredObject
{

Property shardingManager As %BigData.ShardingManager;

Property com As %BigData.Messaging;

Property defaultPort As %Integer;

Property messagingType As %String;

Property connectionSequence As %Integer;

Property queryIdSequence As %Integer;

Property openQueryCount As %Integer;

Property deviceNumber As %Integer [ MultiDimensional ];

Property shardServerJobs [ MultiDimensional ];

Property ECPConnections [ MultiDimensional ];

Property resolvedHostnames [ MultiDimensional ];

Property tempfilePool [ MultiDimensional ];

Property querySem1Name As %String;

Property querySemaphore1 As %SYSTEM.Semaphore;

/// ShardWorkMgr object used for queries (subscripted by query id)
Property querySqms [ MultiDimensional ];

Property semaphores [ MultiDimensional ];

Property tempFileOffsets [ MultiDimensional ];

Property queryShardMapVersions [ MultiDimensional ];

Property globalReferences As %Integer;

Property commandsExecuted As %Integer;

Property diskReadMilliseconds As %Integer;

Property groupId As %String;

Method %OnNew() As %Library.Status
{
}

}
