/// HTML escape output to the current device
Class %CSP.HTMLEscape Extends %RegisteredObject
{

Method %OnNew() As %Status
{
}

Method %OnClose() As %Status
{
}

ClassMethod Callback() [ ProcedureBlock = 0 ]
{
}

/// Ouput the escaped new line
ClassMethod WriteNL()
{
}

/// Ouput to the escaped <var>str</var> value.
ClassMethod Write(str As %String)
{
}

}
