Class %Library.GlobalEdit Extends (%Persistent, %SYSTEM.Help) [ Inheritance = right, StorageStrategy = GlobalStorage, System = 4 ]
{

Parameter DEFAULTCONCURRENCY = 0;

/// Collation of the global.
Property Collation As %Library.Collate;

/// Directory global is located in.
Property Directory As %SysPath [ ReadOnly ];

/// Block size of the database the global is in.
Property DatabaseBlockSize As %Integer(VALUELIST = ",2048,4096,8192,16384,32768,65536") [ InitialExpression = {$$$8k}, ReadOnly ];

/// Global directory entry exists.
Property Exists As Security.Datatype.BooleanYN [ ReadOnly ];

/// First data block of the global.<br>
/// Note referencing this property causes a $D(global) and I/O to occur.
Property FirstDataBlock As %Integer [ Calculated ];

/// Growth block for the global.
Property GrowthBlock As %Integer;

/// Keep global directory attributes when deleted.
Property IsKeep As Security.Datatype.BooleanYN;

/// Global contains no data.
Property IsEmpty As Security.Datatype.BooleanYN [ ReadOnly ];

/// Name of the global.
Property Name As %String;

/// Top pointer block of the global.
Property PointerBlock As %Integer;

/// Current permission on the global.
/// This is the "RW" value that the process who has this
/// instance open has access to it.
Property Permission As Security.Datatype.Permission [ ReadOnly ];

/// Resource name of the global.
Property ResourceName As %String [ ReadOnly ];

/// System name where global resides.
Property System As %String [ ReadOnly ];

ClassMethod GetName(Directory, Prompt, Value, Obj, Min, Max, Help, Flag, Timeout) As %Integer [ Internal ]
{
}

ClassMethod LoadFields(Field, Obj, New) [ Internal ]
{
}

ClassMethod GrowthBlockPrompt(Prompt, Obj)
{
}

ClassMethod PointerBlockPrompt(Prompt, Obj)
{
}

ClassMethod CollationPrompt(Prompt, Obj)
{
}

ClassMethod IsKeepPrompt(Prompt, Obj)
{
}

/// Return the space used, and the space allocated, in a global.
/// including big string blocks
/// 'Allocated' - total size, in MB, of blocks allocated for the global.<br>
/// 'Used' - total used data, in MB, for the global.<br>
/// 'fast' - 2 : returns stochastic estimates for both 'Allocated' and 'Used' (fastest option for large globals) <br>
/// 1 : only returns exact 'Allocated' value (avoids reads of data blocks) <br>
/// 0 : returns exact values for both 'Allocated' and 'Used'.
Method GetSize(ByRef Allocated As %Integer, ByRef Used As %Integer, fast As %Integer = 0) As %Integer [ Internal ]
{
}

/// Validate the passed name is legal for a global name.
ClassMethod IsValidName(Name As %String) As %Boolean [ CodeMode = expression, Internal ]
{
}

ClassMethod InvalidateGlobalVector(Name As %String = "", Directory As %String = "") As %Status [ Internal ]
{
}

/// Open an instance of a global.
ClassMethod Open(Name As %String, Directory As %String = {$zu(12,"")}, System As %String = "", concurrency As %Integer = -1, ByRef sc As %Status = {$$$OK}) As %ObjectHandle
{
}

Method %LoadData(id As %String) As %Status [ Internal, Private ]
{
}

Method %SaveData(id As %String) As %Status [ Private ]
{
}

/// Compact a global.
/// <br>
/// PercentFull - How full each data page should be, 50-100<br>
/// MbProcessed - How many MB of the global was processed<br>
/// MbCompressed - How many MB was it compressed to<br>
/// MbToCompress - How many MB of the global to compress in this call (0=ALL)<br>
/// LastGlobalReference - Last reference, "" = completed<br><br>
/// Typical useage is as follows, which compacts the data pages
/// to 80%full, and returns the amount of data processed, and the size it was compacted to:<br><br>
/// s x=##Class(%GlobalEdit).Open("X",dbdirectory)<br>
/// s t=x.Compact(80,.CurrSize,.NewSize)<br><br>
/// Note that this function can be called repeatedly for the same global so that
/// it can be done in chunks by using the last two parameters. The following example
/// does 10MB chunks of the global at a time and accumulates and displays a status:<br><br>
/// s x=##Class(%GlobalEdit).Open("X",dbdirectory)<br>
/// s TotalCurrSize=0,TotalNewSize=0<br>
/// do {<br>
/// s t=x.Compact(80,.CurrSize,.NewSize,10,.LastReference)<br>
/// s TotalCurrSize=TotalCurrSize+CurrSize<br>
/// s TotalNewSize=TotalNewSize+NewSize<br>
/// w !,"Global "_x.Name_" processed="_TotalCurrSize_", compacted to="_TotalNewSize<br>
/// } while LastReference'=""<br>
Method Compact(PercentFull As %Integer = 90, ByRef MbProcessed As %Float, ByRef MbCompressed As %Float, MbToCompress As %Integer = 0, ByRef LastGlobalReference As %String = "") As %Status
{
}

/// Compact a global.<br>
/// See the method Compact for details on parameters.
ClassMethod CompactGlobal(Name As %String, Directory As %String = {$zu(12,"")}, PercentFull As %Integer = 90, ByRef MbProcessed As %Integer, ByRef MbCompressed As %Integer, MbToCompress As %Integer = 0, ByRef LastGlobalReference As %String = "") As %Status
{
}

/// This callback method is invoked by the <METHOD>%New</METHOD> method to
/// provide notification that a new instance of an object is being created.
///
/// <P>If this method returns an error then the object will not be created.
Method %OnNew(initvalue As %RawString) As %Status [ Private ]
{
}

/// This checks the integrity of a global.  The return value contains information about the global
Method CheckIntegrity(Silent As %Boolean) As %Status
{
}

/// This checks the integrity of a single global.  The return value contains information about the global
ClassMethod CheckGlobalIntegrity(Directory As %String = "", Name As %String, StopAfterAnyError As %Boolean) As %Status [ PublicList = errorreturn ]
{
}

Method CollationSet(Arg As %String) As %Status
{
}

/// Create a global with specified characteristics. Parameter Namespace can be a namespace or a directory.  If it is a namespace global mapping rules will apply.
ClassMethod Create(Namespace As %String = "", Name As %String, Collation As %String, GrowthBlock As %Integer, PointerBlock As %Integer, Keep As %Boolean, JournalState As %Integer, ByRef Exists As %Boolean) As %Status
{
}

Method FirstDataBlockGet() As %Integer
{
}

/// Delete a directory entry for a global if the global does not exist.<br>
/// This should be called with Switch 10 set if the global is possibly being accessed by users.<br>
/// <br>
/// Parameters:
/// <br>
/// Directory - Directory where the global lives.<br>
/// Global - Name of the global to delete the directory entry for.<br>
/// Note: You must have write access to the database to delete the directory entry.<br>
ClassMethod DeleteDirectoryEntry(Directory, Global) As %Status
{
}

/// Compare the same global in two different databases.<br>
/// <pre>
/// Parameters:
/// SrcDirectory - Directory where the source nodes are located.
/// DstDirectory - Directory where the destination nodes are located.
/// StartingNode - Node where the compare is started.
/// EndingNode - Node where the compare finishes. "" - (Default) Compare all nodes until end of global.
/// MaxDifferences - Maximum number of differences to return. 0 - (Default) Return all differences.
/// MaxToCompare - 2 Piece comma delimited string as follows:
///
///   If Flags Bit 3 - Off:"MaxMBToProcess,AverageNodeSize"
///     If MaxMBToProcess is 0, then the method will process the entire range.
///     If MaxMBToProcess is > 0, then the method will return after that number of MB has been processed.
///     If AverageNodeSize is 0, then the MB processed is calculated by adding the length of each node and its data value.
///     If AverageNodeSize is > 0, then the MB processed is calculated by multiplying the number of nodes processed by
///     the AverageNodeSize. This is more accurate.
///
///   If Flags Bit 3 - On: "MaxNodesToProcess,AverageNodeSize"
///     If MaxNodesToProcess is 0, then the method will process the entire range.
///     If MaxNodesToProcess is > 0, then the method will return after that number of nodes has been processed.
///     If AverageNodeSize is 0, then the MB processed is calculated by adding the length of each node and its data value.
///     If AverageNodeSize is is > 0, then the MB processed is calculated by multiplying the number of nodes processed by
///     the AverageNodeSize. This is more accurate.
///
/// Flags - Bit string of compare options.
///   Bit 0 - Return Data values
///   Bit 1 - Format Node names using %Library.Utility:FormatReference()
///   Bit 2 - Format Data values using %Library.Utility:FormatString()
///   Bit 3 - 0 - MaxMBToProcess is passed in MaxToCompare variable
///           1 - MaxNodesToProcess is passed in MaxToCompare variable
///
/// Return Values:
/// Status - Return Status of the method.
///   1) If MaxMBToProcess is > 0, and we have reached the max, the error $$$ERROR($$$MaxMBToCompare) is returned.
///   2) If MaxNodesToProcess is > 0, and we have reached the max, the error $$$ERROR($$$MaxNodesToCompare) is returned.
///   3) If MaxDifferences > 0 and we have reached the max, the error $$$ERROR($$$MaxDifferencesReached) is returned.
///   4) If we have exceeded process storage space ($s) with a large amount of differences, the error $$$ERROR($$$MaxStorageReached) is returned.
///   In these four cases any differences found are returned in the Differences() array. The caller may then call this method again using the returned LastNodeProcessed as
///   the StartingNode to compare the next set of nodes.
///   5) $$$ERROR($$$DifferencesFound) - The compare completed successfuly, and some differences were found. Results are in the Differences() array.
///   6) $$$OK - The compare has completed successfully. No differences were found.
///
/// Differences - Number of differences
/// Differences(0) - $lb(LastNodeProcessed,BlocksChecked,NodesChecked,MBChecked,BlockSize)
///   LastNodeProcessed - Last node processed in the compare. May be used as the StartingNode if the method is called again. Returns "" if at end of range.
///   BlocksChecked - Number of Blocks in the SrcDirectory processed. More accurate if AverageNodeSize is passed.
///   NodesChecked - Number of Nodes in the SrcDirectory processed.
///   MBChecked - Number of MB in the SrcDirectory processed. More accurate if AverageNodeSize is passed.
///   BlockSize - Blocksize of the SrcDirectory
///
/// Differences(1..x,1) - Global name. Always returned, may be formatted if specified in the Flags parameter.
/// Differences(1..x,2) - Reason for difference
///   1 - Value is Different
///   2 - Node is in source but not destination
///   3 - Node is in destination but not source
/// Differences(1..x,3) - Source data value or "" if source does not exist. Only returned if specified in the Flags parameter. May be formatted if specified in the Flags parameter
/// Differences(1..x,4) - Destination data value or "" if destination does not exist. Only returned if specified in the Flags parameter. May be formatted if specified in the Flags parameter]]></Description>
///
/// Notes:
/// AverageNodeSize should be passed for most accurate values for BlocksChecked and MBChecked values in the Differences(0) return value.
/// AverageNodeSize is returned by the method %Library.GetGlobalSizeBySubscript(). See this method for how this value is calculated.
/// </pre>
ClassMethod CompareRange(SrcDirectory As %String, DstDirectory As %String, StartingNode As %String, EndingNode As %String, MaxDifferences As %Integer = 0, MaxToCompare As %String = "0,0", Flags As %Integer = 7, ByRef Differences As %String) As %Status
{
}

/// Get size of this global<br>
/// 'Allocated' - total size, in MB, of blocks allocated for the global.<br>
/// 'Used' - total used data, in MB, for the global.<br>
/// 'fast' - 2 : returns stochastic estimates for both 'Allocated' and 'Used' (fastest option for large globals) <br>
/// 1 : only returns exact 'Allocated' value (avoids reads of data blocks) <br>
/// 0 : returns exact values for both 'Allocated' and 'Used'.
ClassMethod GetGlobalSize(Directory As %String, GlobalName As %String, ByRef Allocated As %Integer, ByRef Used As %Integer, fast As %Integer = 0) As %Status
{
}

/// Return the number of global nodes in the range, and journal sizing information.<br>
/// This method will return the number of global nodes in the range, and the sizes of data within that range.
/// It will also return
/// information about the amount of journal space which would be used if the range were
/// merged into a different database, or moved via a DataMove operation.<br><br>
/// Parameters:<br>
/// Directory - Directory where global is located.<br>
/// StartNode - Starting node of global. Note that you can specify ^GLOBAL(BEGIN) to mean the start of the global.
/// This would include ^GLOBAL itself.
/// You can also specify ^GLOBAL("XXX"_$c(1)_"*next)" to mean start counting after global ^GLOBAL("XXX").<br>
/// EndNode - End Node of global. The returned sizes do not include the EndNode. Note that you can specify ^GLOBAL(END)
/// to mean through the end of the global. An EndNode value of null, or equal to the value of StartNode will return the size of
/// StartNode and all children of StartNode.<br>
/// Return Values: <br>
/// The method will return a %Status value of success, or an error.<br>
/// The array Size returns data and estimated journal sizes in both blocks and MB for the specified global range.<br>
/// If the global does not exist the sizes will all be set to 0.
/// If any error occurs, sizes will not be set.<br><br>
/// Size=Number of data nodes<br>
/// Size("DataSize","Bytes")=Size of global data in bytes<br>
/// Size("DataSize","MB")=Size of global data in MB<br>
/// Size("KeySize","Bytes")=Size of global keys in bytes<br>
/// Size("KeySize","MB")=Size of global keys in MB<br>
/// Size("TotalNodeSize","Bytes")=Total size of all global data in bytes (Datasize + KeySize)<br>
/// Size("TotalNodeSize","MB")=Total size of all global data in MB (Datasize + KeySize)<br>
/// Size("JournalOverHead","Bytes")=Estimate of size of journal overhead in bytes<br>
/// Size("JournalOverHead","MB")=Estimate of size of journal overhead in MB<br>
/// Size("TotalJournalSize","Bytes")=Estimate of total journal size in bytes<br>
/// Size("TotalJournalSize","MB")=Estimate of total journal size in MB<br><br>
/// Examples:<br><br>
/// Find the counts of global ^DATA<br>
/// s Status=##Class(%GlobalEdit).GetGlobalCountBySubscript("c:\iris\mgr\user\","DATA","",.Size)<br><br>
/// Find the counts of global ^DATA("Jones")<br>
/// s x=##Class(%GlobalEdit).GetGlobalCountBySubscript("c:\iris\mgr\user\","DATA(""Jones"")","",.Size)<br><br>
/// Find the count of nodes between nodes ^DATA("Jones") up to but not including ^DATA("Smith","zzzzz")<br>
/// s x=##Class(%GlobalEdit).GetGlobalCountBySubscript("c:\iris\mgr\user\","DATA(""Jones"")","DATA(""Smith"",""zzzzz"")",.Size)<br><br>
/// Find the count of all the nodes after after node ^X(500)<br>
/// s x=##Class(%GlobalEdit).GetGlobalCountBySubscript("c:\db1\","^X(500"_$c(1)_"*next)","^X(END)",.Size)<br><br>
/// Find the count of all the nodes from the beginning of the global up to but not including ^X(500)<br>
/// s x=##Class(%GlobalEdit).GetGlobalCountBySubscript("c:\db1\","^X(BEGIN)","^X(500)",.Size)<br><br>
ClassMethod GetGlobalCountBySubscript(Directory As %String, StartingNode As %String, EndingNode As %String = "", ByRef Size As %String = 0)
{
}

/// Return the size of a global or range of nodes in a global.<br>
/// This method will return the size of a global based on the number
/// of database blocks the global resides in.<br><br>
/// Parameters:<br>
/// Directory - Directory where global is located.<br>
/// StartNode - Starting node of global. Note that you can specify ^GLOBAL(BEGIN) to mean the start of the global.
/// This would include ^GLOBAL itself.
/// You can also specify ^GLOBAL("XXX"_$c(1)_"*next)" to mean start counting after global ^GLOBAL("XXX").<br>
/// EndNode - End Node of global. The returned sizes do not include the EndNode. Note that you can specify ^GLOBAL(END)
/// to mean through the end of the global. An EndNode value of null, or equal to the value of StartNode will return the size of
/// StartNode and all children of StartNode.<br>
/// Size - Maximum number of MB to count. If the size of the global exceeds this value,
/// calculation stops, and an error is returned. If undefined or set to 0, then the entire range is counted.
/// Be careful to reset this for multiple calls to the method.<br>
/// Fast - If set and the global is large, this method will attempt a stochastic sample instead of taking an exact measurement. <br>
/// CalculateAverage - 0/1 - If set, then the following averages will be calculated and returned. Calculating the averages requires
/// additional time as it samples the data pages of the global. If not set, the values will be set to 0.<br>
/// Size("AverageNodesPerPage")<br>
/// Size("AverageNodeSize")<br><br>
/// Return Values: <br>
/// The method will return a %Status value of success, or an error.<br>
/// The array Size returns the amount of data in both blocks and MB, for each
/// level of the global, as well as the size of big string data, and a total.
/// If the global does not exist the sizes will all be set to 0.
/// If any error occurs, sizes will not be set.<br>
/// Size=Total size in MB of the global range<br>
/// Size("Blocks","1")=# Blocks in level 1<br>
/// Size("Blocks","2")=# Blocks in level 2<br>
/// Size("Blocks","3")=# Blocks in level 3<br>
/// Size("Blocks","BigStrings")=# Big String Blocks<br>
/// Size("Blocks","Total")=Total # Blocks in global range<br>
/// Size("MB","1")=# MB in level 1<br>
/// Size("MB","2")=# MB in level 2<br>
/// Size("MB","3")=# MB in level 3<br>
/// Size("MB","BigStrings")=# Big String MB<br>
/// Size("MB","Total")=Total # MB in global range<br>
/// Size("AverageNodesPerPage")=Average nodes per page (Estimate)<br>
/// AverageNodesPerPage is calculated as follows:<br>
/// As each Bottom Pointer block is examined, 10 % of the data nodes pointed to by this pointer block are randomly selected and examined.
/// The number of nodes is accumulated in each selected page and summed together, and the total size of data blocks examined is summed
/// together. When we reach 20GB of data blocks examined, the loop continues, but we only select 2% of the data pages.
/// After we process the last pointer block, The AverageNodesPerPage is calculated by dividing the size of the summed data pages
/// by the number of summed nodes.
/// Size("AverageNodeSize")=Average node size (Estimate)<br>
/// AverageNodeSize is calculated by first estimating the total number of nodes in the global<br>
/// TotalNodes = Size("AverageNodesPerPage") * (Size("Blocks","Total")-Size("Blocks","BigStrings"))<br>
/// We then use the following:<br>
/// AverageNodeSize=$fn(Size*(1024*1024)/TotalNodes,"",1)
/// <br>
/// Examples:<br><br>
/// Find the size of global ^DATA<br>
/// s Status=##Class(%GlobalEdit).GetGlobalSizeBySubscript("c:\132u1\mgr\user\","DATA","",.Size)<br><br>
/// Find the size of data ^DATA("Jones")<br>
/// s x=##Class(%GlobalEdit).GetGlobalSizeBySubscript("c:\132u1\mgr\user\","DATA(""Jones"")","",.Size)<br><br>
/// Find the size of data between nodes ^DATA("Jones") up to but not including ^DATA("Smith","zzzzz")<br>
/// s x=##Class(%GlobalEdit).GetGlobalSizeBySubscript("c:\132u1\mgr\user\","DATA(""Jones"")","DATA(""Smith"",""zzzzz"")",.Size)<br><br>
/// Find the size of all the data after after node ^X(500)<br>
/// s x=##Class(%GlobalEdit).GetGlobalSizeBySubscript("c:\db1\","^X(500"_$c(1)_"*next)","^X(END)",.Size)<br><br>
/// Find the size of all the data from the beginning of the global up to but not including ^X(500)<br>
/// s x=##Class(%GlobalEdit).GetGlobalSizeBySubscript("c:\db1\","^X(BEGIN)","^X(500)",.Size)<br><br>
ClassMethod GetGlobalSizeBySubscript(Directory As %String, StartingNode As %String, EndingNode As %String = "", ByRef Size As %String = 0, Fast As %Boolean = 0, CalculateAverages As %Boolean = 0)
{
}

/// Internal helper for GetGlobalSizeBySubscript. Relies on its caller for initial validation
/// and the determination and encoding of the StartKey, EndKey values.
/// Called for Fast=False.
/// <br>
ClassMethod GetGlobalSizeBySubscriptPrecise(Directory As %String, BlockSize As %String, MaxSize As %String, Block As %Integer, StartingNode As %String, EndingNode As %String, StartKey As %String, EndKey As %String = "", CalculateAverages As %Boolean = 0, ByRef Level As %String = 0, ByRef TotalNodes As %Integer = 0, ByRef TotalNodesPages As %Integer = 0) [ Internal ]
{
}

/// The stochastic estimate counterpart to GetGlobalSizeBySubscriptPrecise. For Fast=True.
/// This borrows the algorithm from EstimatedSize^%GSIZE.
///
ClassMethod GetGlobalSizeBySubscriptEstimate(Directory As %String, BlockSize As %String, MaxSize As %String, Block As %Integer, StartingNode As %String, EndingNode As %String, StartKey As %String, EndKey As %String = "", CalculateAverages As %Boolean = 0, ByRef Level As %String = 0, ByRef TotalNodes As %Integer = 0, ByRef TotalNodesPages As %Integer = 0) [ Internal ]
{
}

/// Encode a Global reference.<br>
ClassMethod EncodeKey(GblRef As %String, Rule As %Integer, ByRef Key As %String) As %Status [ Internal ]
{
}

/// Kill a subscripted range of a single global in a single database.<br>
/// This method will kill a range of globals node of a single global in a single database. The starting
/// and ending global name must be the same. When a range is specified, the global is killed from the
/// starting node up to but not including the ending node. The exception to this is if the starting and
/// ending node is the same then that global is killed. The start and end nodes must not contain namespace
/// specifications. Process private globals are not supported. Note that this method ignores all namespace
/// specifications.<br>
/// Parameters:<br>
/// Directory - Location of global to kill.<br>
/// StartingNode - First node of global range to kill. Note that you can specify ^GLOBAL(BEGIN) to mean the start of the global.
/// This includes the global ^GLOBAL itself
/// You can also specify ^GLOBAL("XXX"_$c(1)_"*next)" to mean start deleting after global ^GLOBAL("XXX").<br>
/// EndingNode - Ending node of global range to kill, up to, but not including this node. Note that you can specify
/// ^GLOBAL(END) to mean through the end of the global.<br><br>
/// Return Values: <br>
/// The method will return a %Status value of success, or an error.<br><br>
/// Examples:<br>
/// Kill nodes between ^X(1,5) and ^X(1,50), not including ^X(1,50)<br>
/// s Status=##Class(%GlobalEdit).KillRange("c:\db1\","^X(1,5),"^X(1,50)")<br><br>
/// Kill node ^X(500) and all subnodes<br>
/// s Status=##Class(%GlobalEdit).KillRange("c:\db1\","^X(500),"^X(500)")<br><br>
/// Kill everything after node ^X(500)<br>
/// s Status=##Class(%GlobalEdit).KillRange("c:\db1\","^X(500"_$c(1)_"*next)","^X(END)")<br><br>
/// Kill everything from the beginning of the node up to but not including ^X(500)<br>
/// s Status=##Class(%GlobalEdit).KillRange("c:\db1\","^X(BEGIN)","^X(500)")<br><br>
ClassMethod KillRange(Directory As %String, StartingNode As %String, EndingNode As %String) As %Status
{
}

/// Replaces "BEGIN","END", and "*next" in a global subscript with subscripts
/// with real meaning where a $Query, or $Data can be executed on it. If Directory
/// is not "", then prepends the directory specification to it.
/// Flags = 0 - Start subscript
/// Flags = 1 - End Subscript
ClassMethod TranslateBEGINandEND(Directory As %String = "", Node As %String, Flags As %Integer) As %String [ Internal ]
{
}

Method GrowthBlockSet(Arg As %String) As %Status
{
}

Method IsKeepSet(Arg As %Boolean) As %Status
{
}

/// Set the Global name.
/// <br>
/// If prefaced by a "^" strip it off
Method NameSet(Arg As %String) As %Status
{
}

Method PointerBlockSet(Arg As %String) As %Status
{
}

}
