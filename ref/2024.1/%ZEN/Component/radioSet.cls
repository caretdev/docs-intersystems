/// This is a specialized control that displays a complete set
/// of radio buttons based on a list of values.<br>
/// The list of values is specified by the <property>valueList</property>. This
/// is a csv-list of values that the user can select. If <property>displayList</property> is
/// provided, it is used to provide the displayed captions for the buttons.<br>
/// If there is an empty value ("") within the items in <property>valueList</property> (e.g., ",A,B,C"),
/// then an additional button will be displayed for the empty value. The caption for this empty
/// value is specified by the <property>emptyCaption</property>.<br>
/// It is assumed that every value within the set of value is distinct;
/// A <property>valueList</property> containing duplicate items (e.g., "A,A,A") will lead to strange
/// beahavior for the user.<br>
/// It is possible to programmatically set the value of the <class>radioSet</class> to any arbitary value
/// using the <method>setValue</method> method. If the value of the <class>radioSet</class> does
/// not correspond to an item in the set of values, then all buttons in the set will be unchecked.
Class %ZEN.Component.radioSet Extends listControl [ Deprecated, System = 3 ]
{

/// Defines set of titles (tooltip text) for each of
/// the choices of this radioSet as a csv-list.
Property titleList As %ZEN.Datatype.csv(ZENLOCALIZE = 1);

/// This caption is used for any radio buttons within this radioSet
/// that have an empty ("") display value.
Property emptyCaption As %ZEN.Datatype.caption [ InitialExpression = "None" ];

/// CSS class to apply to the control's captions.
Property captionClass As %ZEN.Datatype.cssClass [ InitialExpression = "radioSetCaption" ];

/// Specifies whether the radio buttons appear horizontally (default) or vertically
Property layout As %ZEN.Datatype.string(VALUELIST = ",horizontal,vertical") [ InitialExpression = "horizontal" ];

/// Count of options within this radioSet.
Property optionCount As %ZEN.Datatype.integer(XMLPROJECTION = "none") [ InitialExpression = 0 ];

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

/// User click on radio button or caption for radio button choice;
/// select associated button and invoke callbacks.
ClientMethod clickItem(choice) [ Language = javascript ]
{
}

/// Internal method to set css class used for radio captions.
ClientMethod setCaptionClass(cls) [ Internal, Language = javascript ]
{
}

/// Set the value of a named property.<br>
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
