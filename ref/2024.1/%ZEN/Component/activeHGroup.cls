/// %ZEN.Component.activeHGroup
/// The active horizontal group is a client-side (JavaScript-heavy)
/// container widget designed for creating binary partitions of an
/// area of the active display. An activeHGroup is always specified
/// with exactly two children (any excess are ignored).  These
/// children may have an arbitrary number of children of their own
/// but at the top level the strict limit is enforced. <br>
/// On the client-side, the component will be rendered as a split
/// pane with left and right partitions, potentially separated by an
/// adjustment handle.  If no geometry restrictions are specified,
/// the component will attempt to size itself to fill all available
/// space remaining in the browser window (this behavior, can of
/// course be overridden by CSS). <br>
/// There are several properties governing the nature and handling
/// of the partioning. The split may be speficied as an absolute
/// reserve of pixels for the left or right pane (with excess pixels
/// going to the other) or as a constant percentage to be reapportioned
/// in actual pixels whenever the widget's container is resized. The
/// split can be marked as either fixed or user-adjustable.  It is
/// possible specify child panes that slide open to a predefined wider
/// width then the mouse rolls over them and auto-close when the mouse
/// leaves the region.  In the case of auto-expanding panes, it is
/// possible to define sound effects to accompany the animation.
Class %ZEN.Component.activeHGroup Extends activeGroup [ Deprecated, System = 3 ]
{

Parameter INCLUDEFILES = "zenCSLM.js,zenActiveHGroup.js";

///  To be compatible with the static layout manager the enclosing class
///  has to be the generic activeGroup rather than the specific activeHGroup
///  The activeHGroup is the one used for tuning attributes of the absolutely
///  positioned elements.
Parameter DEFAULTENCLOSINGCLASS = "activeGroup";

/// Defines the division between the two panes. <br>
/// A value with a % sign is interpreted as a proportional division
/// between the left and right panes and is recalculated to maintain
/// this ratio whenever the base division is resized by any means.
/// Manual adjustment of the value continues to be interpreted as a
/// percentage split. <br>
/// A positive value not constaining a percent sign is interpreted as
/// a fixed reserve width for the left child. Any adjustments to the
/// total width of the base container are reflected in the geometry of
/// the right pane only. <br>
/// A negative value (which cannot contain a % sign) is interpreted as
/// a fixed width for the right pane.  Any adjustments to the total
/// width of the base container are reflected in the geometry of the
/// left child. <br>
/// Manual adjustment of a left or right reserved width will change
/// the size of the reserve and these fixed sizes will be respected
/// even as the window is resized. <br>
/// The default split is "50%"
Property split As %ZEN.Datatype.string;

/// If defined, this property indicates that one of the two panels
/// is an auto-open/auto-close sidebar panel and that the panel should
/// expand when the mouse enters its "split"-defined bounds and grow
/// until it reaches the width given in the autoExpand parameter. The
/// value is always interpreted in pixels.  A positive value designates
/// the left pane for auto-expansion.  A negative value designates the
/// right. <br>
/// The default value (null) indicates that the auto-expansion feature
/// is not used by this instance of the widget.
Property autoExpand As %ZEN.Datatype.string;

/// if true, this indicates that the user is not to be allowed to
/// resize the panes. <br>
/// If false, user adjustment of the pane sizes is allowed via dragging
/// the pane handle with the mouse.  If user resizing is enabled, the
/// mouse pointer will change to an east-west resize cursor when the
/// mouse is in potential drag position. <br>
/// The default value is "false"
Property noResize As %ZEN.Datatype.string;

/// This indicates the width of the pane partition handle in pixels.
/// Due to the dynamic functional nature of the element, the width of
/// this bar cannot be set via CSS and must be specified via this
/// property. <br>
/// The default value is "7", resulting a drag handle a little under
/// one eight of an inch (2 mm) wide on most screens.
Property handleThickness As %ZEN.Datatype.string;

/// This indicates a file name for an image to use for painting the
/// dragable partition handle.  This image should be at least as wide
/// as the handle thickness and is repeated vertically along the
/// length of the handle.<br>
/// The default value is a PNG file of a left-higlighted gray gradient,
/// bounded by black on either side.
Property handlePattern As %ZEN.Datatype.string;

/// This indicates a sound file to be played when an auto-expansion
/// window grows or shrinks.  If not defined or null, no sound
/// accompanies the animation. <br>
/// The default is "null"
Property soundFX As %ZEN.Datatype.string;

/// onresizeLeft event handler:
/// This event is fired when the left-hand panel of this component is resized
Property onresizeLeft As %ZEN.Datatype.eventHandler;

/// onresizeRight event handler:
/// This event is fired when the right-hand panel of this component is resized
Property onresizeRight As %ZEN.Datatype.eventHandler;

XData Style
{
}

/// The HTML generated here is NOT the final DOM structure of this
/// component.  At the client, the information embedded here will be
/// used to build a more complex DOM subtree under the control of
/// an active client-side layout manager.  The exact structure of this
/// expansion is not important for most users of this particular
/// component, however, it _is_ useful to not that the handle dividing
/// the panes is of the HTML class zenHPaneHandle for the purposes of
/// CSS style references.
Method %DrawHTML()
{
}

ClientMethod getController() [ Language = javascript ]
{
}

ClientMethod showRightOnly() [ Language = javascript ]
{
}

ClientMethod showLeftOnly() [ Language = javascript ]
{
}

ClientMethod restoreSplit() [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// The code generated by the server is NOT the complete structure
/// for the activeHGroup.  Like other client-side layout managers,
/// only the necessary meta-data is sent to the client.  The main
/// processing logic is stored in a client-side, cache-able
/// JavaScript file (zenActiveHGroup.js) To complete the connection
/// between the meta-data description and the code library, the
/// manager class must be registered with the generic client-side
/// layout manager.  The generic manager maintains a list of classes
/// that require special handling and the JavaScript code bodies that
/// perform such handling. A call to ZLM.initLayout() scans the DOM
/// to find any meta-data classes (such as this one) and "unpacks"
/// them into DOM structures for local geometry maintenance.  This
/// is all done behind the scenes via the Zen classes onload handler.
ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod onRefreshContents() [ Language = javascript ]
{
}

/// Install or update the resize callbacks associated with this instance
ClientMethod installResizeHandlers() [ Language = javascript ]
{
}

}
