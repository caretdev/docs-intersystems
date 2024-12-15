/// This is a specialized control that displays a set
/// of checkBoxes based on a list of values.<br>
/// The list of values is specified by the <property>valueList</property>. This
/// is a csv-list of values that the user can select. If <property>displayList</property> is
/// provided, it is used to provide the displayed captions for the buttons.<br>
/// If there is an empty value ("") within the items in <property>valueList</property> (e.g., ",A,B,C"),
/// then an additional button will be displayed for the empty value. The caption for this empty
/// value is specified by the <property>emptyCaption</property>.<br>
/// It is assumed that every value within the set of value is distinct;
/// A <property>valueList</property> containing duplicate items (e.g., "A,A,A") will lead to strange
/// beahavior for the user.<br>
/// The nominal value of the <class>multiSelectSet</class> is a csv-list of all options currently
/// checked.  The order of items appearing in this list will be the same as their listings in the
/// original valueList provided.<br>
/// It is possible to programmatically set the value of the <class>multiSelectSet</class> to any arbitary value
/// using the <method>setValue</method> method and providing either a single value or a csv-list
/// of values. If no values in the list provided to the <class>multiSelectSet</class>
/// corresponds to an item in the set of values, then all buttons in the set will be unchecked.
Class %ZEN.Component.multiSelectSet Extends listControl [ Deprecated, System = 3 ]
{

/// Subclasses can set this to change the the default orientation of the options
Parameter DEFAULTLAYOUT As STRING = "vertical";

/// Defines set of titles (tooltip text) for each of
/// the choices of this multiSelectSet as a csv-list.
Property titleList As %ZEN.Datatype.csv(ZENLOCALIZE = 1);

/// This caption is used for any radio buttons within this multiSelectSet
/// that have an empty ("") display value.
Property emptyCaption As %ZEN.Datatype.caption [ InitialExpression = "None" ];

/// CSS class to apply to the control's captions.
Property captionClass As %ZEN.Datatype.cssClass [ InitialExpression = "multiSelectSetCaption" ];

/// Count of options within this multiSelectSet.
Property optionCount As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// Specifies how options within this group should be layed out.  Valid values are "horizontal"
/// and "vertical"
Property layout As %ZEN.Datatype.string(MAXLEN = 12, VALUELIST = ",horizontal,vertical") [ InitialExpression = {..#DEFAULTLAYOUT} ];

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// This method fills in reasonable default values for
/// this control. Used by tools (such as Control Tester) to
/// dynamically create controls.
Method %SetDefaultValues()
{
}

/// User click on checkbox or caption for choice;
/// select associated button and invoke callbacks.
ClientMethod clickItem(choice) [ Language = javascript ]
{
}

/// Internal method to set css class used for checkbox captions.
ClientMethod setCaptionClass(cls) [ Internal, Language = javascript ]
{
}

/// Internal method to compute the list of all selected options in the valueList.
/// This string is the nominal 'value' of the widget itself
ClientMethod updateValue() [ Internal, Language = javascript ]
{
}

/// Internal method to select or unslection all options uniformly.
ClientMethod selectUniform(flag) [ Internal, Language = javascript ]
{
}

/// Selects all options in the set
ClientMethod selectAll() [ Language = javascript ]
{
}

/// Deselects all options in the set
ClientMethod selectNone() [ Language = javascript ]
{
}

/// Set the value of a named property.<br>
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

ClientMethod onupdateHandler() [ Language = javascript ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
