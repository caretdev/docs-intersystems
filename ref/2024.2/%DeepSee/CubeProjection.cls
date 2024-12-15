/// Projection class used by the <class>%DeepSee.CubeDefinition</class> class.
/// This class takes care of any work that needs to happen when
/// a cube definition is created (compiled) or deleted.
/// This class should be considered INTERNAL.
Class %DeepSee.CubeProjection Extends %Projection.AbstractProjection [ System = 3 ]
{

ClassMethod CreateProjection(pClassName As %String, ByRef parameters As %String) As %Status
{
}

ClassMethod RemoveProjection(pClassName As %String, ByRef parameters As %String, recompile As %Boolean) As %Status
{
}

}
