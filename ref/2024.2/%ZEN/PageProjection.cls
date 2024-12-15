/// Projection class used by <class>%ZEN.Component.page class</class>.
/// Currently this does nothing.
Class %ZEN.PageProjection Extends %Projection.AbstractProjection [ Deprecated, System = 3 ]
{

ClassMethod CreateProjection(pClassName As %String, ByRef parameters As %String) As %Status
{
}

ClassMethod RemoveProjection(pClassName As %String, ByRef parameters As %String, recompile As %Boolean) As %Status
{
}

}
