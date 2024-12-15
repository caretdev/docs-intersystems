Class %Library.MetaInfo [ System = 4 ]
{

ClassMethod ProjectableClassesExecute(ByRef qHandle As %Binary, pLanguage As %String) As %Status
{
}

ClassMethod ProjectableClassesClose(ByRef qHandle As %Binary) As %Status [ PlaceAfter = ProjectableClassesExecute ]
{
}

ClassMethod ProjectableClassesFetch(ByRef qHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ PlaceAfter = ProjectableClassesExecute ]
{
}

}
