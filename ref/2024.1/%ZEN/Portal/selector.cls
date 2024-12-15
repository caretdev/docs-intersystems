/// Selector component for Portal applications.
/// This is a specialized form of text control that
/// allows for free form text entry or context-aware selection from a list.
Class %ZEN.Portal.selector Extends %ZEN.Component.control [ Deprecated, System = 3 ]
{

Parameter DEFAULTCONTROLCLASS = "selectorInput";

/// Size of the input area for this text control.
Property size As %ZEN.Datatype.integer(MINVAL = 0);

/// Context string used to determine the selection list for this component.<br/>
/// A context string take the form of a URL:<br/>
/// SearchClass/SearchName?parm1=value&parm2=value<br/>
/// <i>SearchClass</i> is the name of a <class>%ZEN.Portal.ContextSearch</class>
/// search class that contains the search to perform.<br/>
/// <i>SearchName</i> is the name of the search method to invoke within
/// the search class.<br/>
Property context As %ZEN.Datatype.uri;

/// Flag to indicate whether multiSelect mode should be used when displaying the dropdown menu.
/// If this value is true, then the contents of the control are treated as a delimited list using
/// <property>separator</separator> as the delimiter. The dropdown will then present the user with a list
/// of checkboxes with the previously entered values checked. Checking and unchecking values will toggle
/// whether the property is included in the list.<br/>
/// NOTE: MultiSelect mode should not be used in conjunction with context-based lookups, as the behaviour
/// which could come from this approach would not be intuitive or easy to use.
Property multiSelect As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Define what delimiter to use for list properties when <property>multiSelect</property> is true.
Property separator As %ZEN.Datatype.string [ InitialExpression = "," ];

/// onkeyup event handler:
/// This event is fired when a key is released when this control has focus.
/// The HANDLER parameter is used to trigger the default onkeyup handler defined in
/// <method>onkeyupHandler</method>(). If onkeyup is specified in the component,
/// then that specific code will be invoked rather than that in the default event handler, and it
/// is then the responsibility of the developer to call the <method>onkeyupHandler</method>() function
/// defined in this class.
Property onkeyup As %ZEN.Datatype.eventHandler(HANDLER = """_$select((..onkeyup'=""""): ""return zenFireEvent('""_..index_""','""_$ZCVT($S(..onkeydown'[""#("":..onkeydown,1:..%Eval(..onkeydown,""JS"")),""O"",""JS"")_""','onkeydown',event);"", 1: ""zenPage.getComponent(""_..index_"").onkeyupHandler(event,""_..index_"");"")_""");

/// defines style sheet used by this component
XData CSS3Style
{
}

/// defines style sheet used by this component
XData Style
{
}

/// Draw content of control.
Method %DrawHTML()
{
}

/// User has pressed the selector button.
ClientMethod showSelector() [ Language = javascript ]
{
}

/// Get the HTML contents of the dropdown area for the selector.<br/>
/// <var>pContext</var> is the (resolved) context string for the control.<br/>
/// <var>pSearchKey</var> is the current contents of the control.<br/>
/// <var>pMultiSelect</var> is a flag to indicate whether a multiSelect dropdown should be displayed.<br/>
/// <var>pSeparator</var> indicates which separator character should be used if <var>pMultiSelect</var> is true.<br/>
ClassMethod RenderDropdownContent(pIndex As %Integer, pContext As %String, pSearchKey As %String, pMultiSelect As %Boolean, pSeparator As %String = ",") As %Boolean [ ZenMethod ]
{
}

/// Render the HTML contents of the dropdown area for the selector.<br/>
/// <var>pContext</var> is the (resolved) context string for the control.<br/>
/// <var>pSearchKey</var> is the current contents of the control.<br/>
/// <var>pMultiSelect</var> is a flag to indicate whether a multiSelect dropdown should be displayed.<br/>
/// <var>pSeparator</var> indicates which separator character should be used if <var>pMultiSelect</var> is true.<br/>
ClassMethod %RenderDropdown(pIndex As %Integer, pContext As %String, pSearchKey As %String, pMultiSelect As %Boolean, pSeparator As %String = ",") As %Status
{
}

/// Reveal the dropdown for this selector.
ClientMethod showDropdown(html) [ Internal, Language = javascript ]
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
/// visible. Resizing the window while the dropdown is open can cause the
/// base component and its dropdown to become detached, this method traps such
/// occurences and allows the dropdown to be repositioned.
ClientMethod onresizeHandler() [ Language = javascript ]
{
}

ClientMethod adjustDropdownPosition() [ Language = javascript ]
{
}

/// Find the div element used to display modal popups.
ClientMethod getModalDiv() [ Language = javascript ]
{
}

/// User has selected an item in the dropdown list.
ClientMethod selectItem(value) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

ClientMethod toggleIconDisplay(hide) [ Language = javascript ]
{
}

/// Default onkeyup handler to allow drop-down to be displayed (by pressing DOWN)
/// or hidden (by pressing ESCAPE). This method is only invoked if no onkeyup event
/// is defined for the selector using the standard onkeyup attribute. Should a developer
/// make use of the onkeyup callback, it is his/her responsibility to determine whether
/// this function should be invoked.
ClientMethod onkeyupHandler(event, index) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

/// This client event, if present, is fired when the containing group is made visible.
ClientMethod onDisplayHandler() [ Language = javascript ]
{
}

/// Adjust size of control.
ClientMethod adjustSize() [ Language = javascript ]
{
}

}
