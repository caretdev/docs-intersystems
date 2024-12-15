/// A simple color selection control.<br>
/// This displays a set of cells of different colors, as
/// specified by the <property>colorList</property> property.<br>
/// The value of the control is the most recently selected color.
Class %ZEN.Component.colorPicker Extends control [ Deprecated, System = 3 ]
{

/// Do not include in "form" module.
Parameter SYSMODULE;

/// Comma-delimited list of CSS color values displayed within the control.
Property colorList As %ZEN.Datatype.csv;

/// Width of color cells.
Property cellWidth As %ZEN.Datatype.integer [ InitialExpression = 20 ];

/// Number of color cells in one row.
Property cellsPerRow As %ZEN.Datatype.integer [ InitialExpression = 16 ];

/// Optional. Choose a more extensive set of colors to display.
Property palette As %ZEN.Datatype.string(VALUELIST = ",basic,expanded") [ InitialExpression = "basic" ];

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// User has selected a color. If <var>notify</var>
/// is true invoke onchange notification.
ClientMethod selectColor(color, notify) [ Language = javascript ]
{
}

/// Set the value of a named property.<br>
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
