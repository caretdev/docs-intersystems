Class DataMove.DataCheck [ Abstract ]
{

///  Default Localization Domain
Parameter DOMAIN = "%Utility";

ClassMethod RestartAll(Name As %String) As %Status [ Internal ]
{
}

ClassMethod RestartRange(Name As %String, SrcDB As %String, DstDB As %String, Range As %String) As %Status [ Internal ]
{
}

ClassMethod Start(Name As %String, Restart As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod StartJob(Name As %String, Restart As %Boolean) As %Status [ Internal ]
{
}

ClassMethod SaveVerifyGlobal(Name As %String, Direction As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod Stop(Name As %String) As %Status [ Internal ]
{
}

ClassMethod StopRange(Name As %String, SrcDB As %String, DstDB As %String, Range As %String) As %Status [ Internal ]
{
}

ClassMethod InitializeAll(Name As %String) As %Status [ Internal ]
{
}

ClassMethod InitializeOne(Name As %String, SrcDB As %String, DstDB As %String, Range As %String) As %Status [ Internal ]
{
}

ClassMethod IsRunning(Name As %String) As %Status [ Internal ]
{
}

ClassMethod GetInfo(Name As %String, ByRef Info As %String) As %Status [ Internal ]
{
}

ClassMethod GetRangeInfo(Name As %String, SrcDB As %String, DstDB As %String, Range As %String, ByRef Info As %String) As %Status [ Internal ]
{
}

ClassMethod ExportRangeDiffs(Name As %String, SrcDBs As %String = "*", DstDBs As %String = "*", Ranges As %String = "*", FileName, ByRef NumExported As %Integer) As %Status
{
}

ClassMethod Check(Name As %String, SrcDB As %String, DstDB As %String, Range As %String) As %Status [ Internal ]
{
}

/// Translate the RngDcState property to text.<br>
ClassMethod DcStateLogicalToDisplay(Name As %String, SrcDB As %String, DstDB As %String, Range As %String, State As %Integer, Status As %Integer, Queued As %Integer, Stopped As %Integer) As %String [ Internal ]
{
}

ClassMethod ListDataCheckDiffsExecute(ByRef qHandle As %Binary, Name As %String, SrcDBs As %String = "*", DstDBs As %String = "*", Ranges As %String = "*") As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod ListDataCheckDiffsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListDataCheckDiffsExecute ]
{
}

ClassMethod ListDataCheckDiffsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListDataCheckDiffsExecute ]
{
}

/// Return a list of DataCheck globals as part of the selected MoveGlobals operation.<br>
/// Parameters:<br>
ClassMethod ListDataCheckRangesExecute(ByRef qHandle As %Binary, Name As %String, SrcDBs As %String = "*", DstDBs As %String = "*", Ranges As %String = "*") As %Status [ Internal, ProcedureBlock = 1 ]
{
}

ClassMethod ListDataCheckRangesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = ListDataCheckRangesExecute ]
{
}

ClassMethod ListDataCheckRangesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = ListDataCheckRangesExecute ]
{
}

}
