///
/// Traits projection
///
Class %SYS.Python.Traits Extends %Projection.AbstractProjection [ System = 2 ]
{

/// Defines the IRIS class we're providing traits for
Parameter TARGETSPEC As %String;

///
/// Inject traits for this class
///
ClassMethod CreateProjection(class As %String, ByRef params As %String) As %Status
{
}

///
/// Remove traits for a class
///
ClassMethod RemoveProjection(class As %String, ByRef params As %String, recompile As %Boolean) As %Status
{
}

}
