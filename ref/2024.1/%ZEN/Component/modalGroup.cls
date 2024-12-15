/// Specialized group for creating a set of modal components
/// displayed within a page.<br>
/// To display a modalGroup, use the modalGroup's <method>show</method>
/// method. Use the zenPage object's <method>endModal</method> to remove the modalGroup.<br>
/// You can define the contents of a modalGroup in three different ways:<br>
/// <ol>
/// <li>Static mode: The modalGroup is defined within a page definition in the same
/// way as any other group. The contents of the group will be hidden until the <method>show</method>
/// is called.</li>
/// <li>Dynamic mode: The application creates a modalGroup dynamically (using
/// the page's <method>createComponent</method> method), adds components to it, and
/// displays it with the <method>show</method> method.</li>
/// <li>Built-in mode: The application uses the <method>show</method> method
/// to display one of the built-in groups: "msgBox" or "calendar".</li>
/// </ol>
Class %ZEN.Component.modalGroup Extends group [ Deprecated, System = 3 ]
{

Parameter DEFAULTLAYOUT = "vertical";

Parameter DEFAULTHIDDEN = 1;

/// If set, this indicates that a pre-defined modalGroup
/// of the specified type should be displayed.
/// This is set by the <method>show</method> method; applications
/// should not set this.
Property groupType As %ZEN.Datatype.string(VALUELIST = ",msgBox,calendar,dialog", XMLPROJECTION = "none", ZENSETTING = 0);

/// Title to display at top of modal group.
/// This is set dynamically by the <method>show</method> method.
/// For static modalGroups, it can be set in the original page definition.
Property groupTitle As %ZEN.Datatype.caption;

/// Optional.
/// User-defined seed value. This is an optional parameter that
/// is passed on to the <property>onaction</property> event handler.<br>
Property seed As %ZEN.Datatype.string;

/// This is used to hold a value for the modalGroup.<br>
/// This is set by the <method>show</method> method; applications
/// should not set this.
Property value As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENSETTING = 0);

/// onshowGroup event handler:
/// This event is fired when the modalGroup is made visible.
Property onshowGroup As %ZEN.Datatype.eventHandler;

/// onhideGroup event handler:
/// This event is fired when the modalGroup is hidden.
Property onhideGroup As %ZEN.Datatype.eventHandler;

/// onaction event handler:
/// client code to run when user takes action with pre-defined modalGroup.
Property onaction As %ZEN.Datatype.eventHandler;

/// Localizable "OK" caption displayed in OK button for a message box.
Property okCaption As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("OK","%ZEN")} ];

XData Style
{
}

XData CSS3Style
{
}

/// Return the HTML element used to display this modal group
ClientMethod getFloatingDiv() [ Language = javascript ]
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

/// Helper method to get the content for static modalGroups.
/// If the enclosing div has content, that content is returned,
/// and the enclosing div's content is cleared.
/// If <var>update</var> is true AND the modalBody element for
/// this group exists (i.e. the group has been displayed), then
/// the modalBody's content is updated to the new value.
ClientMethod getModalBodyContent(update) [ Language = javascript ]
{
}

/// Utility method:
/// Construct a wrapper around an instance method of this object
/// that can be used as an event listener.
ClientMethod wrapMethod(methodName) [ Internal, Language = javascript ]
{
}

/// mousedownHandler: handles start of move operation
ClientMethod mousedownHandler(evt) [ Language = javascript ]
{
}

/// mousemoveHandler: handles move operation
ClientMethod mousemoveHandler(evt) [ Language = javascript ]
{
}

/// mouseupHandler: handles end of move operation
ClientMethod mouseupHandler(evt) [ Language = javascript ]
{
}

/// Toggle "visibility" of dragMouseTrap. The trap should be completely transparent
/// but allows the component to trap mouse events reliably during drag operations.
ClientMethod toggleDragMouseTrap(show) [ Language = javascript ]
{
}

/// Start the ZLM drag-based resize operation.
ClientMethod startZLMResize(evt) [ Language = javascript ]
{
}

/// Start the ZLM drag-based move operation.
ClientMethod startZLMMove(evt) [ Language = javascript ]
{
}

/// Start ZLM drag once this._dragData has been set up.
ClientMethod startZLMDrag(evt) [ Language = javascript ]
{
}

/// Callback from the ZLM drag which is used to clean up.
ClientMethod endDrag(engine, wrapper) [ Language = javascript ]
{
}

/// Limit the x-axis changes to the current screen size.
ClientMethod constrainDragX(engine, wrapper, intendedX) [ Language = javascript ]
{
}

/// Limit the y-axis changes to the current screen size.
ClientMethod constrainDragY(engine, wrapper, intendedY) [ Language = javascript ]
{
}

/// Make this group visible with modal behavior.<br>
/// <var>title</var> is the optional title to display for the group. For a
/// static group, the application-defined value of <property>groupTitle</property> is
/// used if <var>title</var> is not supplied.<br>
/// <var>type</var> is the optional type of modalGroup to display. This can be:
/// <ul>
/// <li>"msgBox"-display the built-in message box.</li>
/// <li>"calendar"-display the built-in calendar box.</li>
/// <li>"dynamic"-display a dynamically created modalGroup.</li>
/// <li>"static"-display a modalGroup that has been defined as part of the page.</li>
/// <li>"dialog"-display the page with the URL supplied in <var>value</value> in an iframe.</li>
/// </ul>
/// If omitted, then the type will be "static" if the modalGroup has been defined
/// within the page object otherwise "dynamic".<br>
/// <var>value</var> is an optional value to display when a built-in modalGroup is used.<br>
/// <var>top</var>,<var>left</var>,<var>wid</var>,
/// and <var>hgt</var> are optional position and
/// dimensions to use for the modalGroup.<br>
/// <var>parms</var> is an optional object containing a set of
/// additional characteristics passed on to the modalGroup (as
/// a set of name/value pairs). Basically this is a way to pass
/// additional parameters to the popup calendar.
ClientMethod show(title, type, value, top, left, wid, hgt, parms) [ Language = javascript ]
{
}

/// Client-side method to return the value associated with this group.
ClientMethod getValue() As %String [ Final, Language = javascript ]
{
}

ClientMethod onDialogFrameLoad(contentWindow) [ Language = javascript ]
{
}

ClientMethod updateTitle(newTitle) [ Language = javascript ]
{
}

ClientMethod updateFrameSize(width, height) [ Language = javascript ]
{
}

/// This method handles user actions within a pre-defined
/// modalGroup.
ClientMethod actionHandler() [ Language = javascript ]
{
}

/// Hide the group.
ClientMethod hideGroup() [ Language = javascript ]
{
}

/// This method is deprecated as the fade effects for the modal now use CSS3 transition effects.
/// Slowly reveal the popup.
ClientMethod reveal() [ Internal, Language = javascript ]
{
}

/// Ensure that we remove the floating div when the component is deleted.
ClientMethod onDelete() [ Language = javascript ]
{
}

/// Don't allow the dialog to be closed unless the user explicitly does something
/// to close the popup or fire a valid action.
ClientMethod onCanEndModalHandler() [ Language = javascript ]
{
}

/// Make sure that we correctly track the HTML for static modal groups.
ClientMethod onRefreshContents() [ Language = javascript ]
{
}

}
