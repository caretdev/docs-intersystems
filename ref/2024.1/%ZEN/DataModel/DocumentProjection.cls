/// Projection class used by the <class>%ZEN.DataModel.AbstractDocument</class> class.
/// This class takes care of any work that needs to happen when
/// a document interface is created (compiled) or deleted.
/// This class should be considered INTERNAL.
Class %ZEN.DataModel.DocumentProjection Extends %Projection.AbstractProjection [ Deprecated, System = 3 ]
{

ClassMethod CreateProjection(pClassName As %String, ByRef parameters As %String) As %Status
{
}

ClassMethod RemoveProjection(pClassName As %String, ByRef parameters As %String, recompile As %Boolean) As %Status
{
}

}
