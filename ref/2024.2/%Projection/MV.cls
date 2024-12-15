Class %Projection.MV Extends %Projection.AbstractProjection [ System = 4 ]
{

/// This method is called by the Class Compiler whenever an associated
/// class has finished compiling. <var>classname</var> contains the name of
/// the associated class while <var>parameters</var> contains an array of the
/// projection parameters subscripted by parameter name.<BR>
/// Any errors reported by this method are reported by the Class Compiler but
/// do not affect class compilation in any way. Errors thrown here may well prevent
/// the projection from creating a file or populating the dictionary of the file.
///
ClassMethod CreateProjection(classname As %String, ByRef parameters As %String) As %Status
{
}

ClassMethod genDictitem(classname As %String, ByRef property As %String, ByRef propertyParams, position, multiValue, progressReport, mvDict, ByRef assoctbl) As %Status [ Private ]
{
}

/// This method is called by the Class Compiler whenever an associated
/// class is either a) about to be recompiled, or b) about to be deleted.
/// <var>classname</var> contains the name of the associated class while
/// <var>parameters</var> contains an array of the projection parameters
/// subscripted by parameter name. <var>recompile</var> is true (1) if the
/// associated class is about to be recompiled.<BR>
/// Any errors reported by this method are reported by the Class Compiler but
/// do not effect class compilation in any way.
ClassMethod RemoveProjection(classname As %String, ByRef parameters As %String, recompile As %Boolean) As %Status
{
}

}
