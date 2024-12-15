Class %ZEN.Report.Display.COSChart.abstractController Extends %ZEN.Report.Display.node [ Abstract, Deprecated, System = 4 ]
{

/// This component is not visible.
Parameter DEFAULTVISIBLE = 0;

/// ID value passed to the DataModel class.<br/>
/// You can change this value using the client-side <method>setModelId</method>
/// method. This will cause a new object to be loaded into the controller.
Property modelId As %ZEN.Datatype.string(ZENEXPRESSION = 1) [ Final ];

/// Optional. If a DataModel has multiple dataSeries, then this specifies
/// which DataSeries (1-based) should be used to provide values to DataViews that
/// can only display values from one data series (such as a form).
Property defaultSeries As %ZEN.Datatype.integer(MINVAL = 1) [ Final, InitialExpression = 1 ];

/// Most recent error message reported by the DataModel object this
/// dataController is connected to.
/// This is set to a non-empty string after a save, load, or delete operation
/// encounters an error.
Property modelError As %ZEN.Datatype.string(XMLPROJECTION = "none") [ Final ];

/// If true, this data controller is read only regardless of whether its
/// corresponding data model is read only or not.
Property readOnly As %ZEN.Datatype.boolean [ Final, InitialExpression = 0 ];

/// Internal property.<br>
/// dataBag used to hold values.
Property dataBag As %ZEN.Report.Display.COSChart.dataBag(XMLPROJECTION = "none") [ Final, Internal ];

/// Internal property.<br>
/// If true, this controller has loaded data from its model.
Property dataLoaded As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ Final, InitialExpression = 0, Internal ];

/// Internal property.<br>
/// Used to track whether the current model is readonly or not.
/// Use <property>readOnly</property> if you want to set this data controller to be read only.
Property dataReadOnly As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ Final, Internal ];

/// Internal property.<br>
/// If true, client requires updated meta-data from its model.
Property modelChanged As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ Final, InitialExpression = 1, Internal ];

/// Optional. Additional criteria from the client.<br/>
/// This is a proxy object whose contents may be filled by client application code and
/// is available to methods of the controller object.
Property criteria As %ZEN.proxyObject(XMLPROJECTION = "none") [ Internal ];

Method %OnNew(initvalue As %RawString) As %Status [ Private, ProcedureBlock = 1 ]
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

/// Get a data value, by property name, from this dataController.
Method %GetDataByName(pProperty As %String) [ CodeMode = expression ]
{
}

/// Get a data type, by property name, from this dataController.
Method %GetTypeByName(pProperty As %String) [ CodeMode = expression ]
{
}

/// Set a data value, by property name, into this dataController.
Method %SetDataByName(pProperty As %String, pValue As %String)
{
}

/// Return true if this controller currently contains data loaded from a DataModel.
ClientMethod hasData() [ Language = javascript ]
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
Method LoadFromServer() As %String [ Internal ]
{
}

/// Internal method.<br>
/// Save data back to the associated DataModel object.
/// Returns the id of the saved object (which could have changed
/// in the case of an insert).
Method SaveToServer() As %String [ Internal ]
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
Method DeleteFromServer(pID As %String) As %Boolean [ Internal ]
{
}

/// Invoke a named <i>action</i> on our associated dataModel.
/// An action is an arbitrary operation that is defined by a
/// specific dataModel class.
/// <var>data</var> is an arbitary value passed along with the action.
ClientMethod invokeAction(action, data) [ Language = javascript ]
{
}

/// Test if the current data model is read-only.
Method isModelReadOnly()
{
}

/// Return the latest error message encountered by this data controller.
/// Call this after a save, load, or delete operation to test if an error
/// occurred.<br>
/// This will return '' if there is no current error.
Method getError()
{
}

/// Test if a given value for a property is valid.
Method isPropertyValid(property, value)
{
}

/// Internal method.<br>
/// Execute client side validation code for this controller.
Method execValidationCode(property, value)
{
}

/// Get the type code for a property given its name.
Method getTypeByName(property)
{
}

/// dataBag API
/// Get a data value, by property name, from this dataController.
Method getDataByName(property, series)
{
}

/// Given a 0-based index, return the corresponding property name.
Method getPropertyName(n)
{
}

/// dataBag API
/// Set a data value, by property name, into this dataController.<br>
/// If <var>property</var> is "%id", then change the id of this controller.<br>
/// If <var>property</var> is "%series", then change the defaultSeries of this controller.
Method setDataByName(property, value, series)
{
}

/// dataSet API
/// Return the number of items in the specified dimension
/// (<var>dim</var> is 1,2, or 3).
Method getDimSize(dim)
{
}

/// dataSet API
/// Return number of dimensions within the dataModel.
/// There are 2 dimensions: The first is the set of properties,
/// the second has a typical size of 1.<br>
/// The second dimension
/// may be larger than 1 in cases where the model serves multiple
/// series for a given model instance. (Such as when providing mulitple
/// data series for charts).
Method getDimensions()
{
}

/// dataSet API
/// Get the label at position n (0-based) in the given
/// dimension (1,2, or 3).
Method getLabel(n, dim)
{
}

/// dataSet API
/// Return the data contained in the specified location.
/// Location is 0-based;
Method getData(d1, d2, d3)
{
}

/// This is a specialized variant of <method>getData</method> that
/// return the data in this controller as an array of arrays (used
/// by charts).
Method getDataAsArrays(ByRef values)
{
}

/// TBD - 08/29/2012 JSL
/// This is a specialized variant of <method>getData</method> that
/// returns the data in this controller as a zenProxy object (associative array).<br/>
/// The return value of this object is a zenProxy object
/// with properties that correspond to the properties of the current
/// Data Model object. The value of each property in the returned
/// object corresponds to the value in the Data Model object.<br/>
/// If the Data Model supports more than one data series, then
/// the <var>series</var> parameter (0-based) specifies which
/// series to use (the default is series 0).<br/>
/// Refer to the <class>%ZEN.proxyObject</class> for more details.
ClientMethod getDataAsObject(series) [ Language = javascript ]
{
}

/// dataSet API
/// Set the data contained in the specified location.
/// Location is 0-based;
Method setData(value, d1, d2, d3)
{
}

/// TBD 08-29-2012 JSL
/// Set the value of the <property>modelId</property> property for this controller.
/// This will cause new data to be loaded and any views connected to this controller
/// to refresh.<br>
/// This is equivalent to calling setProperty('modelId',id) and is defined for
/// convenience.
ClientMethod setModelId(id) [ Language = javascript ]
{
}

/// Return the current model id associated with this dataController.
Method getModelId()
{
}

/// TBD - 08-29-2012 JSL, not clear how to invoke super
/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

}
