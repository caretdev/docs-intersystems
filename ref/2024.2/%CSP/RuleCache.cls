/// Implements script tag within a CSR rule.
Class %CSP.RuleCache Extends %CSP.RuleElement [ System = 3 ]
{

/// Writes code into the routine builder object that will
/// add outputing of the specified code to this rule class.
Method RenderStartTag() As %Status
{
}

/// Output code for runat="server"
Method RenderAsCodeServer(indent) As %Status [ Internal, Private ]
{
}

/// Output code for runat="compiler"
Method RenderAsCodeCompiler() As %Status [ Internal, Private ]
{
}

}
