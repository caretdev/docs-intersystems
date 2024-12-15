/// This abstract class defines the common interface needed
/// by dataView components (the View part of the Model-View-Controller
/// architecture).
Class %ZEN.Component.dataView [ Abstract, Deprecated, System = 3 ]
{

/// Optional. The id of the <class>%ZEN.Auxiliary.dataController</class> object that
/// provides data for this dataView component.<br>
/// If provided, this must be the valid id of a <class>%ZEN.Auxiliary.dataController</class> object.
Property controllerId As %ZEN.Datatype.id(COMPONENTTYPE = "dataController");

/// Internal property.<br>
/// Used by client to hold a reference to the associated <class>%ZEN.Auxiliary.dataController</class> object.
Property controller As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENSETTING = 0);

/// onnotifyView event handler:
/// This event is fired when a dataController connected to this dataView
/// raises an event.
Property onnotifyView As %ZEN.Datatype.eventHandler;

/// Internal property.<br>
/// Used by server to hold a reference to the associated dataController object.
Property %controller As %ZEN.Auxiliary.dataController(XMLPROJECTION = "none");

/// ongetcontroller event handler:<br/>
/// If defined, this provides a way to supply a custom data
/// controller. This event handler should return an object that implements the controller API.
/// This is an internal setting.<br/>
/// The main API methods that need to be implemented are getDimSize, getLabel, getData,
/// getPropertyName, and notifyController.
Property ongetcontroller As %ZEN.Datatype.eventHandler [ Internal ];

/// Server-side method used by dataView implementation classes to
/// get values from the associated dataController, if present.
/// This is typically called by components on the server before they
/// are initially rendered in order to get initial data values.
Method %AcquireDataFromController() As %Status [ Private ]
{
}

/// Get the dataController component associated with this dataView, if present.
/// Returns null if no there is no controller.
/// This is used by dataView implementation classes.
ClientMethod getController() [ Language = javascript ]
{
}

/// If connected, send an event to a dataController.
/// This is used by dataView implementation classes.
/// Possible values of <var>reason</var> include:<br>
/// 'propertyChange' - <var>data1</var> is property name,<var>data2</var> is the new value,<var>data3</var> is the series number (if applicable).
ClientMethod sendEventToController(reason, data1, data2, data3) [ Language = javascript ]
{
}

/// Set the controller id for this dataView and establish a connection
/// to the new controller.
/// This is used by dataView implementation classes.
ClientMethod setControllerId(id) [ Language = javascript ]
{
}

/// Internal method.
/// Establish a connection between this dataView and its associated
/// dataController.
ClientMethod connectToController() [ Internal, Language = javascript ]
{
}

/// Internal method.
/// Break the connection between this dataView and its associated
/// dataController.
ClientMethod disconnectFromController() [ Internal, Language = javascript ]
{
}

/// Internal method.
/// This is called by the dataController associated with this dataView
/// when it sends an event to this dataView.<br>
/// It passes selected events on to an <method>notifyViewHandler</method> method implemented
/// by the actual dataView class.
/// Known events:<br>
/// 'modelChange': Meta-data for model has changed.<br>
/// 'dataChange': Data for model has changed. <var>data1</var> is the
/// name of the changed property or null if all properties have changed.<br>
/// 'seriesChange': the default series for the controller has changed.<br>
ClientMethod notifyView(reason, data1, data2, data3) [ Internal, Language = javascript ]
{
}

}
