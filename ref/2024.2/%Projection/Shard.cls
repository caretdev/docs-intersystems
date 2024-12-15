/// Projection class called for any sharded table
Class %Projection.Shard Extends AbstractProjection
{

/// This method is called by the Class Compiler whenever an associated
/// class has finished compiling. <var>classname</var> contains the name of
/// the associated class while <var>parameters</var> contains an array of the
/// projection parameters subscripted by parameter name. Also the special parameter value
/// parameters("%qstruct") contains a merge of the qstruct array this projection is being
/// compiled with. The <var>modified</var> is always blank.<br>
/// Any errors reported by this method are reported by the Class Compiler but
/// do not effect class compilation in any way.
ClassMethod CreateProjection(classname As %String, ByRef parameters As %String, modified As %String, qstruct) As %Status
{
}

/// This method is called by the Class Compiler whenever an associated
/// class is either a) about to be recompiled, or b) about to be deleted.
/// <var>classname</var> contains the name of the associated class while
/// <var>parameters</var> contains an array of the projection parameters
/// subscripted by parameter name.  Also the special parameter value
/// parameters("%qstruct") contains a merge of the qstruct array this projection is being
/// uncompiled/deleted with. <var>recompile</var> is true (1) if the
/// associated class is about to be recompiled. The <var>modified</var> is always blank.<br>
/// Any errors reported by this method are reported by the Class Compiler but
/// do not effect class compilation in any way.
ClassMethod RemoveProjection(classname As %String, ByRef parameters As %String, recompile As %Boolean, modified As %String, qstruct) As %Status
{
}

}
