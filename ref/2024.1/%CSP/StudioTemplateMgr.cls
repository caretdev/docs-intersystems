/// Provide a place to put the queries for the Studio templates and the other management functions.
Class %CSP.StudioTemplateMgr [ Owner = {%Developer}, System = 3 ]
{

/// This will scan the directory with the templates in to see if any need to be
/// recompiled because they have changed. If they do they will be recompiled with
/// the <var>flag</var> flags.
ClassMethod UpdateTemplates(flag As %String = "") As %Status
{
}

/// Return the list of templates that we have for use with Studio. The <var>Type</var>
/// can be the name of the type or '*' to return all the non-New templates. If you specify
/// a value for <var>Name</var> then it will just return the templates that match this
/// Name in case you already know which template you are interested in.
/// Execute method for Templates query
ClassMethod TemplatesExecute(ByRef QHandle As %Binary, Type As %String = "", Name As %String = "") As %Status [ Final, Internal ]
{
}

/// Close method for Templates query
ClassMethod TemplatesClose(QHandle As %Binary) As %Status [ Internal ]
{
}

/// Fetch method for Templates query
/// <b>Fetch</b> returns the next row in the query.
ClassMethod TemplatesFetch(ByRef QHandle As %Binary, ByRef Row As %List, ByRef AtEnd As %Integer = 0) As %Status [ CodeMode = expression, Internal ]
{
}

/// <b>TemplatesFetchRows</b> returns the next <var>FetchCount</var> rows in the query.
ClassMethod TemplatesFetchRows(ByRef QHandle As %Binary, FetchCount As %Integer = 0, ByRef RowSet As %List, ByRef ReturnCount As %Integer, ByRef AtEnd As %Integer) As %Status [ Internal ]
{
}

/// Return an array of the types of 'new' documents the templates can create
ClassMethod NewTemplateTypes(ByRef types As %String) As %Status [ Internal ]
{
}

/// Add this template to the list used by the template query.
ClassMethod AddTemplate(name As %String, mode As %String, pagename As %String, description As %String, classname As %String, typelist As %String, interactive As %Boolean, global As %Boolean = 0, id As %String = "", nooutput As %Boolean = 0, accelerator As %String = "", group As %String = "", nonmodal As %Boolean = 0) As %Status
{
}

}
