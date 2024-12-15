/// Various class queries used by DeepSee utilities.
Class %DeepSee.ClassQueries Extends %RegisteredObject [ System = 4 ]
{

/// Returns a list of available DeepSee cubes.
/// The list contains the cube's logical name, (base) class name, and type.
ClassMethod EnumerateCubesExecute(ByRef qHandle As %Binary) As %Status
{
}

ClassMethod EnumerateCubesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = EnumerateComponentsExecute ]
{
}

ClassMethod EnumerateCubesClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = EnumerateComponentsExecute ]
{
}

}
