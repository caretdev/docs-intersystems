/// This is a specialized lookup control that provides a way to select
/// a value from a list of options.
Class %ZEN.Component.lookup Extends %ZEN.Component.control [ Deprecated, System = 3 ]
{

/// Context string used to determine the selection list for this component.<br/>
/// A context string take the form of a URL:<br/>
/// SearchClass/SearchName?parm1=value&parm2=value<br/>
/// <i>SearchClass</i> is the name of a <class>%ZEN.Portal.ContextSearch</class>
/// search class that contains the search to perform.<br/>
/// <i>SearchName</i> is the name of the search method to invoke within
/// the search class.<br/>
/// You can omit the search class and name and use the context to pick up value from
/// other controls on the current page. In this case the context string should start take the form:<br/>
/// ?parm1=value<br/>
/// At this time, search class and name are not supported by this control.
Property context As %ZEN.Datatype.uri;

/// Display value for this control.<br/>
/// <property>value</property> contains the logical value.
Property text As %ZEN.Datatype.string;

/// Optional. If this control belongs to a form that is associated with
/// a dataController, this specifies the name of the property within the dataController
/// that will provide the display value for this control.
Property displayBinding As %ZEN.Datatype.string;

/// Title to display within popup.
Property popupLabel As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Search","%Utility")} ];

/// Size (width * 10 pixels) of the base (non popup) portion of this control.
Property size As %ZEN.Datatype.integer;

/// Specify if there should be a filter text box within the pop up.
Property showFilter As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// This flag is not implemented at this time.
Property multiSelect As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// This property is not used at this time.
Property separator As %ZEN.Datatype.string [ InitialExpression = "," ];

/// Image to use to invoke lookup popup.
Property lookupIcon As %ZEN.Datatype.uri [ InitialExpression = "deepsee/zoom_16.png" ];

/// Message to show when no results are present.
Property noResultsMessage As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Nothing to show!","%Utility")} ];

/// onshowPopup event handler:
/// This event is fired just before the popup is displayed.
Property onshowPopup As %ZEN.Datatype.eventHandler;

/// Name of property within data element that supplies the id value.
Property idProperty As %ZEN.Datatype.string;

/// Name of property within data element that supplies the text value.
Property textProperty As %ZEN.Datatype.string;

/// Name of property within data element that supplies an image src value.
/// If defined, and the property exists, show the image in the popup instead of the text value.
Property imageProperty As %ZEN.Datatype.string;

/// List of property values to display in the popup list.
/// This is a csv-list of property names.
Property propertyList As %ZEN.Datatype.csv;

/// List of CSS styles to apply to cells within the popup list.
/// This is a csv-list of CSS styles.
Property styleList As %ZEN.Datatype.csv;

/// ongetdata event handler:
/// Return a javascript array of data to display in the popup.
/// This can be any array of object or literal values.
Property ongetdata As %ZEN.Datatype.eventHandler;

/// defines style sheet used by this component
XData Style
{
}

/// Client-side method to render control.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Adjust the size of the control.
ClientMethod adjustSize() [ Language = javascript ]
{
}

/// User has pressed the selector button.
ClientMethod selectorClick() [ Language = javascript ]
{
}

/// Display the dropdown popup window.
/// <var>spec</var> is an object with any of the following properties:<br/>
/// top - top edge of popup.<br/>
/// left - left edge of popup.<br/>
/// parentDiv - if supplied, use this to place the popup.<br/>
/// value - current logical value.<br/>
/// data - array of data elements to display; can be an array of objects or literal values.<br/>
/// propertyList - if data contains objects, this is a csv-list of properties to display.<br/>
/// styleList - this is a csv-list of styles to apply to the columns in the popup.<br/>
/// idProperty - if data contains objects, this the name of the property supplying the id value.<br/>
/// textProperty - if data contains objects, this the name of the property supplying the display value.<br/>
/// title - title to display in popup.<br/>
/// applyValue - function to call a value is selected within the popup.<br/>
ClientMethod showPopup(spec) [ Language = javascript ]
{
}

/// Notification that the popup group is displayed.
ClientMethod showGroupHandler() [ Language = javascript ]
{
}

/// Value applied from popup.
ClientMethod applyValue(value, text) [ Language = javascript ]
{
}

/// Override to get current value of control.
ClientMethod getProperty(property, key) As %String [ Language = javascript ]
{
}

/// Set the value of a named property.<br>
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Find the search results div (wrapper around results table).
ClientMethod getSearchDiv() [ Internal, Language = javascript ]
{
}

/// Return the content for the popup/dropdown.
ClientMethod getPopupContent(group) [ Language = javascript ]
{
}

/// Get the HTML contents of the popup lookup table.
ClientMethod getLookupTableHTML(spec, filter) [ Internal, Language = javascript ]
{
}

/// Apply contents of filter control.
ClientMethod applyFilter() [ Internal, Language = javascript ]
{
}

/// Keydown in popup.
ClientMethod filterKeyDown(evt) [ Internal, Language = javascript ]
{
}

/// Key up in popup.
ClientMethod filterKeyUp(evt) [ Internal, Language = javascript ]
{
}

/// Keydown on lookup icon.
ClientMethod selectorKeyDown(evt) [ Internal, Language = javascript ]
{
}

/// Client-side method to give input focus to this control.
ClientMethod focus() [ Language = javascript ]
{
}

/// Select an item within the popup (used by keyboard handling).
ClientMethod selectPopupItem(index) [ Language = javascript ]
{
}

}
