/// Cover view component.<br/>
/// This provides an way to display a set of options as "book covers".
/// Each cover is defined by a javaScript object or its string equivalent in JSON format.
Class %DeepSee.Component.coverView Extends (%ZEN.Component.component, %ZEN.Component.dataView) [ System = 3 ]
{

Parameter NAMESPACE = "http://www.intersystems.com/deepsee";

Parameter DEFAULTENCLOSINGCLASS = "dsCoverDiv";

/// onselect event handler:
/// If defined, this event is fired when the user clicks on a cover.<br/>
Property onselect As %ZEN.Datatype.eventHandler;

/// onactivate event handler:
/// If defined, this event is fired when the user invokes an action on a cover.<br/>
Property onactivate As %ZEN.Datatype.eventHandler;

/// ongetdetails event handler:
/// If defined, this event is fired in order to get a list of popup details for a cover.<br/>
Property ongetdetails As %ZEN.Datatype.eventHandler;

/// Index (0-based) of selected cover.
Property selectedIndex As %ZEN.Datatype.integer [ InitialExpression = -1 ];

/// True for cover editor page.
Property designMode As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Category to use for items with no category.
Property defaultCategory As %ZEN.Datatype.caption [ InitialExpression = {$$$Text("Others","%DeepSee")} ];

/// Zoom level (1,2 or 3).
Property zoomLevel As %ZEN.Datatype.integer(XMLPROJECTION = "none", ZENSETTING = 0) [ InitialExpression = 1 ];

/// Used by cover editor.
Property selectedElement As %ZEN.Datatype.string(ZENSETTING = 0);

/// onselectelement event handler:
/// Design mode only. If defined, this event is fired when the user clicks on a cover element.<br/>
Property onselectelement As %ZEN.Datatype.eventHandler;

/// ongetdata event handler:
/// If defined, this event is returns an array of items to be displayed within this component.
Property ongetdata As %ZEN.Datatype.eventHandler;

/// ongetitemcontext event handler:
/// If defined, this returns a context object for the given cover. This is used to resolve $var
/// references within covers.
Property ongetitemcontext As %ZEN.Datatype.eventHandler;

/// Style applied to coverView background and category labels.
Property backgroundStyle As %ZEN.Datatype.style;

/// defines style sheet used by this component
XData Style
{
}

Method %DrawHTML()
{
}

/// Client-side method to render this control.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Get HTML for one book cover.
/// A spec is a ^-delimited string of rendering instructions.
/// Each piece takes the form: "type:header;text:ABC;style:prop:val;"
/// style is always at the end.
ClientMethod getCoverArt(index, book, popupMode) [ Language = javascript ]
{
}

/// Get text to display.
/// Resolve any $vars using the context array if present.
ClientMethod getText(text, context) [ Internal, Language = javascript ]
{
}

/// User click on an item.
ClientMethod itemClick(idx) [ Internal, Language = javascript ]
{
}

/// Given its index (0-based), return the book object for a cover.
ClientMethod getCoverObject(index) [ Language = javascript ]
{
}

/// Given its index (0-based), set the book object for a cover.
ClientMethod setCoverObject(index, book) [ Language = javascript ]
{
}

/// Select a cover given its index (0-based).
ClientMethod selectCover(index, force) [ Language = javascript ]
{
}

/// Invoke the given action for the given cover.
ClientMethod activateCover(evt, index, action) [ Language = javascript ]
{
}

/// Convert a spec string into a spec object.
ClientMethod evalSpec(spec) [ Language = javascript ]
{
}

/// Convert a display spec back into a json string.
ClientMethod specToString(specObj) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Notification that the dataController associated with this dataView
/// has raised an event.
ClientMethod notifyViewHandler(reason, data1, data2, data3) [ Language = javascript ]
{
}

/// Select an element within the cover.
ClientMethod selectElement(which, notify) [ Language = javascript ]
{
}

/// Move the element selector.
ClientMethod moveSelector(targetDiv) [ Internal, Language = javascript ]
{
}

/// User has clicked on the element selector.
ClientMethod selectorMouseDown(evt) [ Language = javascript ]
{
}

/// Utility method. Escape a javascript string.
ClientMethod escapeJS(str) [ Language = javascript ]
{
}

/// Get the model used to drive the view.
ClientMethod getModel() [ Language = javascript ]
{
}

/// Show a popup info box for the current item.
ClientMethod showPopup(index) [ Internal, Language = javascript ]
{
}

/// Show a popup info box for the current item.
ClientMethod hidePopup() [ Internal, Language = javascript ]
{
}

/// Show the activate button for the given cover.
ClientMethod showActivateButton(index) [ Internal, Language = javascript ]
{
}

/// Hide the activate button for the given cover.
ClientMethod hideActivateButton(index) [ Internal, Language = javascript ]
{
}

/// Utility method. Split a css value into individual style values.
/// Return an object containing these values.
ClientMethod parseStyle(style) [ Language = javascript ]
{
}

}
