/// A dynaForm (dynamic form) is a specialized type of <class>form</class>
/// that displays form whose controls are drawn automatically based on
/// the contents of <class>dataController</class> associated with the form.<br/>
/// For example:<br/>
/// <example language="html">
/// <dataController id="data" modelClass="ZENMVC.Person"/>
/// <dynaForm controllerId="data" injectControls="before">
/// <button caption="Save"/>
/// </dynaForm>
/// </example>
/// In this case, a form will be displayed with controls for each of the properties
/// in the class <class>ZENMVC.Person</class>.<br/>
/// It is also possible to use dynaForm without a dataController. In
/// this case you must provide an <property>OnGetPropertyInfo</property>
/// server-side callback method to specify the list of controls to display.
Class %ZEN.Component.dynaForm Extends form [ Deprecated, System = 3 ]
{

/// If defined, this is the id of a group within this form in which
/// the dynamically created controls will be injected.
Property defaultGroupId As %ZEN.Datatype.id;

/// Specifies where in the form the automatically created controls are placed
/// relative to other controls that have been manually placed within the form:<br/>
/// <ul>
/// <li>"after" - (default) inject the automatically placed controls after any manually placed controls.</li>
/// <li>"before" - inject the automatically placed controls before any manually placed controls.</li>
/// </ul>
/// This is useful for cases where the dynaForm may define buttons and other controls
/// in addition to those that are automatically created.<br/>
/// If <property>defaultGroupId</property> is defined, then this is ignored.
Property injectControls As %ZEN.Datatype.string(VALUELIST = ",before,after") [ InitialExpression = "after" ];

/// (Optional) Name of Server-side callback method called just before
/// dynamic components are injected into this form.<br/>
/// This callback method behaves in much the same way as the
/// <method>%OnGetPropertyInfo</method> method of the <class>%ZEN.DataModel.ObjectDataModel</class> class.
/// This must be the name of a server-only method in the page
/// class that contains this form component.<br/>
/// For example:
/// <example language="cls!member">
/// Method GetInfo(pIndex As %Integer,ByRef pInfo As %String,pModelId As %String) As %Status
/// {
/// 	// subscript of pInfo is the logical name of the control
/// 	// the value of pInfo(name) is the sequence number (ordinal position of the control).
/// 	// the value of pInfo(name,"%type") is the control type to display
/// 	Set pInfo("Field1") = pIndex
/// 	Set pInfo("Field1","%type") = "textarea"
///
/// 	// the value of pInfo(name,"label") is the control label to display
/// 	Set pInfo("Field2") = pIndex + 1
/// 	Set pInfo("Field2","label") = "Field 2"
/// 	Quit $$$OK
/// }
/// </example>
Property OnGetPropertyInfo As %ZEN.Datatype.delegator(FORMALSPEC = "pIndex:%Integer,&pInfo:%String,pModelId:%String", RETURNTYPE = "%Status");

/// Internal method.<br>
/// Inject additional controls into this when it is added to the page.
/// This is implemented by subclasses.
Method %InjectControls() As %Status [ Internal ]
{
}

/// Internal method.<br>
/// Invoke server-side <property>OnGetPropertyInfo</property> callback.
Method %InvokeGetPropertyInfo(pOnGetPropertyInfo As %String, pIndex As %Integer, ByRef pInfo As %String, pModelId As %String) As %Status [ Internal ]
{
}

/// Internal method.<br>
/// This is called from the client when it needs to recreate the contents
/// of this form because the underlying DataModel has changed.
Method RecreateForm(pController As %ZEN.Auxiliary.dataController) As %Boolean [ Internal, ZenMethod ]
{
}

/// Notification that the dataController associated with this form
/// has raised an event.
ClientMethod notifyViewHandler(reason, data1, data2) [ Internal, Language = javascript ]
{
}

/// Called after refreshContents,
/// make sure data is bound to the form.
ClientMethod onRefreshContents() [ Internal, Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
