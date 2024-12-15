/// Projection class used by <class>%ZEN.Component.object</class> classes.
/// This is used to manage post-compilation actions for Zen components.
Class %ZEN.ObjectProjection Extends %Projection.AbstractProjection [ Deprecated, System = 3 ]
{

/// Add the Zen class, <var>pClass</var> to the post-compilation queue.
/// <var>pFlag</var> is a csv-list indicating what kind of post-compile action are needed:<br>
/// "schema" - XML schema for Studio needs to be regenerated.<br>
/// "HTML" - HTML include files (CSS and js) need to be regenerated.<br>
/// "SVG" - SVG include files (CSS and js) need to be regenerated.<br>
ClassMethod %QueueClass(pClass As %String, pFlag As %String) As %Status
{
}

/// Execute the various post-compilation actions for the Zen library.
ClassMethod EndCompile(qstruct) As %Status
{
}

ClassMethod CreateIncludes(pKey As %String, ByRef pModules As %String, pDisplay As %Boolean = 1) As %Status
{
}

/// This is called when a component class is compiled.
ClassMethod CreateProjection(pClassName As %String, ByRef parameters As %String, modified As %String) As %Status
{
}

/// This is called when a component class is removed.
ClassMethod RemoveProjection(pClassName As %String, ByRef parameters As %String, recompile As %Boolean) As %Status
{
}

}
