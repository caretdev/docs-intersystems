/// Projection class used by the <class>%DeepSee.QualityMeasure.QualityMeasure</class> class.
/// This class takes care of any work that needs to happen when
/// a quality measure is created (compiled) or deleted.
/// This class should be consider INTERNAL.
Class %DeepSee.QualityMeasure.QualityMeasureProjection Extends %Projection.AbstractProjection [ System = 3 ]
{

ClassMethod CreateProjection(pClassName As %String, ByRef parameters As %String) As %Status
{
}

ClassMethod RemoveProjection(pClassName As %String, ByRef parameters As %String, recompile As %Boolean) As %Status
{
}

}
