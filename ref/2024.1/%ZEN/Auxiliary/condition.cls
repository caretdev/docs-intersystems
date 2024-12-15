/// Defines a style-condition for a <class>%ZEN.Component.tablePane</class>.<br>
/// A <class>%ZEN.Component.tablePane</class> may define one or more conditions. Each
/// condition is evaluated when the table is displayed and provides a way to change the style
/// of rows or cells within the table based on the data values within a given row.<br>
/// Each condition consists of:
/// <ul>
/// <li><property>colName</property> - The name of the column in the table that provides the value to test.</li>
/// <li><property>value</property> - The value to test against (a literal or a reference to another column value)</li>
/// <li><property>predicate</property> - The comparison operator to use for the test.</li>
/// <li><property>cellStyle</property> - The CSS style to apply to the target cell if the condition is true.</li>
/// <li><property>rowStyle</property> - The CSS style to apply to the current row if the condition is true.</li>
/// </ul>
Class %ZEN.Auxiliary.condition Extends %ZEN.Component.object [ Deprecated, System = 3 ]
{

/// Name of a column within the table that this condition applies to.
Property colName As %ZEN.Datatype.string(ZENEXPRESSION = 1);

/// Literal value that is compared against column value<br>
/// Note: if the value of <property>value</property> is enclosed in {}, then it refers to a column of that
/// name within the table. For example, "{PatientName}", will resolve to the value of the
/// <i>PatientName</i> column within the table.
Property value As %ZEN.Datatype.string(ZENEXPRESSION = 1);

/// The comparison operator used to compare the value of the <property>colName</property>
/// column with <property>value</property>.<br>
/// This is one of the following:
/// <ul>
/// <li>GT - Greater than</li>
/// <li>EQ - Equal to</li>
/// <li>LT - Less than</li>
/// <li>NEQ - Not equal to</li>
/// <li>GTEQ - Greater than or equal to</li>
/// <li>LTEQ - Less than or equal to</li>
/// <li>EXTEQ - File extension (text after last ".") equal to</li>
/// <li>CONTAINS - Contains</li>
/// <li>STARTSWITH - Starts with</li>
/// </ul>
Property predicate As %ZEN.Datatype.string(VALUELIST = ",GT,EQ,LT,NEQ,GTEQ,LTEQ,EXTEQ,STARTSWITH,CONTAINS") [ InitialExpression = "EQ" ];

/// Optional.
/// The name of the column to apply CellStyle to.
/// If this is not provided, then the column specified by <var>colName</var> is used as the target.
Property targetCol As %ZEN.Datatype.string;

/// Style to apply to cell if condition is true.<br>
/// This is a CSS style string: e.g., "color: red;"
Property cellStyle As %ZEN.Datatype.style;

/// Style to apply to row if condition is true.<br>
/// This is a CSS style string: e.g., "color: red;"
Property rowStyle As %ZEN.Datatype.style;

/// Internal Method.<br>
/// Evaluate this condition using the values in the
/// provided row arrays.
Method Eval(ByRef pValues As %String) As %Boolean [ Internal ]
{
}

}
