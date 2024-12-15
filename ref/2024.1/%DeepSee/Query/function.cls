/// This class defines a function within a DeepSee query.<br/>
/// The actual behavior of functions is implemented within the subclasses of this class.
Class %DeepSee.Query.function Extends group [ Abstract, System = 3 ]
{

/// Used to indicate which class of functions this class supports.
Parameter FUNCTIONCLASS As STRING;

/// Name of the function.
Property function As %DeepSee.Datatype.string(XMLPROJECTION = "attribute");

/// Label to display for the function (used internally).
Property label As %DeepSee.Datatype.string(XMLPROJECTION = "attribute");

/// Handle of subquery for this function (if needed).
Property subqueryKey As %Integer(XMLPROJECTION = "none");

/// Make sure function table global is deleted whenever the function class is compiled.
Method %KillFunctionTable() As %String [ CodeMode = objectgenerator, Internal, Private ]
{
}

/// Return a version number for the metadata.
ClassMethod %GetFunctionVersionNo() As %Integer [ CodeMode = objectgenerator, Internal, Private ]
{
}

/// Return type of this node.
Method %GetType() As %String
{
}

/// Convert a ds Type to a printable string.
/// Used for error reporting.
ClassMethod %TypeFlagToString(pTypeFlag) As %String
{
}

/// Test if function metadata is in the DeepSeeFunctionGLVN global.
/// If not, put it there.
ClassMethod %BuildFunctionMetaData() As %Status
{
}

/// Return meta-data for the function <var>pFunction</var>.
/// Returns true if the function exists.<br/>
/// On return,
/// <var>pIsImplemented</var> if the function is implemented.<br/>
/// <var>pArgCount</var> returns the number of required arguments the function expects
/// or "" if this function does not take arguments.<br/>
/// <var>pReturns</var> is the return type.<br/>
/// <var>pArgTypes</var> is a list of argument types for the function.<br/>
/// <var>pArgDesc</var> is a list of argument descriptors for the function.<br/>
ClassMethod %GetFunctionInfo(pFunction As %String, Output pIsImplemented As %Boolean, Output pArgCount As %Integer, Output pReturns As %String, Output pArgTypes As %List, Output pArgDesc As %List) As %Boolean [ Final ]
{
}

/// Return a string containing the signature for the given function
/// (used for error messages).
ClassMethod %GetFunctionSignature(pFunction As %String) As %String [ Final ]
{
}

}
