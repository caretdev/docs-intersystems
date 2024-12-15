/// Base class for SVG components.<br>
/// Unlike HTML components, SVG components are completely dynamic;
/// all rendering is done using client-side JavaScript.<br>
/// Every component is rendered within its own enclosing group (g) element.
Class %ZEN.SVGComponent.svgComponent Extends %ZEN.Component.object [ Abstract, Deprecated, System = 3 ]
{

/// Internal parameter.
Parameter POSTCOMPILEACTIONS = "schema,SVG";

/// Subclasses can set this to change default visibilty for a component.
Parameter DEFAULTVISIBLE = 1;

/// Default width of this component.
Parameter DEFAULTWIDTH As INTEGER = 100;

/// Default height of this component.
Parameter DEFAULTHEIGHT As INTEGER = 100;

/// Default viewBoxWidth of this component.
Parameter DEFAULTVIEWBOXWIDTH As INTEGER;

/// Default viewBoxHeight of this component.
Parameter DEFAULTVIEWBOXHEIGHT As INTEGER;

/// Subclasses can set this to change the default value for the <property>hidden</property> property for a component.
Parameter DEFAULTHIDDEN As BOOLEAN = 0;

/// Subclasses can set this to change the default value for the <property>boundless</property> property for a component.
Parameter DEFAULTBOUNDLESS As BOOLEAN = 0;

/// Subclasses can set this to change the default value for the <property>preserveAspectRatio/<property> property for a component.
Parameter DEFAULTASPECT As STRING;

/// x position of this component's enclosing group.<br>
/// The actual position of the component depends on the
/// layout applied by its containing svgGroup.
Property x As %ZEN.Datatype.length [ InitialExpression = 0 ];

/// y position of this component's enclosing group.<br>
/// The actual position of the component depends on the
/// layout applied by its containing svgGroup.
Property y As %ZEN.Datatype.length [ InitialExpression = 0 ];

/// If position is "fixed", then this shape will not scroll with its canvas
/// nor can it be dragged with the mouse.<br/>
/// This is used for placing fixed controller over the rest of an SVG canvas.
Property position As %ZEN.Datatype.string(VALUELIST = ",fixed,relative", ZENSETTING = 0) [ InitialExpression = "relative" ];

/// Width of this component.<br>
/// This value is used for layout purposes.
/// The actual effect of setting this is up the specific component implementation.
Property width As %ZEN.Datatype.length [ InitialExpression = {..#DEFAULTWIDTH} ];

/// Width of this component.<br>
/// This value is used for layout purposes.
/// The actual effect of setting this is up the specific component implementation.
Property height As %ZEN.Datatype.length [ InitialExpression = {..#DEFAULTHEIGHT} ];

/// If defined, this is used to calculate the width of the
/// viewBox attribute of the enclosing svg element.<br>
Property viewBoxWidth As %ZEN.Datatype.integer [ InitialExpression = {..#DEFAULTVIEWBOXWIDTH} ];

/// If defined, this is used to calculate the height of the
/// viewBox attribute of the enclosing svg element.<br>
Property viewBoxHeight As %ZEN.Datatype.integer [ InitialExpression = {..#DEFAULTVIEWBOXHEIGHT} ];

/// Value to apply for this component's enclosing svg element's
/// preserveAspectRatio attribute.<br>
/// Set this to "none" if you do not want the SVG Engine to preserve the aspect
/// ratio (height relative to width) for this component.
Property preserveAspectRatio As %ZEN.Datatype.string [ InitialExpression = {..#DEFAULTASPECT} ];

/// Client-side property that points to the enclosing SVG group element for this component.
Property svgGroup As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENCLIENTONLY = 1, ZENSETTING = 0);

/// Client-side property that points to SVG document this component is rendered on.
Property document As %ZEN.Datatype.string(XMLPROJECTION = "none", ZENCLIENTONLY = 1, ZENSETTING = 0);

/// If true, this component is hidden. That is, it's enclosing
/// group's display style is set to "none".
Property hidden As %ZEN.Datatype.boolean [ InitialExpression = {..#DEFAULTHIDDEN} ];

/// If true, this component is boundless. That is, it's enclosing
/// svg element is a simple group (g) instead of the usual svg element.
Property boundless As %ZEN.Datatype.boolean(ZENSETTING = 0) [ InitialExpression = {..#DEFAULTBOUNDLESS} ];

/// onclick event handler:
/// This event is fired when the mouse is clicked on the shape.
/// This is the default onclick event for svg components; subclasses
/// may implement more specialized events (such as click on a specific part of the component).
Property onclick As %ZEN.Datatype.eventHandler;

/// Client-side property used to determine if a component is an SVG component.
Property svgComponent As %ZEN.Datatype.boolean(XMLPROJECTION = "none", ZENCLIENTONLY = 1, ZENSETTING = 0) [ InitialExpression = 1 ];

/// Define basic style block to ensure inclusion of core .css file.
XData SVGStyle
{
}

/// Do not allow HTML methods for SVG components.
Method %DrawHTML() [ Final ]
{
}

/// Render the outer SVG enclosing group for this component
/// as well as its inner contents.<br>
/// This is called by the svgFrame when the component
/// is first loaded or created.<br>
/// <var>parent</var> is the parent SVG object this component should be added to.
ClientMethod renderSVG(document, parent) [ Final, Language = javascript ]
{
}

/// Internal method:<br>
/// create the enclosing group for this component.
ClientMethod createEnclosingGroup(parent) [ Final, Internal, Language = javascript ]
{
}

/// Default mouse click handler.
ClientMethod clickHandler(evt) [ Language = javascript ]
{
}

/// Calculate the value of the viewBox attribute of this
/// component's enclosing svg element.<br>
/// Subclasses can override this, should they need to provide
/// a different behavior.
/// The default behavior is to use the width and height of this component
/// to come up with a 1 to 1 coordinate mapping; If the component
/// provides values for the <property>viewboxWidth</property> and
/// <property>viewboxHeight</property> properties, then these are used to
/// calculate the viewBox (and thus define a fixed coordinate system for the component).
ClientMethod calculateViewBox() [ Language = javascript ]
{
}

/// Render the inner SVG contents of this component.
/// This is implemented by subclasses.
ClientMethod renderContents() [ Language = javascript ]
{
}

/// Remove the inner SVG for this component.
ClientMethod unrender() [ Language = javascript ]
{
}

/// This is not supported for SVG components
ClientMethod refreshContents() [ Final, Language = javascript ]
{
}

/// Client-side utility method that finds an SVG element with a
/// component-specific id.
ClientMethod findSVGElement(subid) [ Final, Language = javascript ]
{
}

/// Display an overlay for this component to trap mouse events
/// and/or support dragging/resizing with the mouse.<br>
/// <var>mode</var> is the overlay mode:<br>
/// 0: turn off overlay.<br>
/// 1: turn on overlay.<br>
/// 2: turn on overlay, show indication that this component
/// is <em>selected</em>.
/// 3: turn on overlay, show indication that this component
/// can be dragged.
ClientMethod setOverlayMode(mode) [ Language = javascript ]
{
}

/// Internal method:<br>
/// Render the SVG for the overlay/resize handles.
ClientMethod createOverlay() [ Internal, Language = javascript ]
{
}

/// Internal method:<br>
/// Update size & position of overlay if present.
ClientMethod updateOverlay(x, y, width, height) [ Internal, Language = javascript ]
{
}

/// Internal method:<br>
/// Create SVG for one of the sizing "handles."
ClientMethod createSizingHandle(which, x, y) [ Internal, Language = javascript ]
{
}

/// Internal method:<br>
/// Overlay mouse down handler.
ClientMethod overlayMouseDownHandler(evt) [ Internal, Language = javascript ]
{
}

/// Internal: sizing handle mouse down handler.
ClientMethod sizingMouseDownHandler(evt, which) [ Language = javascript ]
{
}

/// Return the svgFrame object this component belongs to.
ClientMethod getFrame() [ Language = javascript ]
{
}

/// Utility method:
/// Find the svg text element with id <var>id</var>
/// and replace its text with <var>str</var>.
ClientMethod setTextNode(id, str) [ Language = javascript ]
{
}

/// Utility method:
/// Construct a wrapper around an instance method of this object
/// that can be used as an event listener.
ClientMethod wrapMethod(methodName) [ Language = javascript ]
{
}

/// Return an object containing (as x,y,width, and height properties)
/// the absolute size and position (relative to the svg
/// canvas) of this component.
ClientMethod getSizeAbsolute() [ Language = javascript ]
{
}

/// Set the x,y position of this component.<br>
/// Applications should not call this method.
ClientMethod setPosition(x, y) [ Language = javascript ]
{
}

/// Set the size (width and height) of this component.<br>
/// Applications should not call this method.
ClientMethod setSize(w, h) [ Language = javascript ]
{
}

/// Notification that this component has been moved.
/// This can be implemented by subclasses.
ClientMethod setPositionHandler() [ Abstract, Language = javascript ]
{
}

/// Notification that this component has been resized.
/// This can be implemented by subclasses.
ClientMethod setSizeHandler() [ Abstract, Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Begin a wait state for this component.
/// This will display a waiting graphic in the center of this component.
/// The wait state is ended with a call to <method>endWaitState</method>.
ClientMethod beginWaitState() [ Language = javascript ]
{
}

/// Called by the wait state handler to animate the wait state icon.
ClientMethod updateWaitState() [ Internal, Language = javascript ]
{
}

/// Draw the wait state icon for this component.
/// <var>counter</var> is a counter increment each time this method is called.
/// If <var>draw</var> is true, then draw the icon, otherwise only erase it.
ClientMethod drawWaitIcon(counter, draw) [ Internal, Language = javascript ]
{
}

/// End the current wait state for this component.
ClientMethod endWaitState() [ Language = javascript ]
{
}

}
