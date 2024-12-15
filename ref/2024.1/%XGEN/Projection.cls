/// Internal.<br/>
/// Projection class used by <class>%XGEN.AbstractElement</class> classes.<br/>
/// This is used to clean up the Studio Assist schema generated for XGEN classes.
Class %XGEN.Projection Extends %Projection.AbstractProjection [ System = 3 ]
{

/// Delete the StudioAssist schema information related to this document.
ClassMethod PurgeSASchema(pClassName As %String)
{
}

/// This is called when a component class is compiled.
ClassMethod CreateProjection(pClassName As %String, ByRef parameters As %String) As %Status
{
}

/// This is called when a component class is removed.
ClassMethod RemoveProjection(pClassName As %String, ByRef parameters As %String, recompile As %Boolean) As %Status
{
}

}
