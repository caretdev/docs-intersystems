/// The %SYSTEM.Config.SharedMemoryHeap class provides an interface to return amount of shared memory heap used by InterSystems IRIS instance.<br>
/// It also provides API to get available shared memory heap and recommended shared nemory heap parameter for configuration.
Class %SYSTEM.Config.SharedMemoryHeap Extends %SYSTEM.Help [ System = 4 ]
{

/// Default Localization Domain
Parameter DOMAIN = "%Utility";

/// <p>Print out the shared memory heap usage in InterSystems IRIS instance.
ClassMethod DisplayUsage() As %Status [ Final, Internal ]
{
}

/// <p>Return available shared memory heap in bytes
/// <p>This returns a string in <b>total,pages,smt,genstrtab</b> format.<br>
/// <b>total</b> - total shared memory heap available including <b>pages,smt,genstrtab</b>.<br>
/// <b>pages</b> - total available shared memory heap pages(in bytes).<br>
/// <b>smt</b> - total available memory in SMT table.<br>
/// <b>genstrtab</b> - total available memory in General String Table.<br>
ClassMethod FreeCount() As %String [ CodeMode = expression ]
{
}

/// Return recommended configuration size for specific consumer.
/// The NumProcess argument is for CIDPIDTable consumer to esitmate
/// the memory required for specific maximum number of processes.
ClassMethod GetConfigSize(ConsumerID As %Integer = 0, NumProcess As %Integer = 0) As %Integer [ CodeMode = expression, Internal ]
{
}

/// Get description for the specific Consumer.
ClassMethod GetDescription(ConsumerID As %Integer = 0) As %String [ CodeMode = expression, Internal ]
{
}

/// Get number of current available SMH pages.
ClassMethod GetFreePage() As %Integer [ CodeMode = expression, Internal ]
{
}

/// Return defined MaxConsumerID value.
ClassMethod GetMaxConsumerID() As %Integer [ Internal ]
{
}

/// Return number of pages of shared memory heap configured
ClassMethod GetMaxPage() As %Integer [ CodeMode = expression, Internal ]
{
}

/// Return amount size (in bytes) of each shared memory heap page.
ClassMethod GetPageSize() As %Integer [ CodeMode = expression, Internal ]
{
}

/// Get threshold for specific Surrender stage.
/// The threshold is number of SMH pages.
ClassMethod GetStageThreshold(Stage As %Integer = 1) As %Integer [ CodeMode = expression, Internal ]
{
}

/// Get current Surrender stage.
ClassMethod GetSurrenderStage() As %Integer [ CodeMode = expression, Internal ]
{
}

/// Get/Set threshold for job to coalesce string table.
/// It returns current value before new value is set. If NewValue is not specified threshold is not changed.
ClassMethod JobCoalesceThreshold(NewValue As %Integer) As %Integer [ CodeMode = expression, Internal ]
{
}

/// Get/Set threshold for clean daemon to log coalescing messages.
/// It returns current value before new value is set. If NewValue is not specified threshold is not changed.
ClassMethod DaemonLogThreshold(NewValue As %Integer) As %Integer [ CodeMode = expression, Internal ]
{
}

/// Return the current amount of used SMH memory for specific consumer.
/// It returns a string with following information, they are separated by ','.:
/// 	 Total SMH pages allocated.
/// 	 Total SMT memory used.
/// 	 Total GST memory used.
/// 	 Total memory used within the allocated SMH pages.
ClassMethod GetUsage(ConsumerID As %Integer = 0) As %String [ CodeMode = expression, Internal ]
{
}

/// Return the total SMH memory used, SMH pages allocated and configured SMH memory.
/// It returns a string with following information, they are separated by ',' and all the units are in byte.:<br>
/// 	 Total SMH memory used.<br>
/// 	 Total SMH pages allocated.<br>
/// 	 Total SMH memory configured.
ClassMethod GetUsageSummary() As %String [ Final ]
{
}

/// Return configured shared memory heap in bytes.
ClassMethod MaxCount() As %Integer [ CodeMode = expression ]
{
}

/// Returns a recommended amount of shared memory heap to be configured in
/// kilobytes.  This is based on the current utilization of shared memory heap
/// but does not accurately predict future needs.
ClassMethod RecommendedSize(NumberOfProcess As %Integer = 0) As %Integer [ Deprecated, Final ]
{
}

/// Set threshold for specific Surrender stage.
/// The threshold is number of SMH pages.
ClassMethod SetStageThreshold(Stage As %Integer = 1, NewVal As %Integer) As %Integer [ CodeMode = expression, Internal ]
{
}

/// This function start Surrender SMH memory for specific or all consumers.
/// ConsumerID = -1 for all consumers. The stage could be 1 or 2.
ClassMethod Surrender(ConsumerID As %Integer = -1, Stage As %Integer = 1) As %Status [ CodeMode = expression, Internal ]
{
}

/// Return Usage of shared memory heap for each consumer.
ClassMethod UsageQueryExecute(ByRef qHandle As %Binary, ConsumerID As %Integer = -1) As %Status [ Internal ]
{
}

ClassMethod UsageQueryClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = UsageQueryExecute ]
{
}

ClassMethod UsageQueryFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = UsageQueryExecute ]
{
}

/// Return Usage of shared memory heap for each consumer.
ClassMethod WebListExecute(ByRef qHandle As %Binary) As %Status [ Internal ]
{
}

ClassMethod WebListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = UsageQueryExecute ]
{
}

ClassMethod WebListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = UsageQueryExecute ]
{
}

}
