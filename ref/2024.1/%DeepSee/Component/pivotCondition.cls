/// Defines an conditional formatting rule
/// within a <class>%DeepSee.Component.pivotTable</class> component.
Class %DeepSee.Component.pivotCondition Extends %ZEN.Component.object [ System = 3 ]
{

Parameter NAMESPACE = "http://www.intersystems.com/deepsee";

/// Range of cells for which this rule applies.
Property range As %ZEN.Datatype.string;

/// Condition operator.
Property operator As %ZEN.Datatype.string(VALUELIST = ",=,<>,>,<,>=,<=,BETWEEN,IN,IS NULL");

/// Value (or values) to test.
/// For IN and BETWEEN this is a comma-delimited list.
Property value As %ZEN.Datatype.csv;

/// CSS style to apply to cells that match this condition.
Property style As %ZEN.Datatype.style;

/// If defined, replace value with this text.
Property text As %ZEN.Datatype.string;

/// If defined, replace value with this icon.
Property icon As %ZEN.Datatype.uri;

/// If defined and <property>icon</property> is defined, replace value with this number of icons.
Property iconCount As %ZEN.Datatype.integer [ InitialExpression = 1 ];

/// Test if the given cell value matches this condition.
Method %EvaluateCondition(pRow As %Integer, pCol As %Integer, pValue As %String) As %Boolean
{
}

}
