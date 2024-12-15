Class %DeepSee.SQL.CatalogQueries [ Owner = {_PUBLIC}, System = 4 ]
{

/// Retrieves a list of all cubes accessible through SQL, along with relevant metadata,
/// including whether the cube has any features not supported through direct SQL access.
/// These cubes can be excluded from the result through the <var>pIncludeUnsupported</var>
/// parameter, which defaults to "warning", meaning only cubes that will definitely
/// not work are excluded from the result.
ClassMethod GetCubesExecute(ByRef qHandle As %Binary, pIncludeUnsupported As %String(VALUELIST=",none,warning,error") = "warning") As %Status [ Internal ]
{
}

ClassMethod GetCubesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetCubesExecute ]
{
}

ClassMethod GetCubesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetCubesExecute ]
{
}

/// Checks if a cube or subject area uses features that are not supported by default
/// through the SQL projections. For example, the presence of an %OnGetFilterSpec()
/// method on the cube class may indicate certain runtime code is expected that cannot
/// be guaranteed to run by direct SQL access.
ClassMethod HasUnsupportedFeatures(pCubeName As %String, Output pUnsupportedFeatures, Output pSC As %Status = {$$$OK}) As %Boolean [ SqlName = HasUnsupportedFeatures, SqlProc ]
{
}

ClassMethod GetUnsupportedFeaturesExecute(ByRef qHandle As %Binary, pCubeName As %String) As %Status [ Internal ]
{
}

ClassMethod GetUnsupportedFeaturesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetUnsupportedFeaturesExecute ]
{
}

ClassMethod GetUnsupportedFeaturesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetUnsupportedFeaturesExecute ]
{
}

ClassMethod GetDimensionTablesExecute(ByRef qHandle As %Binary, pCubeName As %String) As %Status [ Internal ]
{
}

ClassMethod GetDimensionTablesClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetDimensionTablesExecute ]
{
}

ClassMethod GetDimensionTablesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetDimensionTablesExecute ]
{
}

/// Retrieves a list of measures, dimensions, and relationships in a cube's fact table which are accessible through SQL.
ClassMethod GetDimensionColumnsExecute(ByRef qHandle As %Binary, pTableName As %String) As %Status [ Internal ]
{
}

ClassMethod GetDimensionColumnsClose(ByRef qHandle As %Binary) As %Status [ Internal, PlaceAfter = GetDimensionColumnsExecute ]
{
}

ClassMethod GetDimensionColumnsFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, PlaceAfter = GetDimensionColumnsExecute ]
{
}

ClassMethod Fetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ Internal, Private ]
{
}

ClassMethod Close(ByRef qHandle) As %Status [ Internal, Private ]
{
}

}
