/// This is a specialized type of group that is used
/// to place a set of SVG components within a page.<br>
/// Only groups and SVG components can be places within an svgFrame.
/// An error will occur if an HTML component is placed within
/// an svgFrame.
Class %ZEN.SVGComponent.svgFrame Extends (%ZEN.Component.component, %ZEN.SVGComponent.abstractSVGGroup) [ Deprecated, Inheritance = right, System = 3 ]
{

/// Default width of frame in parent page.
Parameter DEFAULTWIDTH = 300;

/// Default height of frame in parent page.
Parameter DEFAULTHEIGHT = 100;

/// Internal parameter.
/// This is a list of which post-compile actions this component
/// is registered for.
Parameter POSTCOMPILEACTIONS = "schema,SVG";

/// User defined style used for the svgFrame.
Property frameStyle As %ZEN.Datatype.style;

/// Edit mode of this frame.
/// This specifies how the pointer device (mouse) will interact with
/// shapes on this frame.<br/>
/// "none" - no interaction.<br/>
/// "select" - a mouse click will select a shape.<br/>
/// "drag" - the mouse can select and move the shape.<br/>
Property editMode As %ZEN.Datatype.string(VALUELIST = ",none,select,drag") [ InitialExpression = "none" ];

/// If true, then the size of the svg canvas (the backing rectangle
/// for this frame) will be automatically
/// calculated (and updated) based on its contents.<br/>
/// The minimum size of the canvas is based on the values of <property>svgWidth</property>
/// and <property>svgHeight</property>.<br/>
/// If false, the size is based on the values of <property>svgWidth</property>
/// and <property>svgHeight</property>.<br/>
/// If the <property>dragCanvas</property> is true, then this property will be ignored.
Property svgAutoSize As %ZEN.Datatype.boolean [ InitialExpression = 1 ];

/// If true, then the user can use the pointing device (mouse) to drag
/// the canvas of this frame. This will update the values of the
/// <property>offsetX</property> and <property>offsetY</property> properties and
/// move the shapes on the canvas.<br/>
Property dragCanvas As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Width (in pixels) of svg canvas.
/// If not specified, then the width of the svg canvas will be
/// the width of this frame.
Property svgWidth As %ZEN.Datatype.integer(MINVAL = 0);

/// Height (in pixels) of svg canvas.
/// If not specified, then the height of the svg canvas will be
/// the height of this frame.
Property svgHeight As %ZEN.Datatype.integer(MINVAL = 0);

/// Internal property used to store the computed width
/// of the svg canvas when auto-size is enabled.
Property autoWidth As %ZEN.Datatype.integer(MINVAL = 0, XMLPROJECTION = "none", ZENSETTING = 0) [ Internal ];

/// Internal property used to store the computed height
/// of the svg canvas when auto-size is enabled.
Property autoHeight As %ZEN.Datatype.integer(MINVAL = 0, XMLPROJECTION = "none", ZENSETTING = 0) [ Internal ];

/// Zoom level as a percentage (100 equals no zoom).
Property zoom As %ZEN.Datatype.float(MINVAL = 1) [ InitialExpression = 100 ];

/// This is a comma-delimited list of suggested zoom levels.<br/>
/// These values are used by the <method>zoomIn</method> and <method>zoomOut</method> methods.
Property zoomLevels As %ZEN.Datatype.csv [ InitialExpression = "10,25,50,75,100,125,150,175,200,300,400,500" ];

/// If true, then this frame will automatically zoom in and out in response to
/// mouse wheel events (FireFox only).
Property zoomWithWheel As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// Client-side property that points to the enclosing SVG root element (top svg element).
Property svgRoot As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENCLIENTONLY = 1, ZENSETTING = 0);

/// Client-side property that points to the enclosing SVG group element.
Property svgGroup As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENCLIENTONLY = 1, ZENSETTING = 0);

/// Client-side property that points to SVG document embedded within this element.
Property document As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENCLIENTONLY = 1, ZENSETTING = 0);

/// Client-side property that points to SVG window object embedded within this element.
Property svgWindow As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENCLIENTONLY = 1, ZENSETTING = 0);

/// CSS style used for the background of this frame.<br/>
/// Note: this background style must include a fill value or else
/// mouse events within this frame will not work correctly.
Property backgroundStyle As %ZEN.Datatype.svgStyle [ InitialExpression = "fill: white;" ];

/// Primary selected svg component within this frame (if any).<br>
/// If there are multiple selected items, this is the most recent selection.
Property selectedItem As %ZEN.SVGComponent.svgComponent(XMLPROJECTION = "NONE", ZENSETTING = 0);

/// Set of currently selected svg components within this frame.
Property selectedItems As list Of %ZEN.SVGComponent.svgComponent(XMLPROJECTION = "NONE", ZENSETTING = 0);

/// onselectItem event handler:
/// This event is fired when the user changes the number of
/// selected items on this frame (either by selecting or unselecting an item).
/// A variable, <var>item</var>, is passed to this event handler and refers to the
/// item most recently selected or unselected.
Property onselectItem As %ZEN.Datatype.eventHandler;

/// onmoveItem event handler:
/// This event is fired when this frame is in drag mode and the user
/// moves one or more selected items.<br>
/// Refer to the <property>selectedItems</property> property for the list of items.<br/>
/// A variable, <var>done</var>, is passed to this event handler and indicates if the
/// if the operation is completed.
Property onmoveItem As %ZEN.Datatype.eventHandler;

/// onresizeItem event handler:
/// This event is fired when this frame is in drag mode and the user
/// resizes one or more selected items.<br>
/// Refer to the <property>selectedItems</property> property for the list of items.<br/>
/// A variable, <var>done</var>, is passed to this event handler and indicates if the
/// if the operation is completed.
Property onresizeItem As %ZEN.Datatype.eventHandler;

/// ondragCanvas event handler:
/// This event is fired as the user drags the background canvas using a pointing device.<br>
/// A variable, <var>done</var>, is passed to this event handler and indicates if the
/// if the operation is completed.
Property ondragCanvas As %ZEN.Datatype.eventHandler;

/// onmouseWheel event handler:
/// This event is fired as the user moves the wheel on their mouse over the
/// background rectangle of this frame.<br/>
/// Currently only available in FireFox.
Property onmouseWheel As %ZEN.Datatype.eventHandler;

/// onzoom event handler:
/// This event is fired whenever the zoom level for this frame is changed.<br/>
Property onzoom As %ZEN.Datatype.eventHandler;

/// If true, all mouse operations (sizing and dragging) will be constrained
/// to lie on the "grid" defined by <property>gridX</property> and
/// <property>gridY</property>.
Property snapToGrid As %ZEN.Datatype.boolean [ InitialExpression = 0 ];

/// If <property>snapToGrid</property> is true, this defines the width
/// of each cell in the sizing grid.
Property gridX As %ZEN.Datatype.integer [ InitialExpression = 25 ];

/// If <property>snapToGrid</property> is true, this defines the height
/// of each cell in the sizing grid.
Property gridY As %ZEN.Datatype.integer [ InitialExpression = 25 ];

/// Optional. Specifies the name of the CSP page class (subclass of svgPage)
/// that renders the SVG content wrapper within this svgFrame.
Property svgPage As %ZEN.Datatype.className(ZENSETTING = 0);

/// User-defined list of parameters. These are passed on
/// as URL parameters to the CSP Page class that renders the SVG contents.<br/>
/// Note: In early versions of Zen, the xml attribute used to identify
/// items within this array was called "key"; it was later changed to
/// "paramName" to be consistent with other components.
Property parameters As array Of %ZEN.Auxiliary.parameter(XMLKEYNAME = "paramName", XMLNAME = "parameter", XMLPROJECTION = "ELEMENT");

/// This is the offset, along the x axis, of the coordinates of this frame
/// from its upper, left-hand corner.
Property offsetX As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// This is the offset, along the y axis, of the coordinates of this frame
/// from its upper, left-hand corner.
Property offsetY As %ZEN.Datatype.integer [ InitialExpression = 0 ];

/// Internal property used to indicate that this frame is using
/// inline SVG.
Property inlineSVG As %ZEN.Datatype.boolean(XMLPROJECTION = "none") [ InitialExpression = 0, Internal ];

/// defines style sheet used by this component
XData Style
{
}

/// Called just after this form is added to the page.<br>
/// Make sure that the page's useSVG flag is set.
Method %OnAddToPageAfter() As %Status
{
}

Method %DrawHTML()
{
}

/// Return the embedded SVG document object.
ClientMethod getSVGDocument() [ Language = javascript ]
{
}

/// Notification that the embedded SVG page is loaded.
ClientMethod svgLoadHandler(win) [ Language = javascript ]
{
}

/// Set the size of the bounding box of this group.<br/>
/// This is called by the layout manager.
/// Applications should not call this directly.
ClientMethod setBoundingBox(width, height) [ Internal, Language = javascript ]
{
}

/// Set the edit mode of the frame.
ClientMethod setEditMode(mode) [ Language = javascript ]
{
}

/// Select the specified item.<br>
/// <var>item</var> must be a component within this frame.<br>
/// If <var>add</var> is true, add (or remove if already selected)
/// the item to the set of selected items, otherwise select
/// only the item.<br>
/// If <var>item</var> is null, unselect all items.
ClientMethod selectItem(item, add) [ Language = javascript ]
{
}

/// Notification that an item has been selected.
/// This can be implemented by a subclass.
/// If this method is defined and returns false, the onselectItem
/// callback will not be fired.
ClientMethod selectItemHandler(item, add) [ Abstract, Language = javascript ]
{
}

/// Test if given item is selected.
ClientMethod isSelected(item) [ Language = javascript ]
{
}

/// Return the current selected item within this frame.
/// If no item is selected, return null. If more than one item
/// is selected, return the primary selection (last item selected).
ClientMethod getSelectedItem() [ Language = javascript ]
{
}

/// Return the set of currently selected items within this frame
/// as an array of components.
ClientMethod getSelectedItems() [ Language = javascript ]
{
}

/// Return true if shapes can be dragged on this frame.
ClientMethod canDragShapes() [ Language = javascript ]
{
}

/// Mouse wheel event handler for this frame.
ClientMethod mousewheelHandler(evt) [ Language = javascript ]
{
}

/// Mouse down handler for this frame.
ClientMethod mousedownHandler(evt) [ Language = javascript ]
{
}

/// Start of move shape(s) operation.
ClientMethod startMove(evt, shape) [ Language = javascript ]
{
}

/// Start of drag canvas operation.
ClientMethod startDragCanvas(evt) [ Language = javascript ]
{
}

/// Start of resize operation.
ClientMethod startResize(evt, shape, which) [ Language = javascript ]
{
}

/// Mouse move handler for frame.
ClientMethod mousemoveHandler(evt) [ Language = javascript ]
{
}

/// Mouse up handler for frame.
ClientMethod mouseupHandler(evt) [ Language = javascript ]
{
}

/// Move the given component to a new position (depending on its parent's layout options).
ClientMethod moveItem(item, dx, dy) [ Language = javascript ]
{
}

/// Set the value of a named property.<br>
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Internal method.<br/>
/// Set the width and height of this frame.
/// Applications should use setProperty('width') or setProperty('height').<br/>
/// This method adjusts the size of the various coordinate-defining components
/// that make up this frame: the div element used to house the frame on
/// the web page; the embed element that contains the svg document; the top-level
/// svg element, and the background (canvas) rectangle.
ClientMethod setFrameSize(w, h) [ Internal, Language = javascript ]
{
}

/// Internal method.
/// Update transformation applied to the canvas scaling group.
ClientMethod updateScalingGroup() [ Internal, Language = javascript ]
{
}

/// Set the x and y offsets for this frame.
/// This specifies how far the upper left corner of the frame is translated.
ClientMethod setOffsets(x, y) [ Language = javascript ]
{
}

/// Set the zoom level of this frame to given percentage value.
ClientMethod setZoom(value) [ Language = javascript ]
{
}

/// Set the zoom level for this frame to the next higher value
/// (as compared with the current level)
/// in the <property>zoomLevels</property> list.<br/>
/// <var>x</var> and <var>y</var>, if defined, are the center point for
/// the zoom. If not defined, the center of the frame is used.
ClientMethod zoomIn(x, y) [ Language = javascript ]
{
}

/// Set the zoom level for this frame to the next lower value
/// (as compared with the current level)
/// in the <property>zoomLevels</property> list.<br/>
/// <var>x</var> and <var>y</var>, if defined, are the center point for
/// the zoom. If not defined, the center of the frame is used.
ClientMethod zoomOut(x, y) [ Language = javascript ]
{
}

/// This will zoom this canvas to the (0-based) zoom index (i.e., entry in the <property>zoomLevels</property> array)
/// specified by <var>idx</var>.<br/>
/// <var>x</var> and <var>y</var>, if defined, are the center point for
/// the zoom. If not defined, the center of the frame is used.
ClientMethod setZoomIndex(idx, x, y) [ Language = javascript ]
{
}

/// Return current zoom index of this frame.
ClientMethod getZoomIndex(x) [ Language = javascript ]
{
}

/// This client event, if present, is fired when the page is loaded.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

}
