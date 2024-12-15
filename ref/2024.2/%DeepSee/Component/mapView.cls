/// A specialized Zen component that displays a google map.<br/>
/// Use the height and width attributes to control the size of the map container.
Class %DeepSee.Component.mapView Extends (%ZEN.Component.component, %ZEN.Component.dataView) [ System = 4 ]
{

Parameter NAMESPACE = "http://www.intersystems.com/deepsee";

Parameter INCLUDEFILES As COSEXPRESSION = """script:https://maps.googleapis.com/maps/api/js?""_..%GetUrlAPIKey()";

/// Initial latitude (as a decimal number).
Property latitude As %ZEN.Datatype.float [ InitialExpression = 42.36 ];

/// Initial longitude (as a decimal number).
Property longitude As %ZEN.Datatype.float [ InitialExpression = 288.92 ];

/// Initial zoom level (0 shows entire globe).
Property zoom As %ZEN.Datatype.integer [ InitialExpression = 12 ];

/// Initial map display.
Property mapType As %ZEN.Datatype.string(VALUELIST = ",ROADMAP,SATELLITE,HYBRID,TERRAIN") [ InitialExpression = "ROADMAP" ];

/// If true, then the markers on this map are draggable.
Property markersDraggable As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Name of property in data source that provides the latitude value for a marker.
Property latitudeProperty As %ZEN.Datatype.string [ InitialExpression = "Latitude" ];

/// Name of property in data source that provides the longitude value for a marker.
Property longitudeProperty As %ZEN.Datatype.string [ InitialExpression = "Longitude" ];

/// Optional. Flag used by DeepSee widget to indicate that this map is only used for geolistings.
Property isListing As %ZEN.Datatype.boolean [ InitialExpression = 0, Internal ];

/// onclickmarker event handler:
/// If defined, this event is fired when
/// the user clicks on a marker within the map.
Property onclickmarker As %ZEN.Datatype.eventHandler;

/// Define a set of property value to be displayed within the default "info box"
/// when the user clicks on a map marker.
/// This only uses a relevant subset of the properties in the scoreCardColumn class.
/// Currently only the <var>label</var>, <var>dataValue</var>, <var>style</var>,
/// <var>format</var>, and <var>align</var> properties are used.
Property infoProperties As list Of %DeepSee.Component.SVG.scoreCardColumn(XMLPROJECTION = "ELEMENT", XMLREF = 1, XMLTYPECONSTRAINT = "CHOICE", ZENSETTING = 0);

/// Client-side method to render control.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Initialize the map
ClientMethod initMap(mapDiv) [ Language = javascript ]
{
}

/// Callback for zoom-changed event.
ClientMethod zoomChangedHandler() [ Internal, Language = javascript ]
{
}

/// Callback for map dragend event.
ClientMethod dragendHandler() [ Internal, Language = javascript ]
{
}

/// Return the google map API object used by the map view.
ClientMethod getMapObject() [ Language = javascript ]
{
}

/// Given the name of a map type, convert to a map type id.
ClientMethod getMapTypeId(type) [ Language = javascript ]
{
}

/// Called when page is loaded or widget is resized.
ClientMethod adjustContentSize(load, width, height) [ Language = javascript ]
{
}

/// Adjust the map to show all the current markers
ClientMethod adjustMapBounds() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Notification that the dataController associated with this dataView has raised an event.
ClientMethod notifyViewHandler(reason, data1, data2, data3) [ Language = javascript ]
{
}

/// Return the dataSet object associated with this view.
ClientMethod getDataSet() [ Language = javascript ]
{
}

/// Add a marker to the map at given coordinates.<br/>
/// <var>id</var> is a user-defined identifier associated with the marker.<br/>
/// Returns the marker object.
ClientMethod addMarker(id, latitude, longitude, title) [ Language = javascript ]
{
}

/// Find marker in marker list by index # (0-based).
ClientMethod getMarker(index) [ Internal, Language = javascript ]
{
}

/// Callback for marker dragend event.
ClientMethod markerDragEndHandler(index) [ Internal, Language = javascript ]
{
}

/// Callback for marker click event.
ClientMethod markerClickHandler(index) [ Internal, Language = javascript ]
{
}

/// Create and show an info window for a given marker.
ClientMethod createInfoWindow(marker, content) [ Internal, Language = javascript ]
{
}

/// Using the infoProperties defined for this map, construct and return the
/// HTML to display the properties within an infoBox.
ClientMethod getInfoPropContent(index) [ Internal, Language = javascript ]
{
}

/// Remove a marker from the map.
/// <var>marker</var> is the marker to remove.
ClientMethod removeMarker(marker) [ Language = javascript ]
{
}

/// Internal method: acquire data for this view and store a copy in a local cache.
ClientMethod acquireData() [ Internal, Language = javascript ]
{
}

/// Internal method: sync markers to data from controller.
ClientMethod syncMarkers() [ Internal, Language = javascript ]
{
}

/// Internal method: clear markers from map.
ClientMethod clearMarkers() [ Internal, Language = javascript ]
{
}

/// Invoke the google geocoder api to lookup an address string and move the map to view it.
/// Applications that call this are responsible for adhering to the google geocoder api terms of use.
ClientMethod panToAddress(address) [ Language = javascript ]
{
}

/// Callback for geocoder API.
ClientMethod geocodeAddressHandler(results, status) [ Internal, Language = javascript ]
{
}

/// Show set of markers for a geolisting.
ClientMethod showGeoMarkers() [ Internal, Language = javascript ]
{
}

/// Load the GoogleMaps API key stored in the namespace settings.
ClassMethod %GetUrlAPIKey() As %String [ Internal, Private ]
{
}

}
