/// This Zen component displays a set of text buttons displayed
/// within a table. The number of columns is determined by the
/// <property>columns</property> property.<br/>
/// The contents of the <class>buttonView</class> are provided via the
/// user-defined <property>OnGetButtonInfo</property> callback.<br/>
/// This component is typically used to display progressive filter
/// buttons that allow a user to narrow down a search.
Class %ZEN.Component.buttonView Extends %ZEN.Component.component [ Deprecated, System = 3 ]
{

/// Number of columns of buttons to display.
Property columns As %ZEN.Datatype.integer(MINVAL = 1) [ InitialExpression = 4 ];

/// A string containing the current selected values.
/// This takes the form: "category:value;"
Property value As %ZEN.Datatype.string;

/// onselect event handler:
/// If defined, this event is fired when the user selects a new button.
/// The variable, <var>value</var> is passed to the event handler
/// and contains the current value of this component (same as
/// the <property>value</property> property).
Property onselect As %ZEN.Datatype.eventHandler;

/// Optional.
/// User-defined seed value. This is an optional parameter that
/// is passed on to the <method>OnGetButtonInfo</method> callback
/// method.<br>
Property seed As %ZEN.Datatype.string(ZENEXPRESSION = 1);

/// Optional.
/// Name of Server-side callback method that provides the list of items to display
/// for this component.<br>
/// This method should return an array, indexed by button number, that
/// defines the category, caption, value, and (optional) tooltip for each button. You can
/// also provide an optional, disabled flag, which, it true will make
/// the button disabled in all cases.
/// The array takes the form:<br/>
/// <example>
/// Set pInfo(n) = $LB(category,caption,value,tooltip,disabled)
/// </example>
/// When the user selects a button, all other buttons of the same category
/// are disabled (unless category is ""). Pressing the Reset button restores
/// clears all the selections.<br/>
/// This must be the name of a server-only method in the page
/// class that contains this view component.
Property OnGetButtonInfo As %ZEN.Datatype.delegator(FORMALSPEC = "seed:%ZEN.Datatype.string,&pInfo", RETURNTYPE = "%Status");

/// This Style block contains component-specific CSS style definitions.
XData Style
{
}

/// The %DrawHTML method draws the initial HTML for this component.
Method %DrawHTML()
{
}

/// Invoke user method to get list of options to display.
Method %GetButtonInfo(ByRef pInfo) As %Status
{
}

/// User clicked on item.
ClientMethod itemClicked(idx) [ Language = javascript ]
{
}

/// Reset state of buttons.
ClientMethod resetItems() [ Language = javascript ]
{
}

}
