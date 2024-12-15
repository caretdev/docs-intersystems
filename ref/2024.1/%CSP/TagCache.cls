/// CSP DOM object that implements CSP script tag.
Class %CSP.TagCache Extends %CSP.TagMethod [ Not ProcedureBlock, System = 3 ]
{

/// Writes code into the routine builder object to render the
/// script tag.
Method RenderStartTag() As %Status
{
}

/// Output code for runat="server"
Method RenderAsCodeServer() As %Status [ Internal ]
{
}

/// Output code for runat="compiler"
Method RenderAsCodeCompiler() As %Status [ Internal, Private ]
{
}

}
