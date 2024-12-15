Class %SYS.GlobalQuery Extends %SYSTEM.Help [ Abstract, System = 3 ]
{

Parameter DEFAULTCONCURRENCY [ Internal ] = 0;

///  Default Localization Domain
Parameter DOMAIN = "%Utility";

ClassMethod DecodeReplication(Index As %Integer) As %String [ Internal, Private ]
{
}

ClassMethod Lock(Global, Subscript, Name, Timeout = 0) As %Status [ Internal ]
{
}

ClassMethod UnLock(Global, Subscript, IModeLock = 0) As %Status [ Internal ]
{
}

ClassMethod DisplayToLogical(%val As %String) As %Library.Boolean [ Internal ]
{
}

/// Passed a pattern match this returns an COS style pattern and a start and stop point.
ClassMethod Generate(Mask As %String, ByRef Begin As %String, ByRef End As %String, ByRef Pattern As %String, Flag As %Integer) [ Internal ]
{
}

ClassMethod LogicalToDisplay(%val As %Library.Boolean) As %String [ Internal ]
{
}

/// Returns whether the passed name matches the Pattern array
ClassMethod Matches(Name As %String, ByRef Patterns As %String) As %Boolean [ Internal ]
{
}

/// Parses a passed mask into a series of patterns in an array.<br>
/// The resulting array can be passed to the $SYSTEM.Library.Pattern.Matches
/// function along with a Name to determine if the name matches the mask.
/// <br><br>
/// The passed in mask may be a series of masks, each separated by a comma.
/// Valid masks are as follows:
/// <br>
/// ABC* - All strings starting with ABC<br>
/// A:D - All strings between A and D<br>
/// A:D,Y* - All strings between A and D, and all strings starting with Y<br>
/// A:D,'C* - All strings between A and D, except those starting with C
ClassMethod Parse(Masks As %String, ByRef Patterns As %String) [ Internal ]
{
}

/// Check whether the input mask has wildcards specified.
/// Return TRUE if there is wildcard otherwise return FALSE.
ClassMethod Wildcards(Mask As %String = "*") As %Boolean [ Internal ]
{
}

/// Returns a list of the Globals in a database<br>
/// <br>
/// <b>Parameters:</b> <br>
/// Directory  -  the directory file-spec for a database file. <br>
/// System  -  ECP database server logical name, as defined in the Application Server list.<br>
/// Mask  -  a mask, or comma-separated list of masks, to select globals. Default is "*" for all.<br>
/// SystemGlobals  -  boolean flag to include system globals in the results. Default is "0".<br>
/// Index  -  Internal use only.<br>
/// IgnoreHasData - For faster list of Globals set this to 1 and the HasData column will always be FALSE.<br>
/// <br>
/// Valid masks are as follows:
/// <br>
/// ABC* - All strings starting with ABC<br>
/// A:D - All strings between A and D<br>
/// A:D,Y* - All strings between A and D, and all strings starting with Y<br>
/// A:D,'C* - All strings between A and D, except those starting with C
ClassMethod DirectoryListExecute(ByRef qHandle As %Binary, Directory As %String, System As %String = "", Mask As %String = "*", SystemGlobals As %Boolean = 0, Index As %Integer = 0, IgnoreHasData As %Boolean = 0) As %Status [ Internal ]
{
}

ClassMethod DirectoryListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod DirectoryListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = DirectoryListExecute ]
{
}

/// Returns a list of the Globals in a namespace (used for GUI display)<br>
/// <br>
/// <b>Parameters:</b> <br>
/// NameSpace  -  a namespace. Default is current namespace. <br>
/// Mask  -  a mask, or comma-separated list of masks, to select globals. Default is "*" for all.<br>
/// SystemGlobals  -  boolean flag to include system globals in the results. Default is "0".<br>
/// UnavailableDatabases  -  a returned local array of any databases not currently accessible, i.e. array(name)=status.<br>
/// Index  -  Internal use only.<br>
/// IgnoreHasData - For faster list of Globals set this to 1 and the HasData column will always be FALSE.<br>
/// Mapped - Return all mapped global nodes when set to 1, the default value of this parameter is 1.
/// <br>
/// Valid masks are as follows:
/// <br>
/// ABC* - All strings starting with ABC<br>
/// A:D - All strings between A and D<br>
/// A:D,Y* - All strings between A and D, and all strings starting with Y<br>
/// A:D,'C* - All strings between A and D, except those starting with C
ClassMethod NameSpaceListExecute(ByRef qHandle As %Binary, NameSpace As %String = {$namespace}, Mask As %String = "*", SystemGlobals As %Boolean = 0, ByRef UnavailableDatabases As %String, Index As %Integer = 0, IgnoreHasData As %Boolean = 0, Mapped As %Boolean = 1) As %Status [ Internal ]
{
}

ClassMethod NameSpaceListFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod NameSpaceListClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = NameSpaceListExecute ]
{
}

/// Returns a list of Globals in a namespace (used for terminal display)<br>
/// <br>
/// <b>Parameters:</b> <br>
/// NameSpace  -  a namespace. Default is current namespace. <br>
/// Mask  -  a mask, or comma-separated list of masks, to select globals. Default is "*" for all.<br>
/// SystemGlobals  -  boolean flag to include system globals in the results. Default is "0".<br>
/// UnavailableDatabases  -  a returned local array of any databases not currently accessible, i.e. array(name)=status.<br>
/// Index  -  Internal use only.<br>
/// <br>
/// Valid masks are as follows:
/// <br>
/// ABC* - All strings starting with ABC<br>
/// A:D - All strings between A and D<br>
/// A:D,Y* - All strings between A and D, and all strings starting with Y<br>
/// A:D,'C* - All strings between A and D, except those starting with C
ClassMethod NameSpaceListChuiExecute(ByRef qHandle As %Binary, NameSpace As %String = {$namespace}, Mask As %String = "*", SystemGlobals As %Boolean = 0, ByRef UnavailableDatabases As %String, Index As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod NameSpaceListChuiFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod NameSpaceListChuiClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = NameSpaceListExecute ]
{
}

/// Returns the size of Globals in a database<br>
/// <br>
/// <b>Parameters:</b> <br>
/// Directory  -  the directory file-spec for a database file. <br>
/// System  -  Currently ignored, pass as a null string. Getting the size of a global in an
/// ECP mounted database is not currently supported. You can get the size for these globals directly
/// on the ECP server itself.<br>
/// Mask  -  a mask, or comma-separated list of masks, to select globals. Default is "*" for all.<br>
/// SystemGlobals  -  boolean flag to include system globals in the results. Default is "0".<br>
/// Index  -  Internal use only.<br>
/// FastFlag  -  If 1, don't return 'Used' count, only the precise 'Allocated' count. If 2, return estimates for 'Allocated' and 'Used' (fastest option for huge globals). <br>
/// <br>
/// Valid masks are as follows:
/// <br>
/// ABC* - All strings starting with ABC<br>
/// A:D - All strings between A and D<br>
/// A:D,Y* - All strings between A and D, and all strings starting with Y<br>
/// A:D,'C* - All strings between A and D, except those starting with C
ClassMethod SizeExecute(ByRef qHandle As %Binary, Directory As %String, System As %String = "", Mask As %String = "*", SystemGlobals As %Boolean = 0, Index As %Integer = 0, FastFlag As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod SizeFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

ClassMethod SizeClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = SizeExecute ]
{
}

/// Measures the size of a given global or subnode in the current namespace,
/// iterating over the mappings and measuring data in each.
/// Each row returns the subscript range that was measured, the corresponding
/// database, and either allocated or estimated size in megabytes (MB). <br>
/// <br>
/// For root globals, this query measures size by each subscript mapping.
/// The sum will equal the total size (or estimate) of the global
/// from the namespace's perspecive.<br>
/// <br>
/// For subnodes, this query measures the entire subnode once in each mapped database.
/// In typical scenarios, this will still sum to the subnode's overall size
/// from the namespace's perspective.<br>
/// <br>
/// Note that in certain configurations, a database may contain global
/// data that the namespace doesn't see. This can happen if different namespaces
/// map different parts of the same global to the same database.
/// Subnode queries may measure unseen data and return inflated results in these cases.<br>
/// <br>
/// Measurements in remote or dismounted databases are unsupported.
/// They either return errors or are quietly skipped if SilentSkip=1.<br>
/// <br>
/// <b>Parameters:</b> <br>
/// Global - the name of the global or subnode to measure (for example, "testglobal" or "testglobal(1)"),
/// 	with or without a prepended carat.<br>
/// FastFlag - flag to run fast stochastic estimation.
/// 	If set, fills Estimated column. Otherwise, fills Allocated column.
/// 	Default is 0 (not set). 1 is recommended for huge globals. <br>
/// SilentSkip - flag to silently skip unavailable databases and exclude them from results.
/// 	If 0 (not set), stops and returns an error instead of skipping. Default is 0. <br>
///
/// Executes all relevant subscript range measurements and assembles them in a temp global for Fetch.
///
ClassMethod NameSpaceSizeExecute(ByRef qHandle As %Binary, Global As %String, FastFlag As %Boolean = 0, SilentSkip As %Boolean = 0) As %Status [ Internal ]
{
}

/// Iterates over results in the temp global assembled by NameSpaceSizeExecute.
/// Results should already be in the $list format expected for rows.
///
ClassMethod NameSpaceSizeFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal ]
{
}

/// Cleans up the temp global data from NameSpaceSizeExecute.
///
ClassMethod NameSpaceSizeClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = NameSpaceSizeExecute ]
{
}

/// Internal helper for the NameSpaceSize class query.
/// Amasses a validated array of subscript mappings and their corresponding databases
/// for a given global (or subnode) in a given namespace.
/// Takes as input a global name (no carat), the empty array
/// to fill (passed by reference), and the SilentSkip flag.
///
/// By default, returns status OK if all databases are local and available and
/// an error status if a database is remote, dismounted, or missing.
/// If SilentSkip is set, it skips over unavailable databases and assembles
/// an array of the local, available ones without complaint.
///
ClassMethod GetGlobalMappings(Namespace As %String, Global As %String, ByRef mapArray, SilentSkip As %Boolean = 0) As %Status [ Internal ]
{
}

}
