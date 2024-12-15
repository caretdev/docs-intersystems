/// This class represents detailed system metrics captured for global buffering.
/// Each instance of the class represents a different buffer size, e.g. 2k, 8k, etc.
/// <br><br>
/// The current values for each class instance may be fetched using the Query
/// 'Sample', and then the current value of each property can be accessed.
/// <br><br>
/// For example:
/// <example>
/// s prop="Size,NumSize,BatchQ,Interact,MaxInteract,MinReQ,MinReQB,ReQCnt,ReQCntB,WrtQSz,OffLRUCnt,WrtSz,WrtMax,Avail,Min,MinB" ; list of properties
/// s rset=##class(%ResultSet).%New("SYS.Stats.Buffer:Sample")
/// d rset.Execute()
/// s len=$l(prop,",")
/// ; list all resources and related seize counts
/// while rset.Next() {
/// 	f i=1:1:len w rset.Data($p(prop,",",i)) w:i<len ","
/// 	w !
/// }
/// </example>
/// <br>
/// Global buffer metrics with instances for different buffer sizes, 2k, 8k etc.
Class SYS.Stats.Buffer Extends SYS.WSMon.wsResource [ System = 4 ]
{

/// The buffer size for this queue, e.g. 2K, 8K, etc.
Property Size As %Integer;

/// The number of buffers of this size
Property NumSize As %Integer;

/// The offset to the start of the LRU queue
Property BatchQ As %Integer;

/// The current number of buffers in interactive portion of LRU queue
Property Interact As %Integer;

/// The max number of buffers in interactive portion of LRU queue
Property MaxInteract As %Integer;

/// The threshold for re-queueing a buffer (interactive)
Property MinReQ As %Integer;

/// The threshold for re-queueing a buffer (batch)
Property MinReQB As %Integer;

/// The number of buffers requeued in the interactive LRU queue
Property ReQCnt As %Integer;

/// The number of buffers requeued in the batch LRU queue
Property ReQCntB As %Integer;

/// The current number of interactive buffers queued to be written
Property WrtQSz As %Integer;

/// The number of buffers removed from LRU queue
Property OffLRUCnt As %Integer;

/// The Number of buffers in current write cycle
Property WrtSz As %Integer;

/// The threshold for waking write demon (interactive)
Property WrtMax As %Integer;

/// The current number of available buffers (interactive)
Property Avail As %Integer;

/// The threshold for no updaters to enter global module (interactive)
Property Min As %Integer;

/// The threshold for no updaters to enter global module (batch)
Property MinB As %Integer;

/// Sample counters for all Buffer sizes
ClassMethod SampleExecute(ByRef qHandle As %Binary) As %Status
{
}

ClassMethod SampleClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = SampleExecute ]
{
}

ClassMethod SampleFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = SampleExecute ]
{
}

/// Instantiate the class for a particular size and fill in current values for all properties.
/// 'Size' should be one of 8192, 16384, 32768, 65536
/// If there are no buffers of the requested size, then NumSize will be zero.
/// <br><br>
/// Allows for XML output of a single Buffer instance.
ClassMethod Sample(Size As %Integer) As SYS.Stats.Buffer
{
}

}
