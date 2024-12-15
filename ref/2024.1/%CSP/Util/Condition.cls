/// This class is used internally by InterSystems IRIS. You should not make direct use of it within your applications. There is no guarantee made about either the behavior or future operation of this class.
/// <p>Defines a color-condition for a CSPX Table Pane.
Class %CSP.Util.Condition Extends (%SerialObject, %XML.Adaptor) [ Inheritance = right, ServerOnly = 1, System = 4 ]
{

XData Example
{
}

/// Name of column condition applies to
Property ColumnName As %String(MAXLEN = 50);

/// Literal value compared against column value<br>
/// Note: if value is enclosed in {}, then it is a column name...
Property Value As %String(MAXLEN = 100);

/// Comparison predicate applied to column value
Property Predicate As %String(VALUELIST = ",GT,EQ,LT,NEQ,GTEQ,LTEQ,EXTEQ,STARTWITH,NEQAND") [ InitialExpression = "EQ" ];

/// Style to apply to cell if condition is true.<BR>
/// This is a CSS style string: e.g., "color: red;"
Property CellStyle As %String(MAXLEN = 200);

/// Name of column condition to apply CellStyle to; use <var>ColumnName</var> if this is null.
Property TargetColumn As %String(MAXLEN = 50);

/// Style to apply to row if condition is true.<BR>
/// This is a CSS style string: e.g., "color: red;"
Property RowStyle As %String(MAXLEN = 200);

/// Evaluate this condition using the values in the
/// provided ResultSet.
/// Deprecated: use Eval2
Method Eval(pRS As %ResultSet) As %Boolean [ Deprecated ]
{
}

/// Evaluate this condition using the values in the
/// provided row arrays.
Method Eval2(ByRef pIndex As %String, ByRef pValues As %String) As %Boolean
{
}

/// Utility method to generate code for this object
Method GenerateCode() As %String
{
}

}
