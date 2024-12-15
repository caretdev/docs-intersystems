/// Interface to the Basic Compiler
Class %Library.Compiler.Basic Extends %Library.RegisteredObject [ Not ProcedureBlock, System = 2 ]
{

/// Given a resolved class name, return the class flags for the named class
/// Bit 1 = On if the class is a datatype class
ClassMethod ClassFlags(ClassName As %Library.String) As %Library.List [ Final ]
{
}

/// Returns a List containing an encoded description of the class members for use during the
/// Cache Basic compilation process
/// Each member is a $list(), consists of name, membertype, and one or several values
/// For methods,    the format is: name, 1, classmethod, quitwithvalue,arglist
/// arglist contains a list of argument names and a flag indicating whether the argument is
/// passed byref or not (0 = byvalue, 1 = byref)
/// For parameters, the format is: name, 2, defaultvalue
/// For properties, the format is: name, 3, multidim, datatype, calculated, slot, element
/// (please note that slot and element numbers only make sense for datatype and non-calculated properties)
/// At the end of of the list, there is a end-of-data marker, which is $lb("").  If there is no
/// end-of-data marker at the end, that means there is more data to come.  The caller should call
/// back to ClassInfo again, passing the last member element as its second input value.
ClassMethod ClassInfo(ClassName As %Library.String, cursor As %Library.Binary) As %Library.List [ Final ]
{
}

ClassMethod GetSource(VarName, Line)
{
}

ClassMethod PutSuperTokens(VarName, Index, Tokens)
{
}

/// Given an abbreviated class name and an import list, resolve the full class name
ClassMethod ResolveClassName(ClassName As %Library.String, ImportList As %Library.String) As %Library.List [ Final ]
{
}

}
