/// This class is used to implement the Controller portion of the Zen
/// Model-View-Controller mechanism.<br>
/// A dataController component provides a way to establish a connection between
/// a DataModel class and one or more <class>%ZEN.Component.dataView</class> components (such as a form).<br/>
/// When the data associated with the Controller changes, these changes
/// are automatically broadcast to all View components connected to the Controller.<br/>
/// For example, the following XML defines a <class>dataController</class> that
/// will open an instance of the <b>MyApp.MyModel</b> class using
/// an id value of 1. The <class>%ZEN.Component.dynaForm</class> object is bound to the
/// <class>dataController</class> by setting its controllerId property to
/// the id of the <class>dataController</class>:
/// <example language="html">
/// <dataController id="data" modelClass="MyApp.MyModel" modelId="1"/>
/// <dynaForm id="myForm" controllerId="data"/>
/// </example>
/// In this case, the <class>%ZEN.Component.dynaForm</class> will display
/// a form with controls for every property within the Data Model.
Class %ZEN.Auxiliary.dataController Extends %ZEN.Auxiliary.abstractController [ Deprecated, System = 3 ]
{

/// Name of the DataModel class that provides data for this controller.<br/>
/// You can change this value using the client-side <method>setModelClass</method>
/// method. This will cause a new object to be loaded into the controller.
Property modelClass As %ZEN.Datatype.className(ZENEXPRESSION = 1);

/// Internal property.<br>
/// Used to hold client-side validation code.
Property validationCode As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENSETTING = 0) [ Internal ];

/// Transient, internal property used to keep a reference to a DataModel object.
Property %model As %ZEN.DataModel.DataModel(XMLPROJECTION = "none") [ Internal ];

/// Internal method.<br>
/// Get any client-side validate code defined by the model class.
Method %GetClientValidationCode() As %Status [ Internal ]
{
}

/// Internal method.<br>
/// Acquire data from the associated DataModel object.
/// This is typically called on the server before a page is served in order
/// to get initial values for bound components.
Method %AcquireData() As %Status [ Internal ]
{
}

/// Internal method.<br>
/// Acquire meta-data from the associated DataModel object.
/// This may be called before a page is rendered or in response to a
/// client-side change to a dataController.
Method %AcquireMetaData() As %Status [ Internal ]
{
}

/// Internal method.
/// Create an instance of a DataModel object.
/// If <var>pID</var> is "", then this creates a new instance of model.
ClassMethod %CreateModelInstance(pClass As %String, pID As %String, Output pSC As %Status, pController As %ZEN.Auxiliary.dataController) As %ZEN.DataModel.DataModel [ Internal ]
{
}

/// Delete an instance of a DataModel object.
ClassMethod %DeleteModelInstance(pClass As %String, pID As %String) As %Status
{
}

/// Return a comma-delimited list of the properties contained in
/// the current DataModel class.<br>
/// A property in the list may include type and label information in the form:<br>
/// Prop:type:label
Method %GetModelPropertyList(Output pSC As %Status) As %String
{
}

/// Return an array containing information about the properties contained in
/// the current DataModel.<br>
/// Refer to the <method>%GetPropertyInfo</method> of the <class>%ZEN.DataModel.DataModel</class>
/// for details.
Method %GetModelPropertyInfo(Output pInfo As %String, pExtended As %Boolean = 0) As %Status [ Internal ]
{
}

/// Save data from this dataController back to the DataModel on the server.
/// Return the id with which the model was saved or '' if it was not saved.
ClientMethod save() [ Language = javascript ]
{
}

/// Load new data into this dataController from DataModel on the server.<br>
/// If <var>force</var> is true, then always load data,
/// otherwise only load data if there is no current data or
/// it has been invalidated.<br>
/// Applications should not call this directly. Instead they should use the
/// <method>setModelClass</method>, <method>setModelId</method>, or <method>update</method> methods.
ClientMethod loadModel(force) [ Internal, Language = javascript ]
{
}

/// Internal method.<br>
/// Load data from the associated DataModel object.<br>
Method LoadFromServer() As %String [ Internal, ZenMethod ]
{
}

/// Internal method.<br>
/// Save data back to the associated DataModel object.
/// Returns the id of the saved object (which could have changed
/// in the case of an insert).
Method SaveToServer() As %String [ Internal, ZenMethod ]
{
}

/// Ask our associated dataModel to create a new (unsaved) instance.
ClientMethod createNewObject() [ Language = javascript ]
{
}

/// Ask our associated dataModel to delete the item with the given id.
/// Returns true if the delete was successful.
/// If the dataModel is readOnly, then the delete will not happen.
ClientMethod deleteId(id) [ Language = javascript ]
{
}

/// Internal method.<br>
/// Ask the associated DataModel object to delete the given item.
Method DeleteFromServer(pID As %String) As %Boolean [ Internal, ZenMethod ]
{
}

/// Internal method.<br>
/// Ask the associated DataModel object to perform the given action.
Method ExecuteAction(pAction As %String, pData As %String) As %Boolean [ Internal, ZenMethod ]
{
}

/// Internal method.<br>
/// Execute client side validation code for this controller.
ClientMethod execValidationCode(property, value) [ Internal, Language = javascript ]
{
}

/// This method lets you set the values of both
/// the <property>modelClass</property> and (if provided)
/// <property>modelId</property> properties for this controller.
/// This will cause new data to be loaded and any views connected to this controller
/// to refresh.<br>
/// This is useful in cases where both the model class and id need
/// to change as this method changes both with a single call
/// to the server.
ClientMethod setModelClass(cls, id) [ Language = javascript ]
{
}

/// Return the class name of the current model associated with this dataController.
ClientMethod getModelClass() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
