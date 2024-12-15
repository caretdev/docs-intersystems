/// Form component.<br>
/// This is a specialized type of group that wraps its
/// constituent components within an HTML form element.<br>
/// Typically a form contain a set of controls. These are used
/// to collect input from a user. This input is sent to the server
/// for processing via an HTML submit operation.<br>
/// The contents of a form can be submitted in two ways:
/// When the user clicks a <class>submit</class> button
/// placed within the form, or by calling the <method>submit</method>
/// of this form object.<br>
/// Note that ZEN automatically handles the details of the submit
/// operation including invoking server callbacks and error processing.
/// All forms are submitted using the HTTP POST submission method.
Class %ZEN.Component.form Extends (group, dataView) [ Deprecated, System = 3 ]
{

Parameter SYSMODULE = "form";

Parameter DEFAULTGROUPCLASS = "form";

/// Default style for cells within forms
Parameter DEFAULTGROUPSTYLE = "padding: 5px;";

/// URL to go to <i>after</i> this form is submitted successfully.
/// This value may be overwritten by a specific submit button.
Property nextPage As %ZEN.Datatype.uri;

/// Specifies the target for the form.
/// (Refer to the HTML form element for details).
Property target As %ZEN.Datatype.string;

/// Specifies the action attribute for the form.<br/>
/// Setting this will override the default behavior of Zen forms (i.e. the
/// normal submit logic will not be executed). This should only be used for special
/// cases where direct control of the action attribute is required.
Property action As %ZEN.Datatype.uri;

/// Specifies the method attribute for the form.<br/>
/// Setting this will override the default behavior of Zen forms.
/// This should only be used for special
/// cases where direct control of the method attribute is required.
Property method As %ZEN.Datatype.string(VALUELIST = ",post,get");

/// Specifies the enctype for the form.
/// (Refer to the HTML form element for details).
Property enctype As %ZEN.Datatype.string;

/// If true (the default), automatically invoke this form's
/// <method>validate</method> whenever this form is submitted.
Property autoValidate As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// Value displayed in alert box by the <method>validate</method>
/// method when the contents of this form are invalid.<br>
/// This is a localized value.
Property invalidMessage As %ZEN.Datatype.caption [ InitialExpression = "This form contains invalid values. Please correct the following field(s) and try again." ];

/// Value displayed in alert box by the <method>save</method>
/// method when an attempt is made to save a form bound to readonly data model<br>
/// This is a localized value.
Property readOnlyMessage As %ZEN.Datatype.caption [ InitialExpression = "This data is read only." ];

/// Value displayed in the component with id <property>messageTargetId</property> when this form
/// is not connected to a data model; the form is connected to a controller but
/// the controller does not have a data model.
/// This is a localized value.
Property noModelMessage As %ZEN.Datatype.caption;

/// If defined, this is the id of a control (which could be anywhere on the page) that will display messages, such as
/// the <property>noModelMessage</property>. The message is displayed by setting the
/// <property>value</property> property of the identified control.
Property messageTargetId As %ZEN.Datatype.id;

/// onsubmit event handler:
/// This event is fired when this form is about to be submitted.
/// It provides a chance to perform client-side validation of values
/// within the form. If this event handler returns false, then
/// the submit operation will not occur.<br>
/// Note that unlike the HTML onsubmit event, this callback is
/// <i>always</i> called when the form is submitted.
Property onsubmit As %ZEN.Datatype.eventHandler(HANDLER = "");

/// onreset event handler:
/// This event is fired when this form is about to be reset.
Property onreset As %ZEN.Datatype.eventHandler;

/// ondefault event handler:
/// This is a special event that is fired when the user performs
/// an action that triggers the default action for a form. Typically
/// this is when the user presses the Enter key within a control within
/// the form.
Property ondefault As %ZEN.Datatype.eventHandler(HANDLER = "");

/// onchange event handler:
/// This event is fired when the value of a control on this form is
/// changed by the user or when the modified flags are cleared.<br>
/// When fired for a control, the event handler can use an argument called
/// 'control' to get a reference to the modified control. When fired in the
/// case of a call to <method>clearModified</method>, this argument will be null.
Property onchange As %ZEN.Datatype.eventHandler(HANDLER = "");

/// onvalidate event handler:
/// This event is fired when this form's validate method is called.
Property onvalidate As %ZEN.Datatype.eventHandler(HANDLER = "");

/// oninvalid event handler:
/// This event is fired when this form's validate method determines
/// that the contents of this form are invalid. This provides the application
/// with a chance to display a custom message.
Property oninvalid As %ZEN.Datatype.eventHandler(HANDLER = "");

/// (Optional) ID value used by the <method>OnLoadForm</method> method to load
/// data for this form.<br>
/// If this form is connected to a dataController then this value will be ignored.
Property key As %ZEN.Datatype.string(ZENEXPRESSION = 1);

/// If true, then programmatic changes, via the control's setValue method,
/// to controls in this form will trigger onchange events
/// and notify a dataController if present.<br/>
/// The default is false. In this case, events are only raised in response to user actions.
Property propagateChanges As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// (Optional) Name of Server-side callback method to call to get values for this form.<br>
/// This must be the name of a server-only method in the page
/// class that contains this form component.<br>
Property OnLoadForm As %ZEN.Datatype.delegator(FORMALSPEC = "pID:%String,*pValues:%String", RETURNTYPE = "%Status");

/// (Optional) Name of Server-side callback method to call
/// when this form is submitted. If this is not specified, then the
/// page's <method>%OnSubmit</method> method is called instead.<br>
/// This must be the name of a server-only method in the page
/// class that contains this form component.
Property OnSubmitForm As %ZEN.Datatype.delegator(FORMALSPEC = "pSubmit:%ZEN.Submit", RETURNTYPE = "%Status");

/// (Optional) Indicates whether controls in this form can by default have their values automatically completed by the browser.<br>
/// This setting can be overridden by an autocomplete attribute on an element belonging to the form.
Property autocomplete As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

Method %DrawHTML()
{
}

/// This callback gives form subclasses a chance to add additional
/// hidden fields.
Method %OnDrawForm() As %Status [ CodeMode = expression ]
{
}

/// Called just after this form is added to the page.<br>
/// Invokes the OnLoadForm callback for this form.
Method %OnAddToPageAfter() As %Status
{
}

/// Internal method.<br>
/// Inject additional controls into this when it is added to the page.
/// This is implmented by subclasses.
Method %InjectControls() As %Status [ CodeMode = expression ]
{
}

/// Internal method.<br>
/// Invoke server-side event handler (if defined) to get
/// values for this form.
Method %LoadForm(pKey As %String, pOnLoadForm As %String, ByRef pValues As %String) As %Status [ Internal ]
{
}

/// Internal method.<br>
/// Copies values from a dataController object to the
/// controls that belong to this form.
Method %BindDataControls(pController As %ZEN.Auxiliary.dataController, pGroup As %ZEN.Component.group = "") As %Status [ Private ]
{
}

/// Reload the contents of this form given a key value .
ClientMethod reload(key) [ Language = javascript ]
{
}

/// Internal method.<br>
/// Get values for form from user callback;
/// Apply them to client form.
Method ReloadForm(pFormIndex As %Integer, pKey As %String) [ ZenMethod ]
{
}

/// Return the HTML form element associated with this component.
/// This is provided in case there are addition HTML form properties
/// or methods that an application needs access to.
ClientMethod getFormElement() [ Language = javascript ]
{
}

/// If this form is connected to a dataController, then
/// validate the contents of the form and then save the data
/// to the server via the dataController.
/// Return the id value used to save the data or "" if not saved.<br>
/// If this form is not connected to a dataController, this
/// method does nothing.
ClientMethod save() [ Language = javascript ]
{
}

/// Submit the HTML form associated with this component.
/// <var>action</var> if defined, is the action value that
/// is passed on to the server %OnSubmit callback method.
ClientMethod submit(action) [ Language = javascript ]
{
}

/// Reset the HTML form associated with this component.
ClientMethod reset() [ Language = javascript ]
{
}

/// Internal method.<br>
/// Onsubmit event handler. This is an internal method
/// used to trap the default action of the form.
ClientMethod submitHandler() [ Language = javascript ]
{
}

/// Internal method.<br>
/// This handler is called whenever the value of a control within
/// this form is changed by the user.
ClientMethod controlChangeHandler(control, fire) [ Internal, Language = javascript ]
{
}

/// Test if the contents of the form have been modified.
/// This is done by calling the isModified method for each control
/// on the form.
ClientMethod isModified() [ Language = javascript ]
{
}

/// Clear the modified state of this form by visiting every control
/// on the form and resetting its orginalValue property to its
/// current value.<br/>
/// If <var>reset</var> is provided and true, then this also sets
/// the value of every control to '';
ClientMethod clearModified(reset) [ Language = javascript ]
{
}

/// Validate the contents of this form.<br>
/// This does the following:<br>
/// <ul>
/// <li>Invokes the form-specific onvalidate callback, if present.</li>
/// <li>Calls the <method>validationHandler</method> method for each control within this form.</li>
/// </ul>
/// It returns true if the form is valid.
ClientMethod validate() [ Language = javascript ]
{
}

/// Given an associative array of the form values[name] = value,
/// set the value of the controls within this form by control name.
ClientMethod setValuesByName(values) [ Language = javascript ]
{
}

/// Return the current values of all controls in this form as a zenProxy object.
/// The names of the properties within the proxy object are based on the
/// each control's <property>name</property> attribute.
ClientMethod getValuesAsObject() [ Language = javascript ]
{
}

/// Internal client-side method.<br>
/// Copies values from a dataController object to the
/// controls that belong to this form.<br>
/// If <var>dataBinding</var> is not null, then binding only applies to
/// controls with that dataBinding value.<br>
/// If <var>clear</var> is true, then clear the cache of any controls (i.e.
/// comboboxes).
ClientMethod bindValues(dataBinding, clear) [ Internal, Language = javascript ]
{
}

/// Internal method.
/// Construct an array of references to every control that
/// belongs to this form.
/// If <var>sortBy</var> is defined, it indicates how the
/// controlList should be ordered, "name", "id".
ClientMethod getControlList(sortBy) [ Language = javascript ]
{
}

/// Show a message by setting the value of the control identified by
/// <property>messageTargetId</property>.
/// Returns true if the message was displayed.
ClientMethod showMessage(message) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Notification that the dataController associated with this form
/// has raised an event.
ClientMethod notifyViewHandler(reason, data1, data2, data3) [ Language = javascript ]
{
}

/// Compensate for Chrome's increasingly aggressive autofill behavior
/// by resetting the client-side settings to the server-side originals.
/// This method should be called after page load (and Chrome's auto-fill
/// cycle) but before the user has had a change to start editing things.
/// Optimally this would be done via a setTimeout in the onload method
/// if autofill has been set to false.
ClientMethod undoAutofill() [ Internal, Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
