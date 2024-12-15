Class %SYSTEM.Context.SQL Extends %SystemBase
{

/// Cached Query Lock Timeout
Property CQLockTimeout As %Integer;

Property externalGateways As %SQL.External.Gateway [ MultiDimensional ];

/// ShardIDRange is an array of extent names used for allocating rowid values for Sharded=2 tables.  data is $lb(beginrange,endrange,offset)<br>
Property ShardIDRange As %RawString [ MultiDimensional ];

/// ShardAIRange is an array of extent names used for allocating auto_increment field values for Sharded=2 tables.  data is $lb(beginrange,endrange,offset)<br>
Property ShardAIRange As %RawString [ MultiDimensional ];

/// RTC is an array of trigger names used for statement level recursive trigger call checking.<br>
/// RTC = recursive trigger check
Property RTC As %RawString [ MultiDimensional ];

Property TSQLAnsiNulls As %Integer;

Property TSQLAnsiPadding As %Integer;

Property TSQLAnsiWarnings As %Integer;

Property TSQLCaseInsCompare As %Integer;

Property TSQLNoCount As %Integer;

Property TSQLQuotedIdentifier As %Integer;

Property contextStack As %String(MAXLEN = "") [ MultiDimensional ];

Property Stats As %String [ MultiDimensional ];

/// Feature Tracker Keys for features tracked under the SQL/IntegratedML/xDBC umbrella
Property FTKeys As %String [ MultiDimensional ];

/// PredictModelOref holds an oref for the ML Model for each PREDICT function in the statement
Property PredictModelOref As %RawString [ MultiDimensional ];

/// PredictTrainedModelOref holds an oref for the ML TrainedModel for each PREDICT function in the statement
Property PredictTrainedModelOref As %RawString [ MultiDimensional ];

/// ShardExecIUDArgs is used to hold the arguments for the %BigData.ShardedSQL.%ExecIUD method when the SQL Statement has more than 379 parameters.
Property ShardExecIUDArgs As %String [ MultiDimensional ];

/// ShardMasterExtRef is  used to hold the extended reference for the constraint lock syntax to use for this namespace.
/// Since subscript is the namespace name.
Property ShardMasterExtRef As %RawString [ MultiDimensional ];

/// ShardNumber is used to hold the shard number of the current namespace if this is a sharded namespace
/// Subscript is the namespace name.
Property ShardNumber As %RawString [ MultiDimensional ];

/// This can be set to true to disable time based collection of SQL stats
Property DisableStatCollection As %Boolean [ InitialExpression = 0 ];

/// This is the default %SYS.ML.Configuration for this process
Property MLConfiguration As %String(MAXLEN = 256);

/// A version counter used to ensure that this object is loaded/instantiated with
/// the most recent property values.
Property Version As %Integer;

Method DisableStatCollectionSet(val As %Boolean) As %Status
{
}

/// pushState will push the current state of the Context.SQL singleton onto the contextStack.
/// This method is not normally invoked directly. It is normally called by a utility class method to push a context.
Method pushState() As %Status
{
}

/// popState will restore the state of the Context.SQL singleton from the top of the contextStack and remove
/// the top stack element.
/// This method is not normally invoked directly. It is normally called by a utility class method to pop a context.
Method popState() As %Status
{
}

Method %OnNew() As %Status [ Private, ServerOnly = 1 ]
{
}

Method %OnClose() As %Status [ Private ]
{
}

/// Remove any SQL stats we have aggregated so far
Method ClearStats() As %Status
{
}

/// Store any SQL stats we have collected so far.
/// Normally done automatically at regular time intervals but can be forced by calling this method.
Method SaveStats() As %Status
{
}

/// language is only used if the gateway is not already defined
Method getGateway(gatewayName As %String, language As %String) As %RawString
{
}

/// Return a cached gateway connection, null if nothing is cached
Method getCachedGateway(serverName As %String) As %RawString
{
}

}
