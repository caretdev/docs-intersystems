/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Code generator class for AutoForms.
Class %CSP.Util.AutoFormGenerator Extends %RegisteredObject [ Abstract, CompileAfter = %CSP.Util.FieldDefinition, ServerOnly = 1, System = 3 ]
{

/// Maximum number of properties to display within an HTML form or table.
Parameter MAXPROPERTIES = 100;

/// Generate Code/HTML to create a form for the given class.<br>
/// The caller is responsible for the FORM and TABLE wrapper tags
ClassMethod GenerateHTMLForm(pClassName As %String, pCode As %CharacterStream, ByRef pCurrCol As %Integer = 1, pColCount As %Integer = 1, pDynObj As %RegisteredObject = "", pContainer As %String = "", pTopClass As %String = "", pTopDynObj As %RegisteredObject = "") As %Status
{
}

/// Generate Code/HTML to create a table for the given class.<br>
/// The caller is responsible for the TABLE wrapper tags
ClassMethod GenerateHTMLTable(pClassName As %String, pCode As %CharacterStream, pDynObj As %RegisteredObject = "", pContainer As %String = "", pTopClass As %String = "", pTopDynObj As %RegisteredObject = "", ByRef pLevel As %Integer = 0) As %Status
{
}

/// Generate code fragment to copy request values into properties
ClassMethod GenerateSubmitCode(pClassName As %String, pCode As %CharacterStream, pDynObj As %RegisteredObject = "", pContainer As %String = "", pTopClass As %String = "", pTopDynObj As %RegisteredObject = "") As %Status
{
}

/// Build a list of properties in sequence order, including inherited properties.<br>
/// On return, <var>pList</var> is a list of properties names (subscripted by order number).
ClassMethod GetOrderedProps(pClassDef As %Dictionary.CompiledClass, ByRef pList As %Dictionary.CompiledProperty) As %Status
{
}

/// Build a list of properties in sequence order from the xdata block
/// <var>FormDefinition</var>.<br>
/// This does not include inherited properties.<br>
/// On return, <var>pList</var> is a list of properties names (subscripted by order number).
ClassMethod GetOrderedPropsXML(pClassDef As %Dictionary.CompiledClass, ByRef pList As %Dictionary.CompiledProperty)
{
}

ClassMethod TextMe(pText As %String, pDomain As %String, Output pErrored As %Boolean = 0) As %String
{
}

/// Return a string of HTML defining an HTML control
/// for the given datatype property.<br>
/// The value of the control should use the express pValExpr.<br>
/// <var>pName</var> is the name to use for the control.<br>
/// <var>pType</var> is the normalized type (class name) for the property.
ClassMethod GetPropCode(pName As %String, pType As %String, pPropDef As %Dictionary.CompiledProperty, pDynamic As %Boolean = 0, pVal As %String = "") As %String
{
}

/// Get localized text for captions
ClassMethod LocalizeText(pText As %String, pDomain As %String = "%Utility") As %String
{
}

}
