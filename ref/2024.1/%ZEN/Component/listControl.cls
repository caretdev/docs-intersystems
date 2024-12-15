/// Base class for controls that display a list of values.
Class %ZEN.Component.listControl Extends control [ Abstract, Deprecated, System = 3 ]
{

/// Defines set of values for choices for this select control as a csv-list.<br/>
/// If your data include commas, escape them with "\,".<br/>
Property valueList As %ZEN.Datatype.csv;

/// (optional) Defines set of displayed choices for this select control as a csv-list.<br/>
/// The entire list is a localized value.<br/>
/// If your data include commas, escape them with "\,".<br/>
Property displayList As %ZEN.Datatype.csv(ZENLOCALIZE = 1);

/// (optional) Name of the class containing the query that will
/// provide contents of this table.
Property queryClass As %ZEN.Datatype.className;

/// (optional) Name of the class containing the query that will
/// provide contents of this table.
Property queryName As %ZEN.Datatype.classMember(MEMBERTYPE = "QUERY");

///  (optional) If there are multiple data columns returned by the class query
///  this is the column number (1-based) of the column that will provide the display
///  value for this control.<br>
///  If this value is greater than the number of columns in the query or unspecified
///  then the second column will be used.<br>
///  This property is only used if <property>queryClass</property> and <property>queryName</property> are specified.
Property choiceColumn As %ZEN.Datatype.integer(MINVAL = 1, ZENSETTING = 0) [ InitialExpression = 2 ];

///  (optional) If there are multiple data columns returned by the class query
///  this is the column number (1-based) of the column that will provide the logical
///  value for this control.<br>
///  If this value is greater than the number of columns in the query or unspecified
///  then the first column will be used.<br>
///  This property is only used if <property>queryClass</property> and <property>queryName</property> are specified.
Property valueColumn As %ZEN.Datatype.integer(MINVAL = 1, ZENSETTING = 0) [ InitialExpression = 1 ];

/// (optional) SQL SELECT statement that, if present, provides values for the select
/// list. The first column of the results provides the value, and the
/// second column, if present, provides the display value.<br>
/// If defined, this takes precedence over
/// <property>queryClass</property> and <property>queryName</property>.
Property sql As %ZEN.Datatype.sql;

/// User-defined list of query parameters.<br>
/// If this control uses a query, these values are used to provide values for any run-time query parameters.
Property parameters As list Of %ZEN.Auxiliary.parameter(XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

/// If a query is used to provide data, this is the maximum number of
/// items that will be displayed.
Property maxRows As %ZEN.Datatype.integer [ InitialExpression = 500 ];

/// Called at draw-time to get the ($List) of values and display values.
Method %BuildValueLists(Output pValueList As %List, Output pDisplayList As %List) As %Status
{
}

/// Set the value of a named property.<br>
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
