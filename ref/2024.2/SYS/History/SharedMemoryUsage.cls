/// Class to define an individual shared memory consumer for use
/// with the SYS.History.SharedMemoryData class, which in turn
/// is called by the application monitor (%Monitor.System.HistoryMemory).
Class SYS.History.SharedMemoryUsage Extends %SerialObject [ System = 4 ]
{

/// Time of sample
Property DateTime As %TimeStamp [ SqlColumnNumber = 2 ];

/// Name of SMH Consumer
Property ConsumerName As %String [ SqlColumnNumber = 3, SqlFieldName = ConsumerName ];

/// Number of SMH Consumer
Property ConsumerID As %Integer [ SqlColumnNumber = 4, SqlFieldName = ConsumerID ];

/// Shared Memory Allocated
Property Allocated As %Integer [ SqlColumnNumber = 5, SqlFieldName = Allocated ];

/// Shared Memory Available
Property Available As %Integer [ SqlColumnNumber = 6, SqlFieldName = Available ];

/// Shared Memory Used
Property Used As %Integer [ SqlColumnNumber = 7, SqlFieldName = Used ];

/// Static Memory Table Used
Property SMTUsed As %Integer [ SqlColumnNumber = 8, SqlFieldName = SMTUsed ];

/// General String Table Used
Property GSTUsed As %Integer [ SqlColumnNumber = 9, SqlFieldName = GSTUsed ];

/// Total Memory used
Property TotalUsed As %Integer [ SqlColumnNumber = 10, SqlFieldName = TotalUsed ];

}
