/// The colorWheel widget is an interactive color picker that models a 24-bit RGB color
/// space using cylindrical coordinates.<p/>
/// Visually, this projects as a circle (a cross section of the cylinder when looking down
/// the Z-axis) with the true blue baseline at zero degrees, true red at 120 degrees, and
/// true green at 240 degrees.  A slider beneath the circle determines which cross section
/// of the color cylinder is shown; at zero the base plane is presented and the very center
/// of the circle (the orgin of the color coordinate system) is black (#000000).  As the
/// value of the slider increases, equal amounts of red green and blue are added to the
/// color space until, at the max value, the entire disk is saturated with white (#ffffff) <p/>
/// The value of the widget may be selected by adjusting the white saturation via the slider
/// and clicking on the wheel itself, or by manipulating the RGB contributions directly via
/// the three sliders provided in the RGB control panel beneath the main color wheel.<p/>
/// The nominal value of the widget is a string of the form "#xxxxxx" where 'x' is a
/// hexadecimal digit.  The hex values, in order, represent 8 bit contributions of red, green
/// and blue color guns needed to produce the indicated color in HTML documents
Class %ZEN.ComponentEx.colorWheel Extends %ZEN.Component.control [ Deprecated, System = 3 ]
{

/// Default image for close group button.
Parameter INCLUDEFILES = "zenCSLM.js";

Property value As %ZEN.Datatype.value(ZENEXPRESSION = 1) [ InitialExpression = "#7f7f7f" ];

/// Show the three slider panel that allows micromanagement of the RGB color guns
Property showRGBPanel As %ZEN.Datatype.integer [ InitialExpression = 1 ];

/// Show the preview box at the bottom of the widget that is filled with the currently
/// selected color and stamped with the HTML Hex color specification
Property showPreview As %ZEN.Datatype.integer [ InitialExpression = 1 ];

/// This Style block contains component-specific CSS style definitions.
XData Style
{
}

/// The %DrawHTML method draws the initial HTML for this component.
Method %DrawHTML()
{
}

/// Build an internal map of oointers to key DOM nodes to speed
/// processing during drag operations.
ClientMethod findParts() [ Language = javascript ]
{
}

/// Perform client-side initialization of elements that have no server side projection
ClientMethod initializeDOM() [ Language = javascript ]
{
}

ClientMethod onloadHandler() [ Language = javascript ]
{
}

ClientMethod onRefreshContents() [ Language = javascript ]
{
}

/// Initialize drag operations for the embedded sliders
ClientMethod startDrag(mgr, wrapper) [ Language = javascript ]
{
}

/// Force drag operations in embedded sliders to be purely horizontal
ClientMethod constrainDragY(mgr, wrapper, newY) [ Language = javascript ]
{
}

/// Prorate slider values based on slider activity.
ClientMethod constrainDragX(mgr, wrapper, newX) [ Language = javascript ]
{
}

/// Wrap up drag activity on embedded sliders
ClientMethod endDrag(mgr, wrapper) [ Language = javascript ]
{
}

/// Ensure that the handle of embedded sliders accurately reflects the internal value thereof.
ClientMethod positionHandle(who) [ Language = javascript ]
{
}

/// Initialized or reset the internal value associated with a slider and update its
/// avatar accordingly.
ClientMethod setSliderValue(who, value) [ Language = javascript ]
{
}

/// Set the value of a named property.
ClientMethod setProperty(property, value, value2) [ Language = javascript ]
{
}

/// Limit the input of hex boxes to hex digits
ClientMethod verifyHex(event, gun) [ Language = javascript ]
{
}

/// User entered values for color guns should always be exactly two hex digits
/// Sanitize and truncate as needed.
ClientMethod cleanUpUserColorGunEntry(gun) [ Language = javascript ]
{
}

/// In the event that the user has entered specific hex values, verify that
/// all of the inputs, previews and controls are in sync with the latest data
/// and that that data represents a valid Web color spec
ClientMethod cleanUpUserEntry() [ Language = javascript ]
{
}

/// In the event that the user has entered specific hex color value in the
/// main value box, verify that
/// all of the inputs, previews and controls are in sync with the latest data
/// and that that data represents a valid Web color spec
ClientMethod cleanUpMainUserEntry() [ Language = javascript ]
{
}

/// Position the crosshair on the color wheel in response to a user action
ClientMethod moveCrosshair(e) [ Language = javascript ]
{
}

/// Reset the value of the widget based on user interaction with the RGB sliders
ClientMethod mixGuns() [ Language = javascript ]
{
}

/// Position the crosshair indicator based on the latest Rho, Theta values in the
/// color space.
ClientMethod positionCrosshair(r, theta) [ Language = javascript ]
{
}

/// Update the rendering of the widget to reflect the current value
ClientMethod updatePreview(r, theta, z) [ Language = javascript ]
{
}

/// Adjust the white saturation of the color wheel based on the current settings
/// of the slider control
ClientMethod updateMask() [ Language = javascript ]
{
}

/// Hide or show optional parts of the widget
ClientMethod updateVisibleAreas() [ Language = javascript ]
{
}

/// Given an HTML color specification in Hex notation, break it up into explicit RGB values
/// and call setValueRGB to update the value and appearance of this widget.
ClientMethod setValueHex(hexStr) [ Language = javascript ]
{
}

/// Given discrete RGB color gun settings, update the value and appearance of this widget.
ClientMethod setValueRGB(r, g, b) [ Language = javascript ]
{
}

/// Convert polar color coordinates to X pixel value
ClientMethod getX(r, theta) [ Language = javascript ]
{
}

/// Convert polar color coordinates to Y pixel value
ClientMethod getY(r, theta) [ Language = javascript ]
{
}

/// Given an XY location on the rendering of the color wheel
/// calculate the Rho value of the color space
ClientMethod getRadius(x, y) [ Language = javascript ]
{
}

/// Given the XY location on the rendering of the color wheel
/// calculate the Theta (in degrees) value of the color space
ClientMethod getAngle(x, y) [ Language = javascript ]
{
}

/// Given Rho, Theta values in the color space, calculate the associate Blue
/// color gun contribution
ClientMethod getShadeBlue(r, theta) [ Language = javascript ]
{
}

/// Given Rho, Theta values in the color space, calculate the associate Red
/// color gun contribution
ClientMethod getShadeRed(r, theta) [ Language = javascript ]
{
}

/// Given Rho, Theta values in the color space, calculate the associate Green
/// color gun contribution
ClientMethod getShadeGreen(r, theta) [ Language = javascript ]
{
}

/// Given a point in the abstract color space (rho, theta, zed), calculate the
/// resulting color and return its HTML hex color specification.
ClientMethod getShade(r, theta, z) [ Language = javascript ]
{
}

}
