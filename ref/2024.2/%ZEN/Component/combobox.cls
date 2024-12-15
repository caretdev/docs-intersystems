/// A <class>combobox</class> is a specialized type of <class>abstractComboBox</class> that
/// presents the user with a pre-defined set of options.<br>
/// The contents displayed by the <class>combobox</class> dropdown list are
/// defined using a set of <class>%ZEN.Auxiliary.option</class> objects.<br>
/// For example:
/// <example language="xml!fragment">
/// <combobox id="comboboxEdit" label="Editable" editable="true">
/// <option value="1" text="Apple" />
/// <option value="2" text="Banana" style="font-size: 2.5em; "/>
/// </combobox>
/// </example>
Class %ZEN.Component.combobox Extends abstractComboBox [ Deprecated, System = 3 ]
{

/// Set of options displayed within the combobox. Each option is a <class>%ZEN.Auxiliary.option</class>
/// object. For each option you specify a logical value, a display value, and an optional CSS style.
Property options As list Of %ZEN.Auxiliary.option(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLREF = 1, XMLTYPECONSTRAINT = "CHOICE", ZENSETTING = 0);

/// (Optional) A csv-list of values used for logical values within this combobox.<br/>
/// If this is defined, then the <property>options</property> property is ignored.<br/>
/// If your data include commas, escape them with "\,".<br/>
Property valueList As %ZEN.Datatype.csv;

/// (Optional) A csv-list of values used for display values within this combobox.<br/>
/// This is only used if the <property>valueList</property> property is defined.<br/>
/// The entire list is a localized value.
/// If your data include commas, escape them with "\,".<br/>
Property displayList As %ZEN.Datatype.csv(ZENLOCALIZE = 1);

/// Lookup up the display value for the combobox given
/// a logical value.<br>
/// This is called when the control is initially drawn.<br/>
Method %GetDisplayValue(pValue As %String) As %String
{
}

/// Internal method.<br>
/// Create contents of drop down box using DHTML.
ClientMethod renderDropdown() [ Internal, Language = javascript ]
{
}

/// This method fills in reasonable default values for
/// this control. Used by tools (such as Control Tester) to
/// dynamically create controls.
Method %SetDefaultValues()
{
}

/// Return number of items in dropdown list.<br>
ClientMethod getOptionCount() [ Language = javascript ]
{
}

/// Return the <class>%ZEN.Auxiliary.option</class> option object
/// associated with the given item (0-based) in the dropdown list.<br>
/// If <property>valueList</property> is defined, then this returns null.
ClientMethod getOption(idx) [ Language = javascript ]
{
}

/// Return the logical value of the given item (0-based) in the dropdown list.<br>
ClientMethod getOptionValue(idx) [ Language = javascript ]
{
}

/// Return the display text for the given item (0-based) in the dropdown list.<br>
ClientMethod getOptionText(idx) [ Language = javascript ]
{
}

/// Remove all options from this combobox.<br>
/// Clears the current value of the combobox.<br>
/// If there is a value for <property>valueList</property> it is cleared as well.
ClientMethod resetOptions() [ Language = javascript ]
{
}

/// Create a new option and append it to this combobox.
/// If <var>text</var> is omitted, then <var>value</var> is used as the display value.
ClientMethod appendOption(value, text, style) [ Language = javascript ]
{
}

/// Set the properties of an option within this combobox.<br>
/// <var>index</var> is the index number (0-based) of the option.<br>
/// If <var>text</var> is omitted, then <var>value</var> is used as the display value.
ClientMethod setOption(index, value, text, style) [ Language = javascript ]
{
}

/// Remove an option from this combobox.<br>
/// <var>index</var> is the index number (0-based) of the option.<br>
ClientMethod removeOption(index) [ Language = javascript ]
{
}

/// Set the value of a named property.<br>
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
