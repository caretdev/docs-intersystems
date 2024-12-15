/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.<p>
/// This class provides utility methods for CSPBIND related tools.
Class %CSP.DwxUtils [ Abstract, Not ProcedureBlock, System = 3 ]
{

/// Returns information about what kind of member <var>member</var> is.
/// <p>Upon return, <var>mtype</var> contains either a property type, in the case
/// of a property, or a return type in the case of a method.
/// Possible return values include:
/// <table cols=2>
/// <tr><td><b>LITERAL</b></td><td>A literal property</td></tr>
/// <tr><td><b>MULTIDIM</b></td><td>A multidimensional property</td></tr>
/// <tr><td><b>PERSISTENT</b></td><td>A reference property</td></tr>
/// <tr><td><b>SERIAL</b></td><td>A serial property</td></tr>
/// <tr><td><b>METHOD</b></td><td>A method</td></tr>
/// <tr><td><b>ID</b></td><td>The %Id() method</td></tr>
/// <tr><td><b>STREAM</b></td><td>A stream attribute</td></tr>
/// <tr><td><b>BSTREAM</b></td><td>A binary stream attribute</td></tr>
/// <tr><td><b>LIST</b></td><td>A list of datatypes attribute</td></tr>
/// <tr><td><b>LISTOBJ</b></td><td>A list of objects attribute</td></tr>
/// <tr><td><b>&quot;&quot;</b></td><td>Not a member</td></tr>
/// </table>
ClassMethod GetMemberInfo(class As %String, member As %String, ByRef mtype As %String) As %String [ Internal ]
{
}

/// This returns the same information as <METHOD>getMemberInfo</MEMBER> except that
/// the information pertains to the member referenced by <var>member</member>.
/// <p><var>mname</var> is the referenced member name.
/// <p><var>mcontainer</var> is name of the class containing the member.
/// (equal to <var>class</var> if member is not an extended reference.
ClassMethod GetReferenceInfo(class As %String, member As %String, ByRef mtype As %String, ByRef mname As %String, ByRef mcontainer As %String) As %String [ Internal ]
{
}

/// Used by form tag to get the value of the VALUE attribute for
/// an HTML control bound to this member. <var>oref</var> is the name
/// of the oref variable.
ClassMethod GetValueExpression(class As %String, member As %String, oref As %String, mode As %String = "HTML", listmode As %String = "S", pagelanguage As %String = "cache", js As %Boolean = 0) As %String [ Internal, ProcedureBlock = 1 ]
{
}

/// Used by form tag to return a code snippet containing a
/// code snippet to set the value of the specified class member. <var>oref</var>
/// is the name of the oref variable. <var>varname</var> is the name of the
/// variable containing the value to set into the member. <var>caption</var> is name used
/// in the generated error message.
/// <p>As <var>caption</var> is used to create a JavaScript message, it needs to
/// have any special characters quoted accordingly.
ClassMethod GetSetCode(class As %String, member As %String, oref As %String, varname As %String, caption As %String, testcode As %String = "", listmode As %String = "") As %String [ Internal ]
{
}

/// Used by the csp:search tag to return a code snippet to retrieve the
/// logical value of the specified class member.
/// Constructs a command to convert the display value in the
/// variable named <var>varname</var> to a logical value and save it in
/// the variable named <var>value</var>.
ClassMethod GetLogicalValue(class As %String, member As %String, value As %String, varname As %String) As %String [ Internal ]
{
}

/// Returns true if property <var>prop</var> has a DisplayToLogical method.
ClassMethod HasD2L(class As %String, prop As %String) As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Returns true if property <var>prop</var> has a LogicalToDisplay method.
ClassMethod HasL2D(class As %String, prop As %String) As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Recursively builds an array of orefs to all the children
/// of element <var>parent</var>. Text atoms are not included.
ClassMethod GetElementChildren(parent As %CSP.Element, ByRef children) [ Internal ]
{
}

/// Writes out the contents of the stream as quoted text.<br>
/// <var>mode</var> can be HTML or JS.
ClassMethod EscapeStream(stream As %AbstractStream, mode As %String = "HTML") As %String [ Internal, ProcedureBlock = 1 ]
{
}

/// Gets the contents of a list of datatypes as a delimiter separated string
ClassMethod ListToDisplay(list As %Collection.ListOfDT, delim As %String = {$char(13,10)}, mode As %String = "HTML") As %String [ Internal, ProcedureBlock = 1 ]
{
}

/// Returns the HTML (as a table row) for a control for the
/// specified binding.
/// !!! pass in query/field for reference combo!
ClassMethod GetHTMLForField(class As %String, bind As %String, readonly As %Boolean = 0, precaption As %String = "<b>", postcaption As %String = ":</b>") As %String [ Internal ]
{
}

/// Test method
ClassMethod Test() [ Internal ]
{
}

/// Does the string <VAR>prop</VAR> represent a method?
/// If not return "", if so return the name of the method.
ClassMethod IsMethod(class As %String, prop As %String) As %String [ Internal ]
{
}

/// Return a string containing the data type (class name) for
/// property <VAR>prop</VAR> of class <VAR>class</VAR>.
ClassMethod GetPropertyType(class As %String, prop As %String) As %String [ CodeMode = expression, Internal ]
{
}

/// Returns whether property <VAR>prop</VAR> of class <VAR>class</VAR>
/// is a required field.
ClassMethod IsPropertyRequired(class As %String, prop As %String) As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Returns whether property <VAR>prop</VAR> of class <VAR>class</VAR>
/// is read only.
ClassMethod IsPropertyReadOnly(class As %String, prop As %String) As %Boolean [ Internal ]
{
}

/// Returns whether
/// property <VAR>prop</VAR> of class <VAR>class</VAR> is a stream.
ClassMethod IsPropertyStream(class As %String, prop As %String) As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Returns whether property <VAR>prop</VAR> of class <VAR>class</VAR>
/// has an index defined.
ClassMethod IsPropertySearchable(class As %String, prop As %String) As %Boolean [ Internal, ProcedureBlock = 1 ]
{
}

/// Return the value of the MAXLEN parameter (or "" if not defined) for
/// property <VAR>prop</VAR> of class <VAR>class</VAR>.
ClassMethod GetPropertyMaxLen(class As %String, prop As %String) As %String [ CodeMode = expression, Internal ]
{
}

/// Return a string indicating whether
/// property <VAR>prop</VAR> of class <VAR>class</VAR> is a collection.
ClassMethod GetPropertyCollection(class As %String, prop As %String) As %String [ CodeMode = expression, Internal ]
{
}

/// Return a string containing the caption for
/// property <VAR>prop</VAR> of class <VAR>class</VAR>.
ClassMethod GetPropertyCaption(class As %String, prop As %String) As %String [ CodeMode = expression, Internal ]
{
}

/// Return a string containing value of parameter <var>param</var> for
/// property <VAR>prop</VAR> of class <VAR>class</VAR>.
ClassMethod GetPropertyParam(class As %String, prop As %String, param As %String) As %String [ CodeMode = expression, Internal ]
{
}

}
