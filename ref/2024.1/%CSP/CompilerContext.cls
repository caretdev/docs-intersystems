/// This class represents the context of the current CSP compile.
/// This class is primarily a set of name/value pairs where the names
/// can be thought of as "properties".
Class %CSP.CompilerContext Extends %RegisteredObject [ Not ProcedureBlock, System = 3 ]
{

/// <property>IsBasic</property> is true (=1) if the current CSP page is written
/// in either Cache Basic or MV Basic.  The <property>IsBasic</property> should
/// not be modified by user code.
Property IsBasic As %Boolean;

/// <property>PageLanguage</property> is language used to implement the current CSP page.
/// Possible values are "cache", "basic" and "mvbasic".
/// The <property>PageLanguage</property> should not be modified by user code.
Property PageLanguage As %String;

/// The InScript property is true inside of an unrecognized script tag.
Property InScript As %Boolean;

/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this method.
Property keyArray As %String [ Internal, MultiDimensional, Private ];

/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this method.
Property propArray As %String [ Internal, MultiDimensional ];

/// This property is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this method.
Property qstruct As %String [ Internal, MultiDimensional ];

/// Return the value of property <VAR>property</VAR>. If the property is not
/// defined, returns a null string ("").
Method Get(property As %String, default As %String = "") As %String [ CodeMode = expression, Final ]
{
}

/// Set the value of property <VAR>property</VAR> to <VAR>value</VAR>.
Method Set(property As %String, value As %String) [ Final ]
{
}

/// Tests if property <VAR>property</VAR> is defined.
Method IsDefined(property As %String) As %Boolean [ CodeMode = expression, Final ]
{
}

/// Get the name of the next property.
Method Next(property As %String) As %String [ CodeMode = expression, Final ]
{
}

/// Removes property <VAR>property</VAR> from this object.
Method remove(property As %String) [ Final ]
{
}

/// Clear the contents of this object.
Method clear() [ Final ]
{
}

/// Display contents of this object to the console.
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this method.
Method dump() [ Final, Internal ]
{
}

/// Load this object from the <VAR>array</VAR>.
/// This method is for internal use only. You should not make direct
/// use of it within your applications. There is no guarantee made about either
/// the behavior or future operation of this method.
Method load(array) [ Final, Internal ]
{
}

/// Return the value associated with <VAR>key</VAR> and <VAR>name</VAR>.
/// All <VAR>key</VAR>'s used by CSP rules begin with "%".
/// If the value is not defined, returns a null string ("").
Method GetByKey(key As %String, name As %String, default As %String = "") As %String [ CodeMode = expression, Final ]
{
}

/// Set the value associated with <VAR>key</VAR> and <VAR>name</VAR>.
/// All <VAR>key</VAR>'s used by CSP rules begin with "%".
Method SetByKey(key As %String, name As %String, value As %String) [ Final ]
{
}

/// Remove the value associated with <VAR>key</VAR> and <VAR>name</VAR>.
/// All <VAR>key</VAR>'s used by CSP rules begin with "%".
Method RemoveByKey(key As %String, name As %String) [ Final ]
{
}

/// Test if the value associated with <VAR>key</VAR> and <VAR>name</VAR> is defined.
/// All <VAR>key</VAR>'s used by CSP rules begin with "%".
Method IsDefinedByKey(key As %String, name As %String) As %Boolean [ CodeMode = expression, Final ]
{
}

/// Get the next name for <var>key</var>.
Method NextByKey(key As %String, name As %String) As %String [ CodeMode = expression, Final ]
{
}

}
