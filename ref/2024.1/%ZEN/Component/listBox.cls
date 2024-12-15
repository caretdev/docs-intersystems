/// This is a listBox control implemented using HTML primitives.<br>
/// It offers some features not provided by the HTML select control.<br>
/// The contents displayed by the <class>combobox</class> dropdown list are
/// defined using a set of <class>%ZEN.Auxiliary.option</class> objects.<br>
/// For example:
/// <example language="xml!fragment">
/// <listBox>
/// <option value="1" text="Apple" />
/// <option value="2" text="Banana"/>
/// </listBox>
/// </example>
/// The listBox control will support both drag and drop. If
/// <property>dragEnabled</property> is true, then the user can drag values
/// from the list box and drop them on other drop-enabled components.<br/>
/// If <property>dropEnabled</property> is true, then values can be dropped
/// onto the list. They will be appended to the end of the list.
/// If both drag and drop are enabled, then it is also possible to move
/// items within this listBox using the mouse.
Class %ZEN.Component.listBox Extends abstractListBox [ Deprecated, System = 3 ]
{

/// Set of options displayed within the combobox.
Property options As list Of %ZEN.Auxiliary.option(XMLELEMENTREF = 1, XMLPROJECTION = "ELEMENT", XMLREF = 1, XMLTYPECONSTRAINT = "CHOICE", ZENSETTING = 0);

/// Sample usage
XData Example
{
}

/// This method fills in reasonable default values for
/// this control. Used by tools (such as Control Tester) to
/// dynamically create controls.
Method %SetDefaultValues()
{
}

/// Internal method.<br>
/// Create contents of list box using DHTML.
ClientMethod renderListBox() [ Internal, Language = javascript ]
{
}

ClientMethod getOptionCount() [ Language = javascript ]
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

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// Remove all options from this listBox.<br>
/// Clears the current value of the listBox.<br>
/// If there is a value for <property>valueList</property> it is cleared as well.
ClientMethod resetOptions() [ Language = javascript ]
{
}

/// Create a new option and append it to this listBox.
/// If <var>text</var> is omitted, then <var>value</var> is used as the display value.
ClientMethod appendOption(value, text, style) [ Language = javascript ]
{
}

/// Create a new option and insert it into the set of listBox options.
/// The new option is inserted immediately before the option with index
/// <var>index</var>.
/// If <var>text</var> is omitted, then <var>value</var> is used as the display value.
ClientMethod insertOption(index, value, text, style) [ Language = javascript ]
{
}

/// Set the properties of an option within this listBox.<br>
/// <var>index</var> is the index number (0-based) of the option.<br>
/// If <var>text</var> is omitted, then <var>value</var> is used as the display value.
ClientMethod setOption(index, value, text, style) [ Language = javascript ]
{
}

/// Move the option at position <var>index</var> to position
/// <var>newIndex</var> (0-based). Slide other options if need be.
ClientMethod moveOption(index, newIndex) [ Language = javascript ]
{
}

/// Remove an option from this listBox.<br>
/// <var>index</var> is the index number (0-based) of the option.<br>
ClientMethod removeOption(index) [ Language = javascript ]
{
}

/// Called after refreshContents; make sure our contents are updated.
ClientMethod onRefreshContents() [ Internal, Language = javascript ]
{
}

/// Default drop handler for listBox components.
ClientMethod dropStartHandler(dragData) [ Language = javascript ]
{
}

}
