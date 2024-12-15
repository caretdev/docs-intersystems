/// This is an abstract base class that provides common functionality
/// to the various combobox controls (such as <class>combobox</class> and
/// <class>dataCombo</class>).<br>
/// A combobox consists of text control that displays the current (display) value of
/// the control, and a dropdown list (that appears when activated by the user) that
/// displays a set of options. The contents of the dropdown list are provided
/// by subclasses of this base class.<br>
/// A combobox is itself a subclass of the <class>text</class> control.
/// You can use the various methods defined by the <class>text</class> control to manipulate
/// the text box portion of the combobox.<br>
/// <br>
/// Note that unlike other controls, a combobox is not a simple wrapper around
/// an HTML select control but is implemented using HTML primitives.
/// This is in order to provide additional functionality
/// than provided by the HTML select control (e.g., ability to edit values and, via subclassing, more
/// control over the contents of the drop down list.)
/// <div style="font-weight: bold;">Activating the dropdown list</div>
/// The dropdown list can be displayed in several manners. This behavior is
/// defined by the <property>comboType</property> property.
///
Class %ZEN.Component.abstractComboBox Extends text [ Abstract, Deprecated, System = 3 ]
{

Parameter DEFAULTCONTROLCLASS = "comboboxInput";

/// Default image for button in normal state.
Parameter DEFAULTBUTTONIMAGE = "images/combobox.png";

/// Default image for button in down state.
Parameter DEFAULTBUTTONIMAGEDOWN = "images/comboboxpress.png";

/// Indicates that this combobox should cache its dropdown contents.
Parameter USECACHEDIV As BOOLEAN = 0;

/// Specifies how the dropdown box is activated for the combobox.<br>
/// <ul>
/// <li>"image" indicates that a user-clickable image should be displayed next to the combobox text box.</li>
/// <li>"button" indicates that a button should be displayed next to the combobox text box.</li>
/// <li>"timer" indicates the dropdown should appear shortly after the user enters a value within the combobox text box.</li>
/// </ul>
Property comboType As %ZEN.Datatype.string(VALUELIST = ",image,button,timer") [ InitialExpression = "image" ];

/// URI of image to display for the combo button in its normal state.
Property buttonImage As %ZEN.Datatype.uri [ InitialExpression = {..#DEFAULTBUTTONIMAGE} ];

/// URI of image to display for the combo button in its down (pressed) state.
Property buttonImageDown As %ZEN.Datatype.uri [ InitialExpression = {..#DEFAULTBUTTONIMAGEDOWN} ];

/// If true, then this is an editable combobox (a user can directly edit the value within the input box).
Property editable As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If true, and if this is an editable combobox,
/// then values entered by the user are used as the value of the control,
/// otherwise the value is restricted to one of the choices within the dropdown list.
Property unrestricted As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Text (display) value of current item.
/// Do not access this directly; use getProperty('text') instead.
Property text As %ZEN.Datatype.string(XMLPROJECTION = "none");

/// Caption used for the dropdown button when <property>comboType</property>
/// is "button".
Property buttonCaption As %ZEN.Datatype.caption;

/// Popup title used for the dropdown button when <property>comboType</property>
/// is "button" or "image".
Property buttonTitle As %ZEN.Datatype.caption;

/// Specifies how long to wait, in milliseconds, after user finishes typing
/// before showing the dropdown when <property>comboType</property> is "timer".
Property delay As %ZEN.Datatype.integer [ InitialExpression = 250 ];

/// Index (0-based) of current selected option.<br>
/// This is the ordinal position of the current item within the dropdown list.
Property selectedIndex As %ZEN.Datatype.integer [ InitialExpression = -1 ];

/// If defined, override default width of dropdown window.<br>
/// This is a CSS length value, e.g., "400px"
Property dropdownWidth As %ZEN.Datatype.length;

/// If defined, override default height of dropdown window.<br>
/// This is a CSS length value, e.g., "400px"
Property dropdownHeight As %ZEN.Datatype.length;

/// If true, allow the dropdown window to display horizontal scroll bars
/// if they are needed (and its current CSS style specifies them).
Property hzScroll As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Internal use only; client flag used to track if the
/// dropdown is visible.
Property isDropdownVisible As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0 ];

/// If true, try and make the current item within the dropdown visible.<br>
Property scrollIntoView As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// defines style sheet used by this component
XData Style
{
}

/// Draw the input box and button for this combobox.<br>
/// Note that the actual value is placed in a hidden control as the
/// contents of the input box may not be the actual value.
Method %DrawHTML()
{
}

/// If implemented, allow control to provide initial contents of cache div.
Method %OnDrawCacheDiv() As %Boolean [ CodeMode = expression, Internal ]
{
}

/// Lookup up the display value for the combobox given
/// a logical value.<br>
/// This is called when the control is initially drawn.<br>
/// Note: this is implemented as an expression method; subclasses are
/// free to implement this as a regular method.
Method %GetDisplayValue(pValue As %String) As %String [ CodeMode = expression ]
{
}

/// Make dropdown visible
ClientMethod showDropdown() [ Language = javascript ]
{
}

/// Mouse down on combobox button
ClientMethod comboboxButtonDown(evt) [ Language = javascript ]
{
}

/// Mouse up on combobox button
ClientMethod comboboxButtonUp() [ Language = javascript ]
{
}

/// Mouse over combobox button
ClientMethod comboboxMouseOver() [ Language = javascript ]
{
}

/// Mouse leaves combobox button
ClientMethod comboboxMouseOut() [ Language = javascript ]
{
}

/// Keydown within input control.
ClientMethod inputKeyHandler(evt) [ Language = javascript ]
{
}

/// Start (or restart) timer used by "timer" mode.
/// Users should not call this method.
ClientMethod startTimer() [ Internal, Language = javascript ]
{
}

/// Clear timer used by "timer" mode.
/// Users should not call this method.
ClientMethod clearTimer() [ Internal, Language = javascript ]
{
}

/// This client method, if present, is called when this component is
/// removed from the page.
ClientMethod onDelete() [ Language = javascript ]
{
}

/// Timer event handler used by "timer" mode.
/// Users should not call this method.
ClientMethod timerHandler() [ Internal, Language = javascript ]
{
}

/// Change handler for input control.
/// Users should not call this method.
ClientMethod inputChangeHandler() [ Internal, Language = javascript ]
{
}

/// Blur handler for input control.
/// Users should not call this method.
ClientMethod inputBlurHandler(evt) [ Internal, Language = javascript ]
{
}

/// User has pressed the mouse within an item in the DropDown box.
ClientMethod itemMouseDown(evt, idx) [ Internal, Language = javascript ]
{
}

/// User has released the mouse within an item in the DropDown box.
ClientMethod itemMouseUp(evt, idx) [ Internal, Language = javascript ]
{
}

/// User has selected an item in the DropDown box.
/// If <var>show</var> is true, make item visible.
/// If <var>update</var> is true, update value of control.
ClientMethod selectItem(idx, show, update) [ Language = javascript ]
{
}

/// Return HTML element for given list item number.
ClientMethod getItemEl(idx) [ Language = javascript ]
{
}

/// Find the div element used to display the dropdown list.
ClientMethod getDropDownDiv() [ Language = javascript ]
{
}

/// Find the local div element used to cache the dropdown list.
ClientMethod getCacheDiv() [ Language = javascript ]
{
}

/// Adjust the placement and size of the dropdown box based on
/// current screen geometry and scrolling conditions.
ClientMethod adjustDropdownPosition() [ Language = javascript ]
{
}

/// Notification that this component is about to become modal.
ClientMethod onStartModalHandler(zindex) [ Language = javascript ]
{
}

/// Notification that this component is about to stop being modal.
ClientMethod onEndModalHandler(zindex) [ Language = javascript ]
{
}

/// This client event is fired when the page is resized and the dropdown is
/// visible.  Resizing the window while the dropdown is open can cause the
/// base component and its dropdown to become detached, this method traps such
/// occuranences and allows the dropdown to be repositioned.
ClientMethod onresizeHandler() [ Language = javascript ]
{
}

/// Set the value of a named property.<br>
/// Assume that subclasses that simply wrap HTML controls
/// have named the control 'control' or else have overridden
/// this method.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Create contents of the dropdown box using DHTML.<br>
/// This is overridden in subclasses.
ClientMethod renderDropdown() [ Language = javascript ]
{
}

/// Find and select item within the dropdown that matches current control value.
/// This is called when the dropdown appears to make sure that the current
/// item is highlighted.
ClientMethod findSelectedItem(force) [ Language = javascript ]
{
}

/// Given a logical value, lookup the display value within the current set of
/// options. Returns null if no match is found.<br>
/// Subclasses may override this to add additional lookup behavior.
ClientMethod findDisplayValue(value) [ Language = javascript ]
{
}

/// Return number of items in the dropdown list.<br>
/// This must be overridden in subclasses.
ClientMethod getOptionCount() [ Language = javascript ]
{
}

/// Return the logical value of the given item (0-based) in the dropdown list.<br>
/// This must be overridden in subclasses.
ClientMethod getOptionValue(idx) [ Language = javascript ]
{
}

/// Return the display text for the given item (0-based) in the dropdown list.<br>
/// This must be overridden in subclasses.
ClientMethod getOptionText(idx) [ Language = javascript ]
{
}

/// Client-side method to input focus to this control.
ClientMethod focus() [ Language = javascript ]
{
}

/// Default drag handler for comboBox.
ClientMethod dragStartHandler(dragData) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
