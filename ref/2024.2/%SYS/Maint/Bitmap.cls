/// <p>This utility is used to compact bitmap/bitslice indices.
/// Over time in a volatile table (think lots of INSERTs and DELETEs) the storage for a bitmap index may become less efficient.
/// To a lesser extent index value changes, i.e. UPDATES, can also degrade bitmap performance.
///
/// <p>This utility can by run on a live system.
/// It will loop over all bitmap/bitslice indices in a class or namespace and compact them by either removing a chunk that is all zeros or by using $BITLOGIC() to compact the bits.
///
/// <p>The Utility has 2 entry points:
///
/// <example>
/// d ##class(%SYS.Maint.Bitmap).Namespace("Samples",1,1,"2014-01-17 09:00:00")
/// </example>
/// <example>
/// d ##class(%SYS.Maint.Bitmap).OneClass("BitMap.Test",1,1)
/// </example>
///
Class %SYS.Maint.Bitmap Extends %Persistent [ Final, StorageStrategy = Default, System = 4 ]
{

/// when the last Compact was started
Property StartTime As %TimeStamp [ SqlColumnNumber = 4 ];

/// Passed in Timestamp for when the compact should stop, NULL for no stop time
/// Set to the time the compaction finshed when done.
Property StopTime As %TimeStamp [ SqlColumnNumber = 5 ];

Property ElapseTime As %Integer [ SqlColumnNumber = 6, SqlComputeCode = {s {*}=$SYSTEM.SQL.DATEDIFF("ss",{StartTime},{StopTime})}, SqlComputed, Transient ];

Property Namespace As %String(MAXLEN = 500) [ SqlColumnNumber = 2 ];

/// Namspace that was compacted
/// Last Class Compacted, if NULL then it finished all the classes.
Property ClassName As %String(MAXLEN = 500) [ SqlColumnNumber = 11 ];

/// Last Index Compacted, if NULL then it finished all the indices.
Property IndexName As %String(MAXLEN = 500) [ SqlColumnNumber = 12 ];

/// count of how many indices were compacted
Property NumberCompressed As %Integer [ InitialExpression = 0, SqlColumnNumber = 7 ];

/// current status of the compaction
/// 		Running -  Compaction is underway
/// 		Stopped -  Compaction reached the Duration limit before finishing all Classes or encountered an error
/// 		Finished - Compaction completed.
Property Status As %String [ SqlColumnNumber = 3 ];

/// Message contains error info and lists of global that were skipped because they where not in the local DB
Property Message As array Of %String(MAXLEN = 30000) [ SqlColumnNumber = 13 ];

Property OldSize As %Integer [ InitialExpression = 0, SqlColumnNumber = 9 ];

Property NewSize As %Integer [ InitialExpression = 0, SqlColumnNumber = 10 ];

Property CompressionAmount As %String [ SqlColumnNumber = 8, SqlComputeCode = { s {*}=$s(+{OldSize}=0:0,1:$FN(1-({NewSize}/{OldSize})*100,"",2)_" %")}, SqlComputed, Transient ];

/// <p>Entry point to compact all bitmaps in a namespace.
/// <br>Each run records its' status in this class
/// <br>If the last run did not finish then it will pick up where it stopped
/// <br>This utility will only Compact globals in the default database
/// <p>Parameters:
/// <ul>
/// <li> 		ns - Namespace you want to compact</li>
/// <li>		NoJournal - Stop journaling for this Process</li>
/// <ul>
/// <li>					1 to Stop Journaling</li>
/// <li> 					0 to continue Journaling default = 0</li>
/// </ul>
/// <li>		Display - write info to the current device </li>
/// <ul>
/// <li>					1 to write to the device</li>
/// <li>					0 to not write to the device default = 0</li>
/// </ul>
/// <li>		StopTime - Timestamp for when the utility should stop.</li>
/// <ul>
/// 	<li>					The stop time is tested after each index is finished so it could go over.</li>
/// <li>					A value of NULL means not limit</li>
/// </ul>
/// </ul>
ClassMethod Namespace(ns As %String = "", NoJournal As %Boolean = 0, Display As %Boolean = 0, StopTime As %TimeStamp = "") As %Status [ PublicList = (ClassName, status), SqlProc ]
{
}

/// <p>Entry point to compact all bitmaps in one class.
/// <br>Each run records its' status in this class
/// <br>This utility will only Compact globals in the default database
/// <p>Parameters:
/// <ul>
/// <li> 		ClassName - Class you want to compact
/// <li>		NoJournal - Stop journaling for this Process
/// <ul>
/// <li> 						1 to Stop Journaling
/// <li>						0 to continue Journaling default = 0
/// </ul>
/// <li>		Display - 	write info to the current device
/// <ul>
/// <li> 						1 to write to the device
/// <li>						0 to not write to the device default = 0
/// </ul>
/// <li>		StopTime - 	Timestamp for when the utility should stop.  The stop time is tested after each index is finished so it could go over.
/// <ul>
/// <li> 						a value of NULL means not limit
/// </ul>
/// <li>		StatusObj - This is either passed in from the Namespace Method or is defined in this method.
/// <ul>
/// <li> 						This value should not be passed in if you are calling this method directly
/// </ul>
/// </ul>
ClassMethod OneClass(ClassName As %String, NoJournal As %Boolean = 0, Display As %Boolean = 0, StopTime As %TimeStamp = "", StatusObj As %RegisteredObject = "") As %Status [ PublicList = (ClassName, IndexName, StorageID, StorageType), SqlProc ]
{
}

ClassMethod CompactMap(ClassName As %String, MapName As %String, Display As %Boolean, StatusObj As %RegisteredObject) As %Status [ Private ]
{
}

/// <p>  This method compacts any global bitmap
/// <br> Called from CompactMap or CompactMapSQL it takes 3 parameters
/// <ul>
/// <li>    global  - is the root for this index, for example ^Sample.PersonI("NameIndex")
/// <li>    vars    - is the number of subscripts we need to $ORDER() over
/// <li>    current - is the subscript level we are presently on
/// </ul>
/// <p>  Once we get tot he final subscript level we execute the compat code.
///
ClassMethod CompactGlobal(global As %String, vars As %Integer, current As %Integer, ByRef v As %String, Display As %Boolean = 0, StatusObj As %RegisteredObject) As %Status [ Private, PublicList = v ]
{
}

}
