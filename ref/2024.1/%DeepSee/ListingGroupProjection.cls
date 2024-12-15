/// Projection class used by the <class>%DeepSee.ListingGroupDefinition</class> class.
/// This class takes care of any work that needs to happen when
/// a listing group definition is created (compiled) or deleted.
/// This class should be considered INTERNAL.
Class %DeepSee.ListingGroupProjection Extends %Projection.AbstractProjection [ System = 3 ]
{

/// This method is called by the Class Compiler whenever an associated
/// class has finished compiling. <var>classname</var> contains the name of
/// the associated class while <var>parameters</var> contains an array of the
/// projection parameters subscripted by parameter name. Also the special parameter value
/// parameters("%qstruct") contains a merge of the qstruct array this projection is being
/// compiled with. The <var>modified</var>
/// for an incremental compile will contain a comma separated list of the methods that were
/// modified and it will be blank for a full compile<BR>
/// Any errors reported by this method are reported by the Class Compiler but
/// do not effect class compilation in any way.
ClassMethod CreateProjection(pClassName As %String, ByRef parameters As %String, modified As %String, qstruct) As %Status
{
}

/// This method is called by the Class Compiler whenever an associated
/// class is either a) about to be recompiled, or b) about to be deleted.
/// <var>classname</var> contains the name of the associated class while
/// <var>parameters</var> contains an array of the projection parameters
/// subscripted by parameter name.  Also the special parameter value
/// parameters("%qstruct") contains a merge of the qstruct array this projection is being
/// compiled with. <var>recompile</var> is true (1) if the
/// associated class is about to be recompiled. The <var>modified</var>
/// for an incremental compile will contain the comma separated list of methods that
/// were modified and will be blank for a full compiler.<BR>
/// Any errors reported by this method are reported by the Class Compiler but
/// do not effect class compilation in any way.
ClassMethod RemoveProjection(pClassName As %String, ByRef parameters As %String, recompile As %Boolean, modified As %String, qstruct) As %Status
{
}

}
