/// A select list control.<br>
/// This control is based on the HTML select element.<br/>
/// Setting <property>readOnly</property> to true has the same effect
/// as disabling this component; this is the standard HTML behavior
/// for select controls.
Class %ZEN.Component.select Extends listControl [ Deprecated, System = 3 ]
{

Parameter DEFAULTCONTROLCLASS = "select";

/// Number of rows in the select control.
Property size As %ZEN.Datatype.integer(MINVAL = 0);

///  If true (the default), insert an extra row with the value of <property>emptyText</property>
///  at the top of the dropdown, unless <property>required</property> is true.
Property showEmpty As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

///  The text to be displayed in the "empty" item displayed if
///  <property>showEmpty</property> is true. The default is "".
Property emptyText As %ZEN.Datatype.caption;

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// Return the index of the current selected item (0-based) in the select component.
/// Returns -1 is no item is selected.
ClientMethod getSelectedIndex(idx) [ Language = javascript ]
{
}

/// Return the logical value of the given item (0-based) in the dropdown list.
ClientMethod getOptionValue(idx) [ Language = javascript ]
{
}

/// Return the display text for the given item (0-based) in the dropdown list.
ClientMethod getOptionText(idx) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
